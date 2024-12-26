import torch
import time
import argparse
from transformers import BertTokenizer, BertForMaskedLM
from torch.optim import AdamW

# 1. 定义命令行参数
def parse_args():
    parser = argparse.ArgumentParser(description="Run BERT for Masked LM inference or training.")
    parser.add_argument('--mode', type=str, choices=['infer', 'train'], required=True, 
                        help="Choose between inference (infer) or training (train).")
    parser.add_argument('--iterations', type=int, default=20, help="Number of iterations for performance measurement.")
    return parser.parse_args()

# 2. 加载BERT模型和Tokenizer
tokenizer = BertTokenizer.from_pretrained('bert-base-uncased')
model = BertForMaskedLM.from_pretrained('bert-base-uncased')
model = model.cuda()  # Move model to GPU if available
warmup_steps = 2

# 3. 训练步骤
def train_step(model, inputs, labels, optimizer):
    print("inputs shape = {}".format(inputs))
    print("labels shape = {}".format(labels))
    optimizer.zero_grad()
    outputs = model(**inputs, labels=labels)
    loss = outputs.loss
    loss.backward()  # Backpropagation
    optimizer.step()
    return loss.item()

# 4. 推理步骤 (Masked LM)
def infer_step(model, inputs):
    with torch.no_grad():  # No gradients needed for inference
        outputs = model(**inputs)
    logits = outputs.logits

    # 获取 [MASK] 位置的预测
    mask_token_index = torch.where(inputs.input_ids == tokenizer.mask_token_id)[1]
    mask_token_logits = logits[0, mask_token_index, :]
    predicted_token_id = torch.argmax(mask_token_logits, axis=-1)
    predicted_token = tokenizer.decode(predicted_token_id)

    return predicted_token

# 5. 性能基准测试
def benchmark(model, tokenizer, mode, iterations=20):
    total_time = 0
    if mode == 'train':
        optimizer = AdamW(model.parameters(), lr=5e-5)

    text = "Hugging Face is creating a [MASK] ecosystem."
    # text = [
    #     "The cat sits outside",
    #     "A man is playing guitar",
    #     "I love pasta",
    #     "The new movie is awesome",
    #     "The cat plays in the garden",
    #     "A woman watches TV",
    #     "The new movie is so great",
    #     "Do you like pizza?",
    # ]
    inputs = tokenizer(text, return_tensors="pt", truncation=True, padding=True, max_length=512).to('cuda')  # Move inputs to GPU

    # 运行20次并计算平均时间
    for _ in range(iterations):
        torch.cuda.synchronize()  # Synchronize GPU to ensure we measure the actual computation time
        if _ >= warmup_steps:
            start_time = time.perf_counter()

        if mode == 'infer':
            infer_step(model, inputs)
        elif mode == 'train':
            labels = torch.tensor([1 for i in range(10)]).to('cuda')  # Dummy label
            train_step(model, inputs, labels, optimizer)

        torch.cuda.synchronize()  # Wait for the GPU to finish
        if _ >= warmup_steps:
            end_time = time.perf_counter()
            total_time += (end_time - start_time)

    avg_time = total_time / (iterations - warmup_steps)
    print(f"Average time per iteration ({mode}): {avg_time:.6f} seconds")

# 6. 主函数
def main():
    args = parse_args()  # 解析命令行参数

    # 执行性能基准测试
    benchmark(model, tokenizer, args.mode, iterations=args.iterations)

if __name__ == "__main__":
    main()


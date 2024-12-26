import torch
import time
import argparse
from transformers import BertTokenizer, BertForSequenceClassification
from torch.optim import AdamW

# 1. 定义命令行参数
def parse_args():
    parser = argparse.ArgumentParser(description="Run BERT for text classification (infer or train).")
    parser.add_argument('--mode', type=str, choices=['infer', 'train'], required=True, 
                        help="Choose between inference (infer) or training (train).")
    parser.add_argument('--iterations', type=int, default=20, help="Number of iterations for performance measurement.")
    return parser.parse_args()

# 2. 加载BERT模型和Tokenizer
tokenizer = BertTokenizer.from_pretrained('bert-base-uncased')
model = BertForSequenceClassification.from_pretrained('bert-base-uncased', num_labels=2)  # 二分类
model = model.cuda()  # Move model to GPU if available
warmup_steps = 2

# 3. 训练步骤
def train_step(model, inputs, labels, optimizer):
    optimizer.zero_grad()
    outputs = model(**inputs, labels=labels)
    loss = outputs.loss
    loss.backward()  # Backpropagation
    optimizer.step()
    return loss.item()

# 4. 推理步骤 (文本分类)
def infer_step(model, inputs):
    with torch.no_grad():  # No gradients needed for inference
        outputs = model(**inputs)
    logits = outputs.logits
    predicted_class = torch.argmax(logits, dim=-1)
    return predicted_class.item()

# 5. 性能基准测试
def benchmark(model, tokenizer, mode, iterations=20):
    total_time = 0
    if mode == 'train':
        optimizer = AdamW(model.parameters(), lr=5e-5)

    text = "Hugging Face is creating a great ecosystem for NLP."
    inputs = tokenizer(text, return_tensors="pt", truncation=True, padding=True, max_length=512).to('cuda')  # Move inputs to GPU

    labels = torch.tensor([1]).to('cuda')  # Dummy label for training (use 0 or 1 for classification)

    # 运行20次并计算平均时间
    for _ in range(iterations):
        torch.cuda.synchronize()  # Synchronize GPU to ensure we measure the actual computation time
        if _ >= warmup_steps:
            start_time = time.perf_counter()

        if mode == 'infer':
            infer_step(model, inputs)
        elif mode == 'train':
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


import torch
from transformers import AutoTokenizer, AutoModelForCausalLM
import argparse
import time

# 1. 定义命令行参数
def parse_args():
    parser = argparse.ArgumentParser(description="Run BigCode/StarCoder model for inference.")
    parser.add_argument('--mode', type=str, choices=['infer', 'train'], required=True,
                        help="Choose between inference (infer) or training (train).")
    parser.add_argument('--iterations', type=int, default=20, help="Number of iterations for performance measurement.")
    parser.add_argument('--prompt', type=str, required=True, help="The prompt to be used for inference.")
    parser.add_argument('--batch-size', type=int, default=1, help="Batch size for inference (default: 1).")
    return parser.parse_args()

# 2. 初始化模型和 Tokenizer
def initialize_model(model_name="bigcode/starcoderbase-1b"):
    # 检查 GPU 是否可用
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    print(f"Using device: {device}")

    # 加载 Tokenizer 和模型
    tokenizer = AutoTokenizer.from_pretrained(model_name)
    if tokenizer.pad_token is None:
        tokenizer.pad_token =tokenizer.eos_token
    model = AutoModelForCausalLM.from_pretrained(model_name)

    # 将模型移动到 GPU（如果可用）
    model = model.to(device)

    return model, tokenizer, device

# 3. 定义推理步骤
def infer_step(model, tokenizer, prompt, batch_size, device):
    # 对于批量输入，重复 `prompt` 直到批量大小
    batch_prompts = [prompt] * batch_size
    inputs = tokenizer(batch_prompts, return_tensors="pt", padding=True, truncation=True).to(device)

    with torch.no_grad():  # 不需要梯度计算
        outputs = model.generate(inputs['input_ids'], max_length=5120, num_return_sequences=1)  # 生成文本

    decoded_outputs = [tokenizer.decode(output, skip_special_tokens=True) for output in outputs]
    return decoded_outputs, outputs

# 4. 性能测试函数
def benchmark(model, tokenizer, device, prompt, batch_size, iterations=20):
    total_time = 0
    total_tokens = 0  # 用于统计生成的 tokens 数量
    warmup_steps = 0  # 预热次数

    # 运行 20 次并计算平均时间
    for idx in range(iterations):
        torch.cuda.synchronize()  # 同步 GPU，确保我们测量的是实际计算时间

        if idx >= warmup_steps:  # 跳过 warmup 期间的时间
            start_time = time.perf_counter()

        outputs, _ = infer_step(model, tokenizer, prompt, batch_size, device)

        torch.cuda.synchronize()  # 等待 GPU 完成计算
        if idx >= warmup_steps:
            end_time = time.perf_counter()
            total_time += (end_time - start_time)
            # 统计生成的 tokens 数量
            # NOTE: do not collect in warmup steps
            num_tokens = _[0].size(-1)  # 计算每次推理生成的 tokens 数量
            total_tokens += num_tokens * batch_size  # 考虑到 batch size

        # 打印结果的每一次推理输出
        if idx == warmup_steps:
            print(f"Output after warmup: {outputs}")

    avg_time = total_time / (iterations - warmup_steps)
    avg_tokens_per_sec = total_tokens / total_time  # 每秒处理的 tokens 数量

    print(f"Average time per inference: {avg_time:.6f} seconds")
    print(f"Total tokens generated: {total_tokens}")
    print(f"Tokens per second: {avg_tokens_per_sec:.2f} tokens/sec")

# 5. 主函数
def main():
    args = parse_args()  # 解析命令行参数

    # 初始化模型和 tokenizer
    model, tokenizer, device = initialize_model()

    # 执行性能基准测试
    benchmark(model, tokenizer, device, args.prompt, args.batch_size, iterations=args.iterations)

# 6. 运行
if __name__ == "__main__":
    main()


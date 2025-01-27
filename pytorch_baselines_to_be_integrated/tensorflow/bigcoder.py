import tensorflow as tf
from transformers import AutoTokenizer, AutoModelForCausalLM, GPTBigCodeConfig
import argparse
import time

# 1. 解析命令行参数
def parse_args():
    parser = argparse.ArgumentParser(description="Run StarCoder/BigCode for inference or training.")
    parser.add_argument('--mode', type=str, choices=['infer', 'train'], required=True,
                        help="Choose between inference (infer) or training (train).")
    parser.add_argument('--iterations', type=int, default=20, help="Number of iterations for performance measurement.")
    parser.add_argument('--prompt', type=str, required=True, help="Input prompt for the model.")
    return parser.parse_args()

# 2. 加载模型和tokenizer
model_name = "bigcode/starcoderbase-1b"  # 根据实际模型名称替换
config = GPTBigCodeConfig.from_pretrained(model_name)  # 使用自定义配置
model = AutoModelForCausalLM.from_pretrained(model_name, config=config)
tokenizer = AutoTokenizer.from_pretrained('bigcode/starcoderbase-1b')

# 3. 定义推理步骤
def infer_step(model, tokenizer, prompt):
    inputs = tokenizer(prompt, return_tensors="tf")
    outputs = model.generate(inputs['input_ids'], max_length=1024)
    decoded_output = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return decoded_output

# 4. 性能基准测试
def benchmark(model, tokenizer, mode, prompt, iterations=20):
    total_time = 0
    if mode == 'train':
        # 简单的训练模拟（这里我们只使用推理部分）
        pass

    # 进行推理测试
    for idx in range(iterations):
        # 同步 GPU 时间
        start_time = time.perf_counter()

        if mode == 'infer':
            result = infer_step(model, tokenizer, prompt)

        # GPU同步
        tf.compat.v1.Session().run(tf.compat.v1.global_variables_initializer())
        end_time = time.perf_counter()

        # 计算耗时
        if idx >= 2:  # 跳过前2次warmup
            total_time += (end_time - start_time)

        # 显示推理结果（可以去掉）
        if idx == 0:
            print(f"Result of inference: {result}")

    avg_time = total_time / (iterations - 2)  # 减去warmup的次数
    print(f"Average time per iteration ({mode}): {avg_time:.6f} seconds")

# 5. 主函数
def main():
    args = parse_args()

    # 执行基准测试
    benchmark(model, tokenizer, args.mode, args.prompt, iterations=args.iterations)

if __name__ == "__main__":
    main()


import tensorflow as tf
import time
import argparse
from transformers import BertTokenizer, TFBertForMaskedLM
from tensorflow.keras.optimizers import Adam

# 1. 定义命令行参数
def parse_args():
    parser = argparse.ArgumentParser(description="Run BERT for Masked LM inference or training.")
    parser.add_argument('--mode', type=str, choices=['infer', 'train'], required=True,
                        help="Choose between inference (infer) or training (train).")
    parser.add_argument('--iterations', type=int, default=20, help="Number of iterations for performance measurement.")
    return parser.parse_args()

# 2. 模型加载
tokenizer = BertTokenizer.from_pretrained('bert-base-uncased')
model = TFBertForMaskedLM.from_pretrained('bert-base-uncased')
optimizer = Adam(learning_rate=5e-5)

warmup_steps = 2  # 用于忽略第一次的warmup时间

# 3. 训练步骤
def train_step(model, inputs, labels):
    with tf.GradientTape() as tape:
        outputs = model(**inputs, labels=labels, training=True)
        loss = outputs.loss
    gradients = tape.gradient(loss, model.trainable_variables)
    optimizer.apply_gradients(zip(gradients, model.trainable_variables))
    return loss

# 4. 推理步骤
def infer_step(model, inputs):
    outputs = model(**inputs)
    logits = outputs.logits
    predictions = tf.argmax(logits, axis=-1)
    return predictions

# 5. 性能测试函数
def benchmark(model, tokenizer, mode, iterations=20):
    total_time = 0
    if mode == 'train':
        text = "TensorFlow and Hugging Face are great for NLP tasks!"
        inputs = tokenizer(text, return_tensors="tf", truncation=True, padding=True, max_length=512)
        labels = tf.constant([1])  # Dummy label for training

        # 运行 20 次并计算平均时间
        for i in range(iterations):
            if i >= warmup_steps:
                start_time = time.perf_counter()

            if mode == 'infer':
                infer_step(model, inputs)
            elif mode == 'train':
                train_step(model, inputs, labels)

            end_time = time.perf_counter()
            total_time += (end_time - start_time)

    avg_time = total_time / (iterations - warmup_steps)
    print(f"Average time per iteration ({mode}): {avg_time:.6f} seconds")

# 6. 主函数
def main():
    args = parse_args()  # 解析命令行参数
    benchmark(model, tokenizer, args.mode, iterations=args.iterations)

if __name__ == "__main__":
    main()


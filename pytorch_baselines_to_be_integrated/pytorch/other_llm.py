import torch
import time
import argparse
from transformers import AutoTokenizer, AutoModelForCausalLM
from torch.optim import AdamW

# 1. Define Command-Line Arguments
def parse_args():
    parser = argparse.ArgumentParser(description="Run generative model for inference or training.")
    parser.add_argument('--mode', type=str, choices=['infer', 'train'], required=True,
                        help="Choose between inference (infer) or training (train).")
    parser.add_argument('--iterations', type=int, default=20, help="Number of iterations for performance measurement.")
    parser.add_argument('--prompt', type=str, required=True, help="The prompt to be used for inference.")
    parser.add_argument('--model', type=str, choices=['mistralai/Mistral-7B-v0.1', '01-ai/Yi-6B', 'tiiuae/falcon-7b'], required=True,
                        help="Specify the model version: 'mistral-7b', 'yi-6b', or 'falcon'.")
    return parser.parse_args()

# 2. Load the Model and Tokenizer
def initialize_model(model_name="mistral-7b"):
    # Check if GPU is available
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    print(f"Using device: {device}")

    # Load the tokenizer and model from Hugging Face
    tokenizer = AutoTokenizer.from_pretrained(model_name)
    model = AutoModelForCausalLM.from_pretrained(model_name, trust_remote_code=True)

    # Move the model to GPU (if available)
    model = model.to(device)

    return model, tokenizer, device

# 3. Training Step Function
def train_step(model, inputs, labels, optimizer):
    optimizer.zero_grad()
    outputs = model(**inputs, labels=labels)
    loss = outputs.loss
    loss.backward()  # Backpropagation
    optimizer.step()  # Update weights
    return loss.item()

# 4. Inference Step Function
def infer_step(model, inputs, device, tokenizer):
    with torch.no_grad():  # No gradients are needed for inference
        outputs = model.generate(inputs['input_ids'], max_length=512, num_return_sequences=1)  # Generate text
    
    decoded_output = tokenizer.decode(outputs[0], skip_special_tokens=True)
    return decoded_output, outputs

# 5. Benchmarking Function
def benchmark(model, tokenizer, mode, device, prompt, iterations=20):
    total_time = 0
    total_tokens = 0  # Track total tokens generated
    warmup_steps = 2  # Number of warmup steps

    if mode == 'train':
        optimizer = AdamW(model.parameters(), lr=5e-5)

    inputs = tokenizer(prompt, return_tensors="pt").to(device)  # Tokenize input and move to GPU if available

    for idx in range(iterations):
        torch.cuda.synchronize()  # Synchronize GPU to ensure we measure actual computation time

        if idx >= warmup_steps:
            start_time = time.perf_counter()

        if mode == 'infer':
            output, outputs = infer_step(model, inputs, device, tokenizer)
        elif mode == 'train':
            labels = torch.tensor([1]).to(device)  # Dummy label for training
            loss = train_step(model, inputs, labels, optimizer)

        torch.cuda.synchronize()  # Wait for GPU to finish

        if idx >= warmup_steps:
            end_time = time.perf_counter()
            total_time += (end_time - start_time)

        # Track tokens generated for inference
        if mode == 'infer':
            num_tokens = outputs[0].size(1)  # Number of tokens generated
            total_tokens += num_tokens

        # Print output after warmup
        if idx == warmup_steps:
            print(f"Output after warmup: {output}")

    avg_time = total_time / (iterations - warmup_steps)
    avg_tokens_per_sec = total_tokens / total_time  # Tokens generated per second

    print(f"Average time per inference: {avg_time:.6f} seconds")
    print(f"Total tokens generated: {total_tokens}")
    print(f"Tokens per second: {avg_tokens_per_sec:.2f} tokens/sec")

# 6. Main Function
def main():
    args = parse_args()  # Parse command-line arguments

    # Initialize model and tokenizer based on selected model version
    model, tokenizer, device = initialize_model(model_name=args.model)

    # Perform benchmarking
    benchmark(model, tokenizer, args.mode, device, args.prompt, iterations=args.iterations)

# 7. Run
if __name__ == "__main__":
    main()


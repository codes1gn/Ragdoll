#!/bin/bash

# python baselines/pytorch/bert-maskedlm.py --mode infer --iterations 20

# python baselines/pytorch/bert-maskedlm-bs8.py --mode infer --iterations 20

# python baselines/pytorch/bigcoder.py --mode infer --iterations 1 --prompt "Please write a Python function that sorts a list." --batch-size 1

# python baselines/pytorch/llama2-c.py --mode infer --prompt "This is a test prompt." --iterations 20
# python baselines/pytorch/llama2-c.py --mode train --prompt "This is a training prompt." --iterations 20

# python baselines/pytorch/rwkv.py --mode infer --prompt "The smallest prime is " --iterations 20
# 
# python baselines/pytorch/phi.py --mode infer --prompt "This is a test prompt." --iterations 20 --version 1
# 
# python baselines/pytorch/qwen.py --mode infer --prompt "This is a test prompt." --iterations 20 --model qwen1.5-1.8b
# python baselines/pytorch/qwen.py --mode infer --prompt "This is a test prompt." --iterations 20 --model qwen1.5-0.5b
# python baselines/pytorch/qwen.py --mode train --prompt "This is a training prompt." --iterations 20 --model qwen1.5-0.5b

# python baselines/pytorch/other_llm.py --mode infer --prompt "This is a test prompt." --iterations 20 --model mistralai/Mistral-7B-v0.1
# python baselines/pytorch/other_llm.py --mode infer --prompt "This is a test prompt." --iterations 20 --model 01-ai/Yi-6
# python baselines/pytorch/other_llm.py --mode infer --prompt "This is a test prompt." --iterations 20 --model tiiuae/falcon-7b


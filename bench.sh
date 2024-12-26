#!/bin/bash

python baselines/pytorch/bert-maskedlm.py --mode infer --iterations 20
python baselines/pytorch/bert-maskedlm-bs8.py --mode infer --iterations 20

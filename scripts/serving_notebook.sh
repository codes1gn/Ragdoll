#!/bin/bash

# nohup ssh -N -L localhost:8888:localhost:8888 root@10.12.114.217 > build/serving_channel.log 2>&1 &
nohup jupyter lab --allow-root --no-browser > build/serving_jlab.log 2>&1 &

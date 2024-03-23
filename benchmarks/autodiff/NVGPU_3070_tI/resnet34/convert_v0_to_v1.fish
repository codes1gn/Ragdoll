#!/usr/bin/env bash

# 定义要替换的字符串数组和替换后的字符串数组
replacable=("1x3x224x224" "1x64x112x112" "1x64x1x1" "1x64x56x56" "1x256x56x56" "1x256x28x28" "1x256x14x14" "1x256x1x1" "1x512x1x1" "1x512x7x7" "1x512x14x14" "1x512x28x28" "1x1024x1x1" "1x1024x14x14")
replaced=("1x224x224x3" "1x112x112x64" "1x1x1x64" "1x56x56x64" "1x56x56x256" "1x28x28x256" "1x14x14x256" "1x1x1x256" "1x1x1x512" "1x7x7x512" "1x14x14x512" "1x28x28x512" "1x1x1x1024" "1x14x14x1024")

# 检查参数个数
if [ $# -lt 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

# 获取文件名
filename=$1

# 遍历所有要替换的字符串
for (( i=0; i<${#replacable[@]}; i++ )); do
    # 使用 sed 命令进行替换
    # 注意：这里假设 sed 支持 -i 选项用于直接修改文件
    # 在 macOS 上，-i 选项后可能需要紧跟一个空字符串（如 -i '' -e）
    sed -i "s/${replacable[$i]}/${replaced[$i]}/g" "$filename"
done


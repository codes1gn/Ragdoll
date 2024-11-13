import json
import numpy as np

def numpy_serializer(obj):
    """序列化 NumPy 类型"""
    if isinstance(obj, np.ndarray):
        return obj.tolist()  # 将 NumPy 数组转换为列表
    elif isinstance(obj, np.generic):
        return obj.item()  # 将 NumPy 标量转换为 Python 标量
    raise TypeError(f"Type {type(obj)} not serializable")

# 示例数据，包含 NumPy 类型
data = {
    'mean_time': np.float64(0.006475116917863488),
    'std_dev': np.float64(8.643302673158849e-05),
    'summary': {
        'mean_time': np.float64(0.006475116917863488),
        'samples': np.int32(10)
    }
}

# 保存数据到 JSON 文件
def save_dict_to_json(data, filename):
    with open(filename, 'w') as file:
        json.dump(data, file, default=numpy_serializer, indent=4, ensure_ascii=False)

# 保存数据到文件
save_dict_to_json(data, 'benchmark_results.json')


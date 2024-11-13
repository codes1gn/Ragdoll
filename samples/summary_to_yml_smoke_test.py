import yaml
import numpy as np

def numpy_representer(dumper, value):
    if isinstance(value, np.ndarray):
        # 如果是numpy数组，转换为Python list
        return dumper.represent_sequence('tag:yaml.org,2002:seq', value.tolist())
    elif isinstance(value, np.generic):  # 处理numpy的标量类型
        # 将numpy标量转换为Python原生类型
        return dumper.represent_scalar('tag:yaml.org,2002:float', str(value.item()))
    return dumper.represent_scalar('tag:yaml.org,2002:float', str(value))

# 自定义构造器，将Python原生类型转换回numpy
def numpy_constructor(loader, node):
    value = loader.construct_scalar(node)
    return np.float64(value)  # 转换为numpy的float64

def numpy_array_constructor(loader, node):
    value = loader.construct_sequence(node)
    return np.array(value)  # 转换为numpy数组

# 注册自定义的representer和constructor
yaml.add_representer(np.generic, numpy_representer)
yaml.add_representer(np.ndarray, numpy_representer)
yaml.add_constructor('tag:yaml.org,2002:float', numpy_constructor)
yaml.add_constructor('tag:yaml.org,2002:seq', numpy_array_constructor)
# 示例数据，包含numpy类型
data = {
    'mean_time': np.float64(0.006475116917863488),
    # 'std_dev': np.float64(8.643302673158849e-05),
    # 'summary': {
    #     'mean_time': np.float64(0.006475116917863488),
    #     'samples': np.int32(10)
    # }
}

# 保存数据到YAML文件
def save_dict_to_yaml(data, filename):
    with open(filename, 'w') as file:
        yaml.dump(data, file, allow_unicode=True)

# 保存数据到文件
save_dict_to_yaml(data, 'benchmark_results.yml')


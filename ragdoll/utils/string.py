from pathlib import Path


__all__ = ["stringify", "destringify",
           "stringify_tensor", "change_mlir_suffix"]


def stringify():
    pass


def destringify(time_str, unit="ms"):
    if "ms" in time_str:
        time_in_us = 1000.0 * float(time_str.replace(" ms", ""))
    elif "us" in time_str:
        time_in_us = float(time_str.replace(" us", ""))
    elif "s" in time_str:
        time_in_us = 1000000.0 * float(time_str.replace(" us", ""))
    if unit == "us":
        return time_in_us
    elif unit == "ms":
        return time_in_us * 0.001
    elif unit == "s":
        return time_in_us * 0.000001
    else:
        assert 0


def stringify_tensor(shape_tuple, dtype="f32"):
    if dtype == "f32":
        return "x".join(map(str, shape_tuple)) + "xf32" if shape_tuple else "f32"
    elif dtype == "f16":
        return "x".join(map(str, shape_tuple)) + "xf16" if shape_tuple else "f16"
    elif dtype == "f64":
        return "x".join(map(str, shape_tuple)) + "xf64" if shape_tuple else "f64"
    else:
        assert 0, "Unsupported dtype in stringify"


# This util function deals with path changing, from any .mlir or .mlir.<ext-name> to "suffix"
def change_mlir_suffix(filename):
    path = Path(filename)
    # 检查 ".mlir" 后面是否还有其他后缀
    if path.suffix == '.mlir' or path.suffixes[-2:] == ['.mlir', '']:
        # 只有一个后缀 ".mlir"
        return str(path.with_suffix('.vmfb'))
    elif path.suffixes and path.suffixes[-2].endswith('.mlir'):
        # ".mlir" 后面跟随其他字符串作为后缀
        return str(path.with_name(path.stem.rsplit('.mlir', 1)[0] + '.vmfb'))
    return filename

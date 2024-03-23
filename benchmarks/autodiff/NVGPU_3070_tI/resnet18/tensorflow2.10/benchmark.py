import os
os.environ["CUDA_VISIBLE_DEVICES"] = "0" # -1
os.environ["TF_CPP_MIN_LOG_LEVEL"] = "0" # 2

import tensorflow as tf
from timeit import timeit as ti

def timeit(stmt, n=10):
    return ti(stmt, globals=globals(), number=n) * 1000 / n

with tf.device('/gpu:0'):
    image = tf.random.normal((1, 224, 224, 3))
    # model = tf.function(tf.keras.applications.resnet50.ResNet50(
    #     include_top=True,
    #     weights='imagenet',
    #     input_tensor=None,
    #     input_shape=None,
    #     pooling=None,
    #     classes=1000
    # ))
    model = tf.keras.applications.resnet50.ResNet50(
        include_top=True,
        weights='imagenet',
        input_tensor=None,
        input_shape=None,
        pooling=None,
        classes=1000
    )

    with tf.GradientTape(persistent=True) as tape:
        tape.watch(image)
        output = model(image)

    grad = tf.random.normal((1, 1000))

baseline_f = timeit("model(image)")
baseline_b = timeit("tape.gradient(output, image, grad)")

print(baseline_f)
print(baseline_b)

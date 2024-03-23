from timeit import timeit as ti
import tensorflow as tf
from keras.applications.resnet50 import ResNet50
from keras.preprocessing import image
from keras.applications.resnet50 import preprocess_input, decode_predictions
import os
os.environ["CUDA_VISIBLE_DEVICES"] = "0"  # -1
os.environ["TF_CPP_MIN_LOG_LEVEL"] = "0"  # 2

tf.config.run_functions_eagerly(True)
print(tf.executing_eagerly())


def timeit(stmt, n=10):
    return ti(stmt, globals=globals(), number=n) * 1000 / n


with tf.device('/gpu:0'):
    image = tf.random.normal((1, 3, 224, 224))
    print(image.shape)
    grad = tf.random.normal((1, 1000))
    print(grad.shape)
    model = ResNet50(
        include_top=False,
        weights=None,
        progress=True,
        input_shape=(3, 224, 224),
        pooling='avg',
        classes=1000
    )

    preds = model.predict(x)

    # with tf.GradientTape(persistent=True) as tape:
    #     tape.watch(image)
    #     output = model(image)

print("end")
# baseline_f = timeit("model(image)")
# baseline_b = timeit("tape.gradient(output, image, grad)")
#
# print(baseline_f)
# print(baseline_b)

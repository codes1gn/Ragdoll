import tensorflow as tf
from dataclasses import dataclass, field

from ragdoll.workload.workload_base import *
from ragdoll.common.enum import * 

class TFWorkload(WorkloadBase):
    """Defines a TensorFlow workload, supporting operator, model, and fused_operator granularity."""

    def __init__(self, granularity: GranularityLevel = GranularityLevel.MODEL):
        super().__init__(granularity)
        self.model = None

    def load_model(self, model_type: ModelEnum):
        """Load a TensorFlow model based on the ModelEnum enum."""
        if model_type == ModelEnum.RESNET50:
            self.model = tf.keras.applications.ResNet50(weights='imagenet')
        elif model_type == ModelEnum.MOBILENET:
            self.model = tf.keras.applications.MobileNetV2(weights='imagenet')
        else:
            raise ValueError(f"Unsupported model: {model_type}")

    def load_operator(self, operator_type: OperatorEnum):
        """Load a TensorFlow operator based on the OperatorEnum enum."""
        if operator_type == OperatorEnum.CONV2D:
            self.operator = tf.keras.layers.Conv2D(64, 3, padding="same", activation="relu")
        elif operator_type == OperatorEnum.FC:
            self.operator = tf.keras.layers.Dense(1000, activation="softmax")
        elif operator_type == OperatorEnum.RELU:
            self.operator = tf.keras.layers.ReLU()
        elif operator_type == OperatorEnum.BATCH_NORM:
            self.operator = tf.keras.layers.BatchNormalization()
        elif operator_type == OperatorEnum.MAX_POOL:
            self.operator = tf.keras.layers.MaxPooling2D(pool_size=(2, 2))
        else:
            raise ValueError(f"Unsupported operator: {operator_type}")

    # def run(self):
    #     """Execute the workload based on the run mode and input from the data provider."""
    #     if not self.data_provider:
    #         raise ValueError("Data provider not set. Use `set_data_provider` to attach one.")
    #     
    #     input_data, label_data = next(iter(self.data_provider))
    #     
    #     if self._run_mode == RunMode.INFERENCE:
    #         return self.model(input_data, training=False)
    #     elif self._run_mode == RunMode.TRAINING:
    #         self.model.trainable = True
    #         with tf.GradientTape() as tape:
    #             output = self.model(input_data, training=True)
    #             loss = tf.keras.losses.sparse_categorical_crossentropy(
    #                 label_data, output
    #             )
    #             gradients = tape.gradient(loss, self.model.trainable_variables)
    #             optimizer = tf.keras.optimizers.SGD(learning_rate=0.01)
    #             optimizer.apply_gradients(zip(gradients, self.model.trainable_variables))
    #         return tf.reduce_mean(loss).numpy()


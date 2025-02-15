import tensorflow as tf
from dataclasses import dataclass, field

from ragdoll.workload.workload_base import *
from ragdoll.common.enum import * 

class TFWorkload(WorkloadBase):
    """Defines a TensorFlow workload, supporting operator, model, and fused_operator granularity."""

    def load_model(self, model_type: ModelEnum):
        """Load a TensorFlow model based on the ModelEnum enum."""
        if model_type == ModelEnum.RESNET50:
            self.workload = tf.keras.applications.ResNet50(weights='imagenet')
        elif model_type == ModelEnum.MOBILENET:
            self.workload = tf.keras.applications.MobileNetV2(weights='imagenet')
        else:
            raise ValueError(f"Unsupported model: {model_type}")

    def load_operator(self, operator_type: OperatorEnum):
        """Load a TensorFlow operator based on the OperatorEnum enum."""
        if operator_type == OperatorEnum.CONV2D:
            self.workload = tf.keras.layers.Conv2D(64, 3, padding="same", activation="relu")
        elif operator_type == OperatorEnum.FC:
            self.workload = tf.keras.layers.Dense(1000, activation="softmax")
        elif operator_type == OperatorEnum.RELU:
            self.workload = tf.keras.layers.ReLU()
        elif operator_type == OperatorEnum.BATCH_NORM:
            self.workload = tf.keras.layers.BatchNormalization()
        elif operator_type == OperatorEnum.MAX_POOL:
            self.workload = tf.keras.layers.MaxPooling2D(pool_size=(2, 2))
        else:
            raise ValueError(f"Unsupported operator: {operator_type}")


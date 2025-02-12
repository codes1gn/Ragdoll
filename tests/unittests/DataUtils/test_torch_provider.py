# RUN: python -m pytest -q --tb=short %s

import pytest
import numpy as np
import torch
import tensorflow as tf
from enum import Enum
from ragdoll.data_utils import * 
from ragdoll.common import * 


def test_dummy():
    assert True


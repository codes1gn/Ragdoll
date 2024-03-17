import torch
from torch import nn
from torchvision import models

MAGIC_NUM = 7777e-5

model = models.alexnet().train(False)
model.load_state_dict({k: torch.ones_like(v) * MAGIC_NUM for k, v in model.state_dict().items()})
model_dynamo = torch.compile(model, backend="inductor")

device = torch.device("cuda:0")
image = torch.randn(1, 3, 224, 224, requires_grad=True)
image = image.to(device)
model_native = model_dynamo.to(device)

output_native = model_native(image)
grad = torch.randn_like(output_native)

image_np = image.detach().numpy()
grad_np = grad.numpy()

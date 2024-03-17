import torch
print(torch.cuda.is_available())
print(torch.__version__)
print(torch.__path__)
print(torch.version.cuda)

# GPU
x = torch.randn(1, 3, 224, 224).cuda()
conv = torch.nn.Conv2d(3, 3, 3).cuda()

out = conv(x)
print(out.sum())
print(torch.backends.cudnn.is_available())
torch.backends.cudnn.version()

import torch
print(torch.cuda.is_available()) # should be True

t = torch.rand(10, 10).cuda()
print(t.device) # should be CU
print(torch.__version__)
print(torch.backends.cudnn.version())

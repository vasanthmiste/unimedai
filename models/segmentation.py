import torch.nn as nn
from segmentation_models_pytorch import Unet

class SegmentationModel(nn.Module):
    def __init__(self, encoder="resnet34", num_classes=1):
        super(SegmentationModel, self).__init__()
        self.model = Unet(encoder_name=encoder, classes=num_classes, encoder_weights="imagenet")

    def forward(self, x):
        return self.model(x)

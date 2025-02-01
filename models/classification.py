import torch.nn as nn
import torchvision.models as models

class ClassificationModel(nn.Module):
    def __init__(self, model_type="resnet50", num_classes=2):
        super(ClassificationModel, self).__init__()
        if model_type == "resnet50":
            self.model = models.resnet50(pretrained=True)
            self.model.fc = nn.Linear(self.model.fc.in_features, num_classes)
    
    def forward(self, x):
        return self.model(x)

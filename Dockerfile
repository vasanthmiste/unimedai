FROM pytorch/pytorch:latest
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "training/train.py"]

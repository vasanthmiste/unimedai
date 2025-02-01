#!/bin/bash

# 🚀 Setting up Python Virtual Environment for UniMedAI

# Uncomment these lines to manually grant permission and execute the script:
#chmod +x setup.sh && ./setup.sh

# Set environment name
ENV_NAME="unimedai_env"

echo "🚀 Setting up Python Virtual Environment: $ENV_NAME..."

# Check if Python3 is installed
if ! command -v python3.12 &> /dev/null; then
    echo "❌ Python3 is not installed. Please install Python3 and retry."
    exit 1
fi

# Create virtual environment
python3.12 -m venv $ENV_NAME

# Activate the virtual environment
source $ENV_NAME/bin/activate

# Upgrade pip
echo "⬆️ Upgrading pip..."
pip install --upgrade pip

# Install required dependencies
if [ -f "requirements.txt" ]; then
    echo "📦 Installing dependencies from requirements.txt..."
    pip install -r requirements.txt
else
    echo "⚠️ requirements.txt not found. Skipping package installation."
fi

# Confirm activation
echo "✅ Virtual environment '$ENV_NAME' is set up and activated!"
echo "Run 'source $ENV_NAME/bin/activate' to use it later."

source unimedai_env/bin/activate
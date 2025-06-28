#!/bin/bash

cd /workspace/
# Cause the script to exit on failure.
set -eo pipefail

# Activate the main virtual environment
. /venv/main/bin/activate

# Install your packages
pip install lightning pandas sentence_transformers torchinfo wandb pytest ucimlrepo structlog

# Download CIFAR10
python -c "from torchvision.datasets import CIFAR10; CIFAR10(root='data', train=True, download=True); CIFAR10(root='data', train=False, download=True)"

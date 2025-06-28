#!/bin/bash

cd /workspace/
# Cause the script to exit on failure.
set -eo pipefail

# Activate the main virtual environment
. /venv/main/bin/activate

# Install your packages
pip install lightning pandas sentence_transformers torchinfo wandb pytest ucimlrepo structlog

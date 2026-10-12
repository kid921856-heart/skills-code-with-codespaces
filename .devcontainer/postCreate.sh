#!/usr/bin/env bash
# Runs once after the codespace container is created.
# Custom setup for the Codespaces Skills exercise.
set -e

echo "Setting up the codespace..."

# Step 3 requirement: install sl (the steam locomotive)
# so we can prove the postCreateCommand actually ran.
sudo apt-get update -y
sudo apt-get install -y sl

# Install Python dependencies for the exercise
if [ -f requirements.txt ]; then
  python3 -m pip install --user -r requirements.txt
fi

echo "Codespace setup complete! Try running: sl"

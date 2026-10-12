#!/usr/bin/env bash
# Runs once after the codespace container is created.
set -e

echo "Setting up the codespace..."

# Install sl (the steam locomotive) to prove the postCreate script ran
sudo apt-get update -y
sudo apt-get install -y sl

# Install Python dependencies for the exercise
if [ -f requirements.txt ]; then
  python3 -m pip install --user -r requirements.txt
fi

echo "Codespace setup complete! Try running: sl"

#!/usr/bin/env bash

# Open interpreter for bash
sudo apt install python3-pip
pip3 install open-interpreter

# Cuda toolkit for nvidia gpu
# apt install nvidia-cuda-toolkit
#
# Cuda drivers from https://developer.nvidia.com/cuda-downloads
# wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
# sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
# wget https://developer.download.nvidia.com/compute/cuda/12.4.1/local_installers/cuda-repo-ubuntu2204-12-4-local_12.4.1-550.54.15-1_amd64.deb
# sudo dpkg -i cuda-repo-ubuntu2204-12-4-local_12.4.1-550.54.15-1_amd64.deb
# sudo cp /var/cuda-repo-ubuntu2204-12-4-local/cuda-*-keyring.gpg /usr/share/keyrings/
# sudo apt-get update
# sudo apt-get -y install cuda-toolkit-12-4
#
# sudo apt-get install -y nvidia-driver-550-open # there is an issue with those drivers
# sudo apt-get install -y cuda-drivers-550

sudo apt-get install -y cuda-drivers

# Ollama - just works
curl -fsSL https://ollama.com/install.sh | sh

# llama.cpp for running LLM's locally
# mkdir -p ~/Projects/Public/
# cd ~/Projects/Public/ || exit 1
# git clone https://github.com/ggerganov/llama.cpp
# cd llama.cpp || exit 1
# make LLAMA_CUDA=1

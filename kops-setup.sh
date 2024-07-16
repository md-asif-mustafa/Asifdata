#!/bin/bash

# Check if yum is available and install zip and unzip accordingly
if command -v yum &> /dev/null
then
    yum install zip unzip -y
else
    apt update && apt install zip unzip -y
fi

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --short --client

# Install kops
wget https://github.com/kubernetes/kops/releases/download/v1.26.4/kops-linux-amd64
chmod +x ./kops-linux-amd64
sudo mv ./kops-linux-amd64 /usr/local/bin/kops
kops version

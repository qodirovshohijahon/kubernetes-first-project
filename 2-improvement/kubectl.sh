#!/bin/bash
echo "Install kubectl........"
sleep 1
sudo apt-get update && sudo apt-get install -y apt-transport-https
sleep 1
echo "Installing transport https................."
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sleep 2
echo "System updated...................."
sudo apt-get install -y kubectl
echo "Kubectl installed................."
sleep 1
kubectl version

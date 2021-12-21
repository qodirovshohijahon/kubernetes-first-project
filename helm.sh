#!/bin/bash
echo "Install helm/*/*/*"
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
echo "Set permission....."
sudo chmod 700 get_helm.sh
echo "Executing....."
sleep 1

sudo ./get_helm.sh

echo "Installed...."
sleep 2
helm version

#!/bin/bash
#Run the following commands to update all system packages to the latest release
sudo apt-get update -y

sudo apt-get install apt-transport-https -y

sudo apt-get upgrade -y

#For VirtualBox users, install VirtualBox using

sudo apt install virtualbox virtualbox-ext-pack -y

#You need to download the minikube binary. I will put the binary under /usr/local/bin directory since it is inside $PATH.

wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube

#Confirm version installed

 minikube version

#We need kubectl which is a command line tool used to deploy and manage applications on Kubernetes

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

#Add Kubernetes apt repository:

echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

#update apt indesx and install kubectl

sudo apt update

sudo apt -y install kubectl
# Starting minikube
#Now that components are installed, you can start minikube. VM image will be downloaded and configure d for Kubernetes single node cluster.

minikube start

#checking minikube is running or not

minikube status

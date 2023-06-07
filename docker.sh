#!/bin/bash

# Update the apt package index
sudo apt update

# Upgrade all packages
sudo apt upgrade -y

# Install zsh
sudo apt install zsh

# Install oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

# Install Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce -y

# Install docker-compose
sudo apt  install docker-compose -y

# Executing the Docker Command Without Sudo
sudo usermod -aG docker ${USER}
sudo su - ${USER}
groups

# Change the user ubuntu to the user you want to run docker
sudo usermod -aG docker ubuntu

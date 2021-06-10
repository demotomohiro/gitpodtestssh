#!/bin/sh

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -yq openssh-server tmux neovim
sudo rm -rf /var/lib/apt/lists/*
echo "PasswordAuthentication no" | sudo tee -a /etc/ssh/sshd_config
echo "ListenAddress localhost:46916" | sudo tee -a /etc/ssh/sshd_config

mkdir ~/.ssh && chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys

mkdir -p ~/.config/nvim
cp /tmp/init.vim ~/.config/nvim

echo "export PATH=/home/gitpod/.nimble/bin:$PATH" >> ~/.bashrc

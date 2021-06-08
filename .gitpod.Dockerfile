FROM gitpod/workspace-full:latest

RUN sudo apt-get update && sudo apt-get install -y openssh-server && sudo rm -rf /var/lib/apt/lists/*

RUN sudo echo "PasswordAuthentication no" >> /etc/ssh/sshd_config


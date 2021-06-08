FROM gitpod/workspace-base:latest

RUN sudo apt-get update && sudo apt-get install -y openssh-server && sudo rm -rf /var/lib/apt/lists/*

RUN echo "PasswordAuthentication no" | sudo tee -a /etc/ssh/sshd_config
RUN echo "ListenAddress localhost:46916" | sudo tee -a /etc/ssh/sshd_config

RUN mkdir ~/.ssh && chmod 700 ~/.ssh
RUN touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys

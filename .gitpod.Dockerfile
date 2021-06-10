FROM gitpod/workspace-base:latest

COPY setup.sh ~
RUN chmod +x ~/setup.sh && ~/setup.sh

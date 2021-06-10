FROM gitpod/workspace-base:latest

COPY setup.sh init.vim /tmp/
RUN sh /tmp/setup.sh

FROM gitpod/workspace-base:latest

COPY setup.sh /tmp
RUN sh /tmp/setup.sh

FROM gitpod/workspace-base:latest

COPY setup.sh /workspace/
RUN sh /workspace/setup.sh

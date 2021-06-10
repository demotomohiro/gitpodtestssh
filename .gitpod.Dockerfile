FROM gitpod/workspace-base:latest

COPY setup.sh /workspace/
RUN chmod +x /workspace/setup.sh && /workspace/setup.sh

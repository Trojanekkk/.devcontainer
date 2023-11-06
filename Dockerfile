FROM mcr.microsoft.com/devcontainers/base:focal

RUN apt update && apt install -y iputils-ping

RUN wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

RUN mkdir -p ~/.local/bin && \
    export PATH=~/.local/bin:$PATH && \
    wget -q https://github.com/derailed/k9s/releases/download/v0.27.4/k9s_Linux_amd64.tar.gz && \
    tar -zxf k9s_Linux_amd64.tar.gz && \
    mv k9s ~/.local/bin/ && \
    rm k9s_Linux_amd64.tar.gz
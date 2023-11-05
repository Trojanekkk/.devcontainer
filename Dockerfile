FROM mcr.microsoft.com/devcontainers/base:focal

RUN apt update && apt install -y iputils-ping

RUN wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash


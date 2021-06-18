FROM debian:stable-slim

RUN apt update \
    && apt -y install curl git  \
    && curl -sfL -o /usr/local/bin/kyml https://github.com/frigus02/kyml/releases/download/v20210610/kyml_20210610_linux_amd64 \
    && chmod +x /usr/local/bin/kyml \
    && rm -rf /var/lib/apt/lists/*

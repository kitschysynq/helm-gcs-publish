FROM ubuntu:latest

ENV HELM_GCS_VERSION 0.3.6

COPY ./linux-amd64/helm /usr/local/bin/helm

RUN apt update && \
    apt install -y \
       curl \
       git \
    && rm -rf /var/lib/apt/lists/* \
    && helm plugin install https://github.com/hayorov/helm-gcs --version $HELM_GCS_VERSION

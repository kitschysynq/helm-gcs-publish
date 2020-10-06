#!/usr/bin/env bash

set -o errexit

HELM_VERSION=3.3.4

curl -O https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz
tar -zxf helm-v${HELM_VERSION}-linux-amd64.tar.gz

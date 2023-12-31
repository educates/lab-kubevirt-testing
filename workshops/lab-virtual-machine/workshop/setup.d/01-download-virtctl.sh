#!/bin/bash

set -x
set -eo pipefail

mkdir -p $HOME/bin

VERSION=v1.0.0
ARCH=linux-amd64

curl --silent --fail -L -o $HOME/bin/virtctl https://github.com/kubevirt/kubevirt/releases/download/${VERSION}/virtctl-${VERSION}-${ARCH}

chmod +x $HOME/bin/virtctl

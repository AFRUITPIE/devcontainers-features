#!/usr/bin/env bash

apt-get update
apt-get install -y curl unzip

export BUN_VERSION="${VERSION:-"latest"}"
export BUN_INSTALL=/usr/local

if [[ "${BUN_VERSION}" == "latest" ]]; then
    curl -fsSL https://bun.sh/install | bash
else
    curl -fsSL https://bun.sh/install | bash -s "bun-v${BUN_VERSION}"
fi
#!/usr/bin/env bash
set -euox pipefail

UV_VERSION=${1:?}
UV_DIR=/usr/local/lib/uv

# install uv
mkdir -p "${UV_DIR}" && curl -fSL "https://astral.sh/uv/${UV_VERSION}/install.sh" | env "UV_UNMANAGED_INSTALL=${UV_DIR}" sh

# link uv ELF below /usr/local/bin for PATH environment variable
ln -s "${UV_DIR}/"* /usr/local/bin/

# Poka-Yoke
if ! command -v uv; then
    echo "[ERROR]: failed to install uv"
    exit 1
fi
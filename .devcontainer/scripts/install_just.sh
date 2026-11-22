#!/usr/bin/env bash
set -euox pipefail

JUST_DIR=/usr/local/lib/just
JUST_VERSION=${1:?}

JUST_LSP_DIR=/usr/local/lib/just-lsp
JUST_LSP_VERSION=${2:?}

# download Just prebuild tarball
curl -fsSL -o just.tar.gz "https://github.com/casey/just/releases/download/${JUST_VERSION}/just-${JUST_VERSION}-x86_64-unknown-linux-musl.tar.gz"
mkdir -p "${JUST_DIR}"
tar -xvf just.tar.gz -C "${JUST_DIR}"
rm just.tar.gz

# link Just ELF below /usr/local/bin for PATH environment variable
ln -s "${JUST_DIR}/just" /usr/local/bin/

# download Just-LSP prebuild tarball
curl -fsSL -o just-lsp.tar.gz "https://github.com/terror/just-lsp/releases/download/${JUST_LSP_VERSION}/just-lsp-${JUST_LSP_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
mkdir -p "${JUST_LSP_DIR}"
tar -xvf just-lsp.tar.gz -C "${JUST_LSP_DIR}"
rm just-lsp.tar.gz

# link Just-LSP ELF below /usr/local/bin for PATH environment variable
ln -s "${JUST_LSP_DIR}/just-lsp" /usr/local/bin/
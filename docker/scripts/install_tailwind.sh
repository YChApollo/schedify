#!/usr/bin/env bash
set -euox pipefail

TAILWIND_VERSION=${1:?}
TAILWIND_DIR=/usr/local/lib/tailwind

# download TailwindCSS CLI prebuild ELF
mkdir -p "${TAILWIND_DIR}" && curl -fSL -o "${TAILWIND_DIR}/tailwind" "https://github.com/tailwindlabs/tailwindcss/releases/download/v${TAILWIND_VERSION}/tailwindcss-linux-x64" && chmod +x "${TAILWIND_DIR}/tailwind"

# link TailwindCSS CLI ELF below /usr/local/bin for PATH environment variable
ln -s "${TAILWIND_DIR}/tailwind" /usr/local/bin/

# Yoka-Poke
if ! command -v tailwind; then
    echo "[ERROR]: failed to install tailwind"
    exit 1
fi
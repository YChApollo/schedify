#!/usr/bin/env bash
set -euox pipefail

if ! [[ -e 'tailwindcss' ]]; then
    echo "[INFO]: tailwindcss doesn't exists, try downloading it automatic"

    curl -sSL -o ./tailwindcss https://github.com/tailwindlabs/tailwindcss/releases/download/v4.3.5/tailwindcss-linux-x64
    chmod +x ./tailwindcss
    mv ./tailwindcss /usr/local/bin
fi

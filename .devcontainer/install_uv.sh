#!/bin/bash
set -e

command -v curl >/dev/null 2>&1 || (sudo apt-get update && sudo apt-get install -y curl)
curl -LsSf https://astral.sh/uv/install.sh | sh
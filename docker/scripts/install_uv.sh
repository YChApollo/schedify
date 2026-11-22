#!/usr/bin/env bash
set -euox pipefail

curl -LsSf https://astral.sh/uv/0.11.2/install.sh | env UV_UNMANAGED_INSTALL=/usr/local/bin sh
#!/bin/bash
set -e

# uv add django-template-lsp
# extension bug - fallback to global python
# pip install djlint

uv tool install ruff@latest
uv tool install just-lsp
uv tool install rust-just
uv sync
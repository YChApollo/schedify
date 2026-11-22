# syntax=docker/dockerfile:1

FROM docker.io/buildpack-deps:trixie-scm AS dependency

WORKDIR /var/tmp
SHELL ["/bin/bash", "-euo", "pipefail", "-c"]

RUN --mount=type=bind,source=./docker/scripts/install_uv.sh,target=/var/tmp/install_uv.sh \
    --mount=type=bind,source=./docker/scripts/install_tailwind.sh,target=/var/tmp/install_tailwind.sh \
    bash /var/tmp/install_uv.sh 0.11.2 && bash /var/tmp/install_tailwind.sh 4.3.5

FROM dependency AS devcontainer

WORKDIR /workspace

RUN --mount=type=bind,source=./.devcontainer/scripts/install_just.sh,target=/var/tmp/install_just.sh \
    bash /var/tmp/install_just.sh 1.59.0 0.11.2
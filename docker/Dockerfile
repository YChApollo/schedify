FROM docker.io/buildpack-deps:trixie-scm AS dependency

WORKDIR /var/tmp
SHELL ["/bin/bash", "-euo", "pipefail", "-c"]

RUN --mount=type=bind,source=./docker/scripts/install_uv.sh,target=/var/tmp/install_uv.sh \
    --mount=type=bind,source=./docker/scripts/install_tailwindcss.sh,target=/var/tmp/install_tailwindcss.sh \
    bash /var/tmp/install_uv.sh && bash /var/tmp/install_tailwindcss.sh

FROM dependency AS devcontainer

WORKDIR /workspace

RUN --mount=type=bind,source=./docker/scripts/install_just.sh,target=/var/tmp/install_just.sh \
    bash /var/tmp/install_just.sh 1.59.0 0.11.2
[windows]
set shell := ["powershell.exe", "-NoLogo", "-NoProfile", "-Command"]

default:
    just --list

runserver port="8000":
    uv run python src/manage.py runserver {{ port }}

startapp appname:
    uv run python -c "import pathlib; pathlib.Path('src/apps/{{ appname }}').mkdir(parents=True, exist_ok=True)"
    uv run django-admin startapp {{ appname }} src/apps/{{ appname }}

format-and-fix:
    uv run ruff check --fix
    uv run ruff format

debug-css:
    tailwind -i ./src/static/css/src/main.css -o ./src/static/css/dist/tailwind.styles.css --watch

build-css:
    tailwind -i ./src/static/css/src/main.css -o ./src/static/css/dist/tailwind.styles.css --minify

[linux]
setup-cloudflare-tunnel:
    bash ./.devcontainer/scripts/.setup_cloudflare_tunnel.sh

build-devcontainer-image:
    docker build -f ./docker/Dockerfile -t docker.io/ychapollo/schedify-devcontainer:latest .

push-devcontainer-image:
    docker push docker.io/ychapollo/schedify-devcontainer:latest

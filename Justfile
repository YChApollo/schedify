default:
    just --list

runserver port="8000":
    uv run python src/manage.py runserver {{ port }}

startapp appname:
    mkdir -p src/apps/{{ appname }}
    uv run django-admin startapp {{ appname }} src/apps/{{ appname }}

format:
    ruff format

check:
    ruff check

fix:
    ruff check --fix

ff:
    ruff check --fix
    ruff format

debug-css:
    ./tailwindcss -i ./src/static/css/src/main.css -o ./src/static/css/dist/tailwind.styles.css --content ./src/**/*.html --watch

build-css:
    chmod +x ./tailwindcss
    ./tailwindcss -i ./src/static/css/src/main.css -o ./src/static/css/dist/tailwind.styles.css --minify

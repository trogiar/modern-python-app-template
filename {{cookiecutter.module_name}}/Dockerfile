FROM python:3.12-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

ADD {{cookiecutter.module_name}} /{{cookiecutter.module_name}}

WORKDIR /{{cookiecutter.module_name}}

RUN uv sync --frozen

CMD ["uv", "run", "streamlit", "run", "app.py"]
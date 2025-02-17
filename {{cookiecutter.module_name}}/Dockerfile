FROM python:3.12-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

ADD {{cookiecutter.module_name}} /{{cookiecutter.module_name}}
ADD pyproject.toml /pyproject.toml
ADD uv.lock /uv.lock

WORKDIR /{{cookiecutter.module_name}}

RUN uv venv
RUN uv sync --frozen
RUN uv pip install -e .

CMD ["uv", "run", "streamlit", "run", "{{cookiecutter.module_name}}"]
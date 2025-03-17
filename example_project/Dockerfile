FROM python:3.12-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

ADD example_project /example_project
ADD pyproject.toml /pyproject.toml
ADD uv.lock /uv.lock

WORKDIR /

RUN uv venv
RUN uv sync --frozen
RUN uv pip install -e .

CMD ["uv", "run", "streamlit", "run", "example_project"]
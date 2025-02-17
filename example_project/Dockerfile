FROM python:3.12-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

ADD example_project /example_project

WORKDIR /example_project

RUN uv sync --frozen

CMD ["uv", "run", "streamlit", "run", "app.py"]
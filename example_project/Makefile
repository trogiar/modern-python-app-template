.PHONY: init
init: # Initialize the project
	uv sync
	uv pip install -e .
	uv run pre-commit install

.PHONY: ruff
format:
	uv run ruff check . --fix

.PHONY: mypy
lint:
	uv run mypy .

.PHONY: mdformat
mdformat:
	uv run mdformat .

.PHONY: check
check:
	make lint
	make format
	make mdformat

.PHONY: test
test:
	uv run pytest

.PHONY: run
run:
	uv run example_project

.PHONY: build_docs
build_docs:
	uv run mkdocs build

.PHONY: view_docs
view_docs: build_docs
	uv run mkdocs serve

.PHONY: lab
lab:
	uv run jupyter lab

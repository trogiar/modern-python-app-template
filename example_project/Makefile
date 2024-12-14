.PHONY: init
init: # Initialize the project
	uv venv
	uv sync
	uv pip install -e .
	uv run pre-commit install

.PHONY: ruff
ruff:
	uv run ruff check . --fix

.PHONY: pyright
pyright:
	uv run pyright

.PHONY: mdformat
mdformat:
	uv run mdformat .

.PHONY: check
check: ruff pyright mdformat

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

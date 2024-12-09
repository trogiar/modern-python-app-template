.PHONY: init
init: # Initialize the project
	uv sync
	uv pip install -e .

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
	uv run pytest -v -s


.PHONY: docs
docs:
	cd docs
	make html

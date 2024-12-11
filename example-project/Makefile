.PHONY: init
init: # Initialize the project
	if [ $$(echo "$$(uv --version | cut -d' ' -f2 | cut -d'.' -f1,2) < 0.5.9" | bc) -eq 1 ]; then \
		echo "uv version must be 5.7 or higher"; \
		uv --version; \
		exit 1; \
	fi
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
	uv run pytest

.PHONY: run
run:
	uv run app

.PHONY: docs
docs:
	cd docs && make html

.PHONY: lab
lab:
	uv run jupyter lab


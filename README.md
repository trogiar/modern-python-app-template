# modern-python-app-template

## Requirements

- [cookiecutter](https://github.com/cookiecutter/cookiecutter)
- [uv](https://docs.astral.sh/uv/) >= 0.5.7

## Usage

Using global cookiecutter installation:
```bash
cookiecutter https://github.com/trogiar/modern-python-app-template.git
```

Using mise-en-place:
```bash
mise x -- pip install pipx
mise x -- pipx run cookiecutter https://github.com/trogiar/modern-python-app-template.git
```


## Features

- Packaging and dependency management with [uv](https://docs.astral.sh/uv/)
- Linting and formatting with [Ruff](https://docs.astral.sh/ruff/) and [pre-commit](https://pre-commit.com/)
- Formatting markdown with [mdformat](https://github.com/hukkin/mdformat)
- Documentation with [mkdocs](https://www.mkdocs.org/)
- Static type-checking with [pyright](https://github.com/microsoft/pyright)
- Testing with [pytest](https://docs.pytest.org/en/latest/)
- Code coverage with [pytest-cov](https://pytest-cov.readthedocs.io/en/latest/)
- Continuous integration with [GitHub Actions](https://github.com/features/actions)
- Logging with [loguru](https://github.com/Delgan/loguru)
- Configuration with [pydantic-settings](https://docs.pydantic.dev/latest/concepts/pydantic_settings/)

## Referenced repositories

- [modern-python-template](https://github.com/gecrooks/modern-python-template)
- [cookiecutter-hypermodern-python](https://github.com/cjolowicz/cookiecutter-hypermodern-python)
- [fastapi-sqlalchemy-template](https://github.com/modern-python/fastapi-sqlalchemy-template)

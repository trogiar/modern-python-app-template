.PHONY: test
test:
	rm -rf example_project
	cookiecutter --no-input --overwrite-if-exists .
	cd example_project && make init && make check && make test
	
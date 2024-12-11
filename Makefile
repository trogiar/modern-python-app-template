.PHONY: test
test:
	rm -rf example-project
	cookiecutter --no-input --overwrite-if-exists .
	cd example-project && make init && make check && make test


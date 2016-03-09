PWD = $(shell pwd)

build:
	docker run --rm -v $(PWD):/source jimmycuadra/rust rustc hello_world.rs
	docker build -t luebken/hellorust .
run:
	docker run --rm luebken/hellorust
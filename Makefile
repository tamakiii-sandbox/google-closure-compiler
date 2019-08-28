
build:
	docker build -t google-closure-compiler .

run:
	docker run --rm -it google-closure-compiler --version

login:
	docker run --rm -it --entrypoint ash google-closure-compiler


build:
	docker build -t google-closure-compiler .

run:
	docker run --rm -it -v $(PWD):/app google-closure-compiler --version

login:
	docker run --rm -it -v $(PWD):/app --entrypoint ash google-closure-compiler

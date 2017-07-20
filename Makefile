NAME = thenets/phalcon
TAG = latest
SHELL = /bin/bash

build: pre-build docker-build post-build

pre-build:

post-build: test

docker-build:
	docker build -t $(NAME):$(TAG) --rm .

test:
	docker run -it --rm -p 8080:8080 $(NAME):$(TAG)

shell:
	docker run -it --rm -p 8080:8080 $(NAME):$(TAG) $(SHELL)


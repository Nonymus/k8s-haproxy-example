NAME?=haproxy
TAG?=latest
REPOSITORY?=nonymus/$(NAME)

all: build
build:
	docker build -t $(REPOSITORY):$(TAG) .

run: build
	docker run --rm -it $(REPOSITORY):$(TAG)

.PHONY: all build run

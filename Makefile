LATEST_TAG := $$(git tag -l | tr -d v | sort --reverse --version-sort | head -n1)

all: pull build

.PHONY:
pull:
	docker pull python:3.8-slim-bullseye
	docker pull node:12-alpine

.PHONY:
build:
	docker build -t docbibi/flinters tools/flinters
	docker build -t docbibi/flinters-python tools/flinters-python
	docker build -t docbibi/flinters-python-django tools/flinters-python-django
	docker build -t docbibi/flinters-terraform tools/flinters-terraform
	docker build -t docbibi/flinters-typescript-react tools/flinters-typescript-react
	docker build -t docbibi/commit-linters tools/commit-linters
	docker build -t docbibi/release-manager tools/release-manager

.PHONY:
push:
	docker push docbibi/flinters:$(LATEST_TAG)
	docker push docbibi/flinters-python:$(LATEST_TAG)
	docker push docbibi/flinters-python-django:$(LATEST_TAG)
	docker push docbibi/flinters-terraform:$(LATEST_TAG)
	docker push docbibi/flinters-typescript-react:$(LATEST_TAG)
	docker push docbibi/commit-linters:$(LATEST_TAG)
	docker push docbibi/release-manager:$(LATEST_TAG)

.PHONY:
tag:
	docker tag $$(docker inspect --format='{{index .Id}}' docbibi/commit-linters:latest | cut -d':' -f2) docbibi/commit-linters:$(LATEST_TAG)
	docker tag $$(docker inspect --format='{{index .Id}}' docbibi/flinters:latest | cut -d':' -f2) docbibi/flinters:$(LATEST_TAG)
	docker tag $$(docker inspect --format='{{index .Id}}' docbibi/flinters-python:latest | cut -d':' -f2) docbibi/flinters-python:$(LATEST_TAG)
	docker tag $$(docker inspect --format='{{index .Id}}' docbibi/flinters-python-django:latest | cut -d':' -f2) docbibi/flinters-python-django:$(LATEST_TAG)
	docker tag $$(docker inspect --format='{{index .Id}}' docbibi/flinters-terraform:latest | cut -d':' -f2) docbibi/flinters-terraform:$(LATEST_TAG)
	docker tag $$(docker inspect --format='{{index .Id}}' docbibi/flinters-typescript-react:latest | cut -d':' -f2) docbibi/flinters-typescript-react:$(LATEST_TAG)
	docker tag $$(docker inspect --format='{{index .Id}}' docbibi/release-manager:latest | cut -d':' -f2) docbibi/release-manager:$(LATEST_TAG)

.PHONY:
lint:
	docker run -it --rm --mount source="$$(pwd)",target=/app/src,type=bind --user "$$(id -u):$$(id -g)" docbibi/flinters pre-commit run --all-files

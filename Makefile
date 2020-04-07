LATEST_TAG := 1.7.0

all: build

.PHONY:
build:
	docker build -t docbibi/flinters tools/flinters
	docker build -t docbibi/flinters-python-django tools/flinters-python-django
	docker build -t docbibi/flinters-typescript-react tools/flinters-typescript-react
	docker build -t docbibi/commit-linters tools/commit-linters

.PHONY:
push:
	docker push docbibi/flinters:$(LATEST_TAG)
	docker push docbibi/flinters-python-django:$(LATEST_TAG)
	docker push docbibi/flinters-typescript-react:$(LATEST_TAG)
	docker push docbibi/commit-linters:$(LATEST_TAG)

.PHONY:
tag:
	docker tag $$(docker inspect --format='{{index .Id}}' docbibi/commit-linters:latest | cut -d':' -f2) docbibi/commit-linters:$(LATEST_TAG)
	docker tag $$(docker inspect --format='{{index .Id}}' docbibi/flinters:latest | cut -d':' -f2) docbibi/flinters:$(LATEST_TAG)
	docker tag $$(docker inspect --format='{{index .Id}}' docbibi/flinters-python-django:latest | cut -d':' -f2) docbibi/flinters-python-django:$(LATEST_TAG)
	docker tag $$(docker inspect --format='{{index .Id}}' docbibi/flinters-typescript-react:latest | cut -d':' -f2) docbibi/flinters-typescript-react:$(LATEST_TAG)

.PHONY:
lint:
	docker run -it --rm --mount source="$$(pwd)",target=/app/src,type=bind --user "$$(id -u):$$(id -g)" docbibi/flinters pre-commit run --all-files

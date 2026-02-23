IMAGE=liatrio-apprenticeship-exercise
TAG=v1

build:
	docker buildx build -t $(IMAGE):$(TAG) --load .

run:
	docker run --rm -p 3000:3000 $(IMAGE):$(TAG)

dev: build run

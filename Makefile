.PHONY: build run dev ci-build ci-run

IMAGE=liatrio-apprenticeship-exercise
TAG=v1

build:
	docker build -t $(IMAGE):$(TAG) .

run:
	docker run --rm -p 3000:3000 $(IMAGE):$(TAG)

dev: build run

ci-build:
	docker build -t $(IMAGE):$(TAG) .

ci-run:
	docker rm -f liatrio-app || true
	docker run -d --name liatrio-app -p 80:3000 $(IMAGE):$(TAG)

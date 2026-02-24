IMAGE=liatrio-apprenticeship-exercise
TAG=v1

build:
	docker buildx build -t $(IMAGE):$(TAG) --load .

run:
	docker run --rm -p 3000:3000 $(IMAGE):$(TAG)

dev: build run

ci-build:
	docker buildx build -t $(IMAGE):$(TAG) --load .

ci-run:
	docker run -d -p 80:3000 $(IMAGE):$(TAG)
	curl -f --retry 10 --retry-delay 1 --retry-connrefused http://localhost

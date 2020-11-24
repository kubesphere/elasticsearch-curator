
# Image URL to use all building/pushing image targets
IMG ?= kubespheredev/elasticsearch-curator:latest
AMD64 ?= -amd64
ARM64 ?= -arm64

all: build

# Build the docker image for amd64 and arm64
build:
	docker buildx build --push --platform linux/amd64,linux/arm64 -f Dockerfile . -t ${IMG}

# Build all docker images for amd64
build-amd64:
	docker build -f Dockerfile . -t ${IMG}${AMD64}

# Push the docker image
push-amd64:
	docker push ${IMG}${AMD64}

# Build all docker images for arm64
build-arm64:
	docker buildx build --push --platform linux/arm64 -f Dockerfile . -t ${IMG}${ARM64}


CONTAINER_NAME=a1exanderjung/latex-toolchain
CONTAINER_VERSION=0.1.1
DOCKER=docker

.PHONY: container
container:
	$(DOCKER) build \
			--network host \
			-t $(CONTAINER_NAME):$(CONTAINER_VERSION) \
			.

#!make

DOCKER_IMAGE:=chronograf:1.6-mongodb-fix
DOCKER_HUB_REPO:=puneethn

build:
	@docker build -f ./Dockerfile -t  $(DOCKER_IMAGE) .

tag:
	@docker tag $(DOCKER_IMAGE) $(DOCKER_HUB_REPO)/$(DOCKER_IMAGE)

push:
	@docker push $(DOCKER_HUB_REPO)/$(DOCKER_IMAGE)

all: build tag push


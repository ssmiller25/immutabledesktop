# Substitute your own docker index username, if you like.
DOCKER_USER=ssmiller25

# Change this to suit your needs.
TAG:=xpra-html5

all: build

build:
	docker build -t="$(DOCKER_USER)/$(TAG)" .

run:
	docker run --rm -p 10000:10000 "$(DOCKER_USER)/$(TAG)"

version ?= 0.1.0
release_date ?= $(shell date +%Y-%m-%d)
upstream_image ?= "alpine:3.12"
image_name ?= dotfile
build_repo ?= quay.io/ssmiller25
build_image ?= ${build_repo}/${image_name}


include $(shell curl -sSL -o Makefile.docker "https://raw.githubusercontent.com/ssmiller25/blast-oci/v0.1.1/include/Makefile.docker"; echo Makefile.docker)
#include .Makefile.docker

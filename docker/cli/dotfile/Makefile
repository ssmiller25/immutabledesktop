version ?= 0.1.0
release_date ?= $(shell date +%Y-%m-%d)
upstream_image ?= "alpine:3.12"
image_name ?= dotfile
build_repo ?= quay.io/ssmiller25
build_image ?= ${build_repo}/${image_name}

-include $(shell curl -sSL ${CURL_ARG} -o .Makefile.docker "https://raw.githubusercontent.com/ssmiller25/blast-oci/main/include/Makefile.docker"; echo .Makefile.docker)
#include .Makefile.docker

version := 0.1.0
release_date := $(shell date +%Y-%m-%d)
upstream_images := $(shell cat .upstream-images)
image_name := dotfile
build_repo := quay.io/ssmiller25
build_image := ${build_repo}/${image_name}

include $(shell curl -sSL -o "https://raw.githubusercontent.com/ssmiller25/blast-oci/main/make-include/Makefile.docker")


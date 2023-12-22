#!/bin/bash

# Membuat docker image karsajobs
docker build -t ghcr.io/arrow2601/karsajobs:latest .

# login github packages
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u arrow2601 --password-stdin
# push image
docker push ghcr.io/arrow2601/karsajobs:latest

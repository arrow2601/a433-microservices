#!/bin/bash

docker build -t item-app:v1 .

docker images

docker tag item-app:v1 ghcr.io/arrow2601/item-app:v1

echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u arrow2601 --password-stdin

docker push ghcr.io/arrow2601/item-app:v1

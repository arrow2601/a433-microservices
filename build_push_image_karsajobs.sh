#!/bin/bash


docker build -t ghcr.io/arrow2601/karsajobs:latest .


echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u arrow2601 --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/arrow2601/karsajobs:latest

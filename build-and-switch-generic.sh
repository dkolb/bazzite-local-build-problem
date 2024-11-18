#!/usr/bin/env bash

IMAGE=$1
TAG=$2

sudo buildah build -t localhost/${IMAGE}:local -f Containerfile.generic --build-arg=image=bluefin --build-arg=tag=stable .
sudo bootc switch --transport containers-storage localhost/${IMAGE}:local

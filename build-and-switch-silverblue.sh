#!/usr/bin/env bash
set -x
sudo buildah build -t localhost/silverblue:local -f Containerfile.silverblue .
sudo bootc switch --transport containers-storage localhost/silverblue:local

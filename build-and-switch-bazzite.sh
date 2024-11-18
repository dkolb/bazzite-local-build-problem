#!/usr/bin/env bash
set -x
sudo buildah build -t localhost/bazzite-gnome:local -f Containerfile.bazzite .
sudo bootc switch --transport containers-storage localhost/bazzite-gnome:local

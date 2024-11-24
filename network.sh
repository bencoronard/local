#!bin/bash

NETWORK='hbnet'

if podman network exists "$NETWORK"; then
  echo "$NETWORK already exists"
  exit 0
fi

podman network create "$NETWORK"
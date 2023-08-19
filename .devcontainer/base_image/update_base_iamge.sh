#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

DOCKER_BUILDKIT=1 docker build -t rowanw/chess-pytorch:latest -f $SCRIPT_DIR/Dockerfile $SCRIPT_DIR/../..

docker push rowanw/chess-pytorch:latest

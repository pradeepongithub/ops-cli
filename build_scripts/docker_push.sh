#!/bin/bash
set -e

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag ops adobe/ops-cli:2.0.6dev
docker push adobe/ops-cli:2.0.6dev

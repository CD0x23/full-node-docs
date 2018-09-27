#!/bin/bash

set -exuo pipefail

TAG=${1:-latest}

docker build -t blockron/bitcoind:${TAG} .
docker login
docker push blockron/bitcoind:${TAG}

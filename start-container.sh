#!/bin/bash
set -Eeuo pipefail

docker network create db-network-private || true
docker-compose up -d

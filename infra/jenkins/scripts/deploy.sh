#!/usr/bin/env bash
echo "Deploying... here we gooooo"
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)

docker build -t internal-backend $SCRIPT_DIR/services/backend

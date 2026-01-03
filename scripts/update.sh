#!/usr/bin/env bash

set -euo pipefail

echo "Checking for updates..."

git fetch origin

LOCAL=$(git rev-parse HEAD)

LOCAL_BRANCH=$(git rev-parse --abbrev-ref HEAD)

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

REMOTE=$(git rev-parse origin/$LOCAL_BRANCH)

if [ "$LOCAL" != "$REMOTE" ]; then
    git pull
    echo "Updated successfully"
    $SCRIPT_DIR/deploy.sh
fi

#!/usr/bin/env bash

set -euo pipefail
echo "Checking for updates..."


git fetch origin

LOCAL=$(git rev-parse HEAD)
LOCAL_BRANCH=$(git rev-parse --abbrev-ref HEAD)



REMOTE=$(git rev-parse origin/$LOCAL_BRANCH)

if [ "$LOCAL" != "$REMOTE" ]; then
    echo "Local branch is not equal to remote branch. Please update your local branch."
    exit 1
fi
#!/usr/bin/env bash

set -euo pipefail
echo "Checking for updates..."


LOCAL_BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "Local branch: $LOCAL_BRANCH"

REMOTE_BRANCH=$(git rev-parse --abbrev-ref origin/$LOCAL_BRANCH)
echo "Remote branch: $REMOTE_BRANCH"

if [ "$LOCAL_BRANCH" != "$REMOTE_BRANCH" ]; then
    echo "Local branch is not equal to remote branch. Please update your local branch."
    exit 1
fi
#!/bin/bash

# make sure we set the working directory into this one

DIR=$(dirname $0)
BASE_DIR="${DIR%$STRIP_SUFFIX}"
cd "$BASE_DIR"
TARGET="$BASE_DIR/src"

echo $(pwd)

# then we can start running git commands
git status && \
  git add --all && \
  git commit -m "update" && \
  git push
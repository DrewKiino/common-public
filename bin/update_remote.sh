#!/bin/bash

# make sure we set the working directory into this one

DIR=$(dirname $0)
BASE_DIR="${DIR%$STRIP_SUFFIX}"
cd "$BASE_DIR"

# then we can start running git commands
git add --all && \
  git status && \
  git commit -m "update" -q && \
  git push -q &&
  echo "Changes committed.\n"

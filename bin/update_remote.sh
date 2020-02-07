#!/bin/bash

cd "$(dirname "$0")"

# echo $DIR
# echo $BASE_DIR
# echo $TARGET

git add .
git commit -m "update"
git push
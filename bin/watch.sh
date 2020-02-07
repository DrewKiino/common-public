#!/bin/bash
STRIP_SUFFIX="/bin"

echo "watching bobas!"

DIR=$(dirname $0)
BASE_DIR="${DIR%$STRIP_SUFFIX}"
TARGET="$BASE_DIR/src"

fswatch -e "$BASE_DIR" -i "$TARGET" . -o -l 5 | \
  xargs -I {} \
  sh -c "sh $DIR/update_remote.sh"




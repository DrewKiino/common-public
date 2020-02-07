#!/bin/bash
STRIP_SUFFIX="/bin"

DIR=$(dirname $0)
FILE_NAME=$(basename -- $1)
SOURCE=$(pwd "$1")/"$1"
TARGET="${DIR%$STRIP_SUFFIX}/src/$FILE_NAME"

echo "\nwatching changes to:\n\n$SOURCE\n"
echo "changes will be copied into: \n\n$TARGET\n"

fswatch -o -l 3 "$SOURCE" | \
  xargs -I {} \
  sh -c "echo 'copied $SOURCE >> $TARGET'; cp $SOURCE $TARGET"
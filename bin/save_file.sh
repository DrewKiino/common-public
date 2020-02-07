#!/bin/bash
STRIP_SUFFIX="/bin"

DIR=$(dirname $0)
FILE_NAME=$(basename -- $1)
SOURCE=$(pwd "$1")/"$1"
TARGET="${DIR%$STRIP_SUFFIX}/src/$FILE_NAME"

echo "copied $SOURCE >> $TARGET" \
  && cp $SOURCE $TARGET \
  && sh $DIR/update_remote.sh
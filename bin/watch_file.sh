#!/bin/bash
TO_WATCH=$(pwd "$1")
echo "watching changes to $TO_WATCH"
fswatch -o -l 1 "$TO_WATCH" | xargs -I {} echo hello
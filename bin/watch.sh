#!bin/bash
fswatch -e ".git" -i ".*" . -o -l 5 | xargs -I {} sh bin/update_remote.sh



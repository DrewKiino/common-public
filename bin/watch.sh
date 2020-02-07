#!bin/bash
fswatch -e "." -i "src" . -o -l 5 | xargs -I {} sh bin/update_remote.sh




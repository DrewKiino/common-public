#!/bin/bash

echo "alias boba_watch='sh ~/common-public/bin/watch.sh'" >>~/.bash_profile
echo "alias boba_watch_file='sh ~/common-public/bin/watch_file.sh $1'" >>~/.bash_profile
echo "alias boba_save_file='sh ~/common-public/bin/save_file.sh $1'" >>~/.bash_profile
source ~/.bash_profile

echo "done installing boba watch!"
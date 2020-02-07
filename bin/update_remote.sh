#!/bin/bash

# make sure we set the working directory into this one
cd "$(dirname "$0")"

# then we can start running git commands
git add .
git commit -m "update"
git push
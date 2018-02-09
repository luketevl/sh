#!/bin/bash

# store the current dir
CUR_DIR=$1
GIT_URL=$2

echo "Setting ORIGIN URL all repositories...";

find $CUR_DIR -maxdepth 2  -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git remote set-url $GIT_URL" \;

echo "Complete";

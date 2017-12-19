#!/bin/bash

# store the current dir
CUR_DIR=$1

echo "Pulling in latest changes for all repositories...";

find $CUR_DIR -maxdepth 2  -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull" \;

echo "Complete";
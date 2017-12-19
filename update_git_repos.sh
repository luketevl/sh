#!/bin/bash

# store the current dir
CUR_DIR=$1

echo "Pulling in latest changes for all repositories...";

find $CUR_DIR -type d -depth 1 -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull" \;

echo "Complete";
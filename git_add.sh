#!/bin/bash

# store the current dir
CUR_DIR=$1
ADD=$2

echo "Pulling in latest changes for all repositories...";

find $CUR_DIR -maxdepth 2  -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git add $ADD" \;

find $CUR_DIR -maxdepth 2  -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git add $ADD && git commit -m 'autocommit' " \;

echo "Complete";

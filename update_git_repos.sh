#!/bin/bash

# store the current dir
CUR_DIR=$1

echo "Pulling in latest changes for all repositories...";

find $CUR_DIR -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull \;

echo "Complete";
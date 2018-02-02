#!/bin/bash

# store the current dir
CUR_DIR=$1
NAME=$1

echo "Removing files...";
find $CUR_DIR -name $NAME -exec rm -rf {} \;
echo "Complete";

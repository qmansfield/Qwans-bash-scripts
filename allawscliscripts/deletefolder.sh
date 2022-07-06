#!/bin/bash

folder1=$(aws s3 ls s3://dev9 | grep gab | cut -c32-35)
folder2=$(aws s3 ls s3://dev9 | grep prod | cut -c32-36)
folder3=$(aws s3 ls s3://dev9 | grep admin | cut -c32-37)
allfolders="$folder1 $folder2 $folder3"

for f in $allfolders
do
echo "removing all folders in dev9..."
sleep 2
aws s3 rm s3://dev9/$f --recursive
done

#!/bin/bash

file1=$(aws s3 ls s3://dev9 | grep dance | cut -c32-40)
file2=$(aws s3 ls s3://dev9 | grep drama | cut -c32-40)
file3=$(aws s3 ls s3://dev9 | grep music | cut -c32-40)
file4=$(aws s3 ls s3://dev9 | grep science | cut -c32-42)
allfiles="$file1 $file2 $file3 $file4"

for f in $allfiles
do
echo "removing all files in dev9..."
sleep 2
aws s3 rm s3://dev9/$f
done

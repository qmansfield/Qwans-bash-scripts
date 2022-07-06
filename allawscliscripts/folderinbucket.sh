#!/bin/bash

FOLDER1=$(aws s3 ls s3://sports5 | grep games | cut -c32-37)
FOLDER2=$(aws s3 ls s3://sports5 | grep soccer | cut -c32-38)
FOLDER3=$(aws s3 ls s3://sports5 | grep volley | cut -c32-38)

ALLFOLDERS="$FOLDER1 $FOLDER2 $FOLDER3" 

for f in $ALLFOLDERS

do

echo "removing all folders please wait....."
sleep 2

aws s3 rm s3://sports5/$f

done


#!/bin/bash

NAMES="gab2 qwan2 emmanuel2 john2 mike2"
for u in $NAMES
do
aws iam $1-user --user-name $u
done




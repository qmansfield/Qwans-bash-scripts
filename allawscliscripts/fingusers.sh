#!/bin/bash

user="john dave gab jake"
for u in $user
do
aws iam add-user-to-group --user-name $u --group-name fing
done

#!/bin/bash

username="john jake dave"
for u in $username
do
aws iam $1-user --user-name $u
done

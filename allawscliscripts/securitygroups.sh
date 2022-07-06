#!/bin/bash

securitygroup="devg fing prodg"
for sg in $securitygroup
do
aws ec2 $1-security-group --group-name $sg --description "devgsg" --vpc-id vpc-09c8ecb56a0528ee6
done

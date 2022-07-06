#!/bin/bash

bucket="finbk2 auditbk2 adminbk2 devbk2"
for b in $bucket
do
aws s3 $1 s3://$b
done

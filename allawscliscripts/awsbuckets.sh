#!/bin/bash

BUCKETS="finbk auditbk adminbk"
for b in $BUCKETS
do
aws s3api $1-bucket \
--bucket $b \
--region us-east-1
done

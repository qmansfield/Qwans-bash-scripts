####CREATING/DELETING GROUPS USING FOR LOOP and DYNAMIC COMMAND IN AWS CLI###

#!/bin/bash

group="music dance drama science"
for g in $group
do
aws iam $1-group --group-name $g
done

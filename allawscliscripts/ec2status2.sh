#!/bin/bash

status=$(aws ec2 describe-instances --instance-id i-0aa0602403355d98b | grep stopped | cut -c34-40)
status=$(aws ec2 describe-instances --instance-id i-0c1ebd3c207da91ca | grep stopped | cut -c34-40)
status=$(aws ec2 describe-instances --instance-id i-0b08cfd66b16b4861 | grep stopped | cut -c34-40)
status=$(aws ec2 describe-instances --instance-id i-0b0867bcc39136733 | grep stopped | cut -c34-40)
status=$(aws ec2 describe-instances --instance-id i-07c9fc3a42ccb810b | grep stopped | cut -c34-40)
if [ $status = $1 ]
then
	        echo "instance starting in progress..."
		        sleep 2
			        aws ec2 start-instances --instance-ids $2 $3 $4 $5 $6
			else
				        echo "instance already running"
fi
~          

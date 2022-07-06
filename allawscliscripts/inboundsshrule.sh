#!/bin/bash


###Example 4: [EC2-VPC] To add a rule that allows inbound SSH traffic to fing###

###The following example enables inbound traffic on TCP port 22 (SSH). Note that you can’t reference a security group for EC2-VPC by name###

aws ec2 revoke-security-group-ingress \
	    --group-id sg-08332b5819dd8ebfd \
	        --protocol tcp \
		    --port 22 \
		        --cidr 141.157.43.38/24


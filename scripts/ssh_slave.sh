#!/bin/bash
SLAVE_IP=$(aws ec2 describe-instances --filters "Name=spot-instance-request-id,Values=$1" "Name=instance-state-name,Values=running" --query="Reservations[0].Instances[0].PublicIpAddress" | tr -d '"')
SLAVE_DETAILS="ubuntu@"$SLAVE_IP

ssh -i ~/jenkins-slaves.pem $SLAVE_DETAILS

#!/bin/bash
SLAVE_IP=$(aws ec2 describe-instances --filters "Name=spot-instance-request-id,Values=$1" "Name=instance-state-name,Values=running" --query="Reservations[0].Instances[0].PublicIpAddress" | tr -d '"')
if [[ $SLAVE_IP == 'null' ]]; then
    SLAVE_IP=$(aws ec2 describe-instances --filters "Name=instance-id,Values=$1" "Name=instance-state-name,Values=running" --query="Reservations[0].Instances[0].PublicIpAddress" | tr -d '"')
fi
SLAVE_DETAILS="ubuntu@"$SLAVE_IP

ssh -vvv -D 8080 -i ~/jenkins-slaves.pem $SLAVE_DETAILS

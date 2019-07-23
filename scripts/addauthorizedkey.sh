#!/bin/bash
user_and_host=$1
pub_key=$2
cat $pub_key | ssh $user_and_host "cat >> ~/.ssh/authorized_keys"

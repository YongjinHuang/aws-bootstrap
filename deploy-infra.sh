#!/bin/bash

STACK_NAME=awsbootstrap
REGION=us-east-1
CLI_PROFILE=awsbootstrap

EC2_INSTANCE_TYPE=t2.micro
TEMPLATE_FILE=main.yml

# Deploy the CloudFormation template
echo -e "\n\n========== Deploy $TEMPLATE_FILE =========="
aws cloudformation deploy \
  --region $REGION \
  --profile $CLI_PROFILE \
  --stack-name $STACK_NAME \
  --template-file $TEMPLATE_FILE \
  --no-fail-on-empty-changeset \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides EC2InstanceType=$EC2_INSTANCE_TYPE

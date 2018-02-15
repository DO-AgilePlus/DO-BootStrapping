#!/bin/sh
#
# aws_credentials
# aws_config
#
sudo mkdir ~/.aws
#
sudo cp . aws_credentials ~/.aws/
sudo mv ~/.aws/aws_credentials ~/.aws/credentials
#
sudo cp . aws_config ~/.aws/
sudo mv ~/.aws/aws_config ~/.aws/config
#
ls ~/.aws
#

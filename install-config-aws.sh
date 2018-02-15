#!/bin/sh
#
if ! command pip --version >/dev/null; then
	echo "Installing AWS dependencies"
fi
#
if ! command curl >/dev/null; then
	apt-get install -y -qq curl
	curl -O https://bootstrap.pypa.io/get-pip.py
	python get-pip.py --user
fi

# Export PATH
export PATH=~/.local/bin:$PATH
source ~/.profile

# Install AWS CLI
sudo apt-get -qq update
sudo curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
sudo unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
export PATH=$PATH:/user/local/bin/aws >> ~/.profile

aws --version

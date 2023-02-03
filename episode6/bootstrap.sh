#!/bin/bash

add-apt-repository ppa:deadsnakes/ppa
apt-get update
apt-get install -y python3-pip ansible libssl-dev rustc libffi-dev git sshpass fish
python3 -m pip install setuptools_rust --no-warn-script-location
python3 -m pip install --upgrade pip --no-warn-script-location
python3 -m pip install --ignore-installed PyYAML molecule ansible-core --no-warn-script-location
ansible --version
python3 -m molecule --version
chsh -s $(which fish)
git clone https://github.com/lobanov4real/ansible-101
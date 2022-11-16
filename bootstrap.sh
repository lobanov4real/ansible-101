#!/bin/bash

sudo add-apt-repository ppa:deadsnakes/ppa
apt-get update
apt-get install -y python3-pip ansible libssl-dev rustc libffi-dev git
python3 -m pip install setuptools_rust
python3 -m pip install --upgrade pip
python3 -m pip install --ignore-installed PyYAML molecule ansible-core
python3 -m pip install --user "molecule"
python3 -m pip install --upgrade --user setuptools
ansible --version
python3 -m molecule --version

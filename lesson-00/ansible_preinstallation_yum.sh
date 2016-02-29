#!/bin/bash
################################################################
# Ansible pre-installation setup script for CentOS 6
# This script ensure that your controller system is configured
# to run ansible. Once this script is run, then next step is to
# use ansible to configure the controller system, and then any
# other systems. Assumes running as root.
################################################################
### Proxy Info
# uncomment if you need to add proxy info
# MY_HTTPS_PROXY=https://192.168.1.XXX
# MY_HTTP_PROXY=http://192.168.1.XXX
# export HTTPS_PROXY=$MY_HTTPS_PROXY
# export HTTP_PROXY=$MY_HTTP_PROXY
################################################################
### Package Manager Install - CentOS 6 based
################################################################

# update of the package lists 
# optional step below 
# yum clean all
yum update -y

# install ansible
yum install ansible -y

################################################################
### PIP Installs
################################################################

# install pip
yum install python-pip -y

# upgrade pip
pip install --upgrade pip

# used for debugging ansible playbooks
pip install ansible-playbook-debugger 

# used for creating (sha-512) passwords with python
pip install passlib

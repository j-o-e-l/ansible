#!/bin/bash
################################################################
# Ansible pre-installation setup script for Fedora 23 / CentOS 7
# This script ensure that your controller system is configured
# to run ansible. Once this script is run, then next step is to
# use ansible to configure the controller system, and then any
# other systems.
################################################################
################################################################
### Package Manager Install - Fedora 23 / CentOS 7 based
################################################################

# update of the package lists 
# optional step below 
# sudo dnf clean all
sudo dnf update -y

# install ansible
sudo dnf install ansible -y

################################################################
### PIP Installs
################################################################

# install pip
sudo dnf install python-pip -y

# upgrade pip
sudo pip install --upgrade pip

# used for debugging ansible playbooks
sudo pip install ansible-playbook-debugger 

# used for creating (sha-512) passwords with python
sudo pip install passlib


#!/bin/bash
################################################################
# Ansible pre-installation setup script for Debian / Ubuntu
# This script ensure that your controller system is configured
# to run ansible. Once this script is run, then next step is to
# use ansible to configure the controller system, and then any
# other systems.
################################################################
################################################################
### Package Manager Install - Debian / Ubuntu based
################################################################

# update of the package lists 
sudo apt-get update

# add software-properties-common required for apt-add-repository
sudo apt-get install software-properties-common -y

# add the ansible repo
sudo apt-add-repository ppa:ansible/ansible -y 

# install ansible
sudo apt-get install ansible -y

# install redis for persistant caching of facts
sudo apt-get install redis-server -y

# start the redis service
sudo service redis-server start

################################################################
### PIP Installs
################################################################

# install pip
sudo apt-get install python-pip -y

# install redis for python
sudo pip install redis

# used for debugging ansible playbooks
sudo pip install ansible-playbook-debugger 

# used for creating (sha-512) passwords with python
sudo pip install passlib


################################################################
### Configure Ansible to use Redis
################################################################
if [ -f redis_ansible.cfg ]; then
	echo "[+] Copying redis_ansible.cfg to /etc/ansible/ansible.cfg"
	sudo cp redis_ansible.cfg /etc/ansible/ansible.cfg
	sudo chown root:root /etc/ansible/ansible.cfg
	sudo chmod 644 /etc/ansible/ansible.cfg
else
	echo ""
	echo "[!!!] ERROR: redis_ansible.cfg file not found!"
	echo ""
	echo "  [-] Warning: Please mannually edit /etc/ansible/ansible.cfg"
	echo "  [-] Warning: Comment out the following lines:"
	echo "    [-] Comment: gathering = implicit"
	echo "    [-] Comment: fact_caching = memory"
	echo ""
	echo "  [-] Warning: Add the following lines under the [defaults]:"
	echo "    [-] Add: gathering = smart"
	echo "    [-] Add: fact_caching = redis"
	echo "    [-] Add: fact_caching_timeout = 86400"
	echo "    [-] Add: fact_caching_connection = localhost:6379:0"
	echo ""
fi

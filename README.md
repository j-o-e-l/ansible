# Objective - Create a two systems, an Ansible controller, and a target. 

Before you begin you should start with two linux systems. For best results, you should use a virtual machine locally or Virtual Private Server (VPS) provider like Digital Ocean, Linode, or RackSpace. 

### Digital Ocean
Digital Ocean works great for this. If you don't have an account you can get a $10 credit, this will allow you to create these two machines needed for this guide and use them for a month for free. If you don't have an account, here is my referal code:  
[https://m.do.co/c/5c10ad3a8470](Digital Ocean $10 Code "Digital Ocean $10 Code")  
Your support encourages me to provide these guides, so please sign up.

If you are using Digial Ocean, select Fedora (23 x64), $5 / month, choose a datacenter near you, skip additional options, SSH keys are awesome (use them if you can), select 2 droplets, and name them the following (name them what you want, but to follow along with this guide, use these): **controller**, **target**.

If you did not use SSH keys, then Digital Ocean will email you your passwords. If you uploaded your key (and selected that key when configuring the machines), then no password gets emailed, and you can just ssh in to the machines as root. Skip the next step, and jump down to SSH to your controller.

### VMware or VirtualBox
If you want to setup your controller and target locally, you need to install the operating systems with virtual machine software like [VMware Workstation Player - formally known as VMware Player](http://www.vmware.com/products/player/) - you can get a 30 day free trial or pay $150, [Workstation Pro](http://www.vmware.com/products/workstation/) - you can get a 30 day free trial or pay $250 (however, look for student discounts on VMware products), or [VirtualBox](https://www.virtualbox.org/) - free & open source.

Getting the machines setup using a virtual machine is beyond the scope of this document. There are plenty of guides that should help you. 

## SSH to your controller (as root)
Now, ssh into your controller (as root):  

`$ ssh root@192.168.145.131`  
`The authenticity of host 192.168.145.131 (192.168.145.131) cant be established.`    
`ECDSA key fingerprint is 06:e0:e6:ed:37:ce:1c:af:a4:75:0b:0d:f3:d2:4c:81.`    
`Are you sure you want to continue connecting (yes no)? y`    
`Please type yes or no: yes`  
`Warning: Permanently added 192.168.145.131 (ECDSA) to the list of known hosts.`  
`root@192.168.145.131 password:`  
`[root@controller ~]# `  

## Getting Started

First, select the ansible_preinstallation_XXX.sh bash script that suits your operating system. 

- ansible_preinstallation_yum.sh - CentOS/RHEL 6, 7 and older versions of Fedora
- ansible_preinstallation_dnf.sh - CentOS/RHEL 7 and newer versions of Fedora (like Fedora 23)
- ansible_preinstallation_apt.sh - Debian / Ubuntu / Kali versions

The purpose of these scripts are to setup the most basic version of ansible on your system. These scripts assume that you are NOT `root` and you are using `sudo.` If you have logged in as root, you are going to have to modify these scripts slightly -- it is easy, just delete the word `sudo` everywhere you see it.

If everything worked, you should now have the things you need to use Ansible on your controller machine.

# Objective - Use Ansible to test the ssh connection, and show some variables.

# Objective - Use Ansible to configure the target with a playbook, and roles -- step-by-step.

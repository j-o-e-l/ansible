# Objective - Create a two systems, an Ansible controller, and a target. Then use Ansible to configure the target, step-by-step.

Before you begin you should start with two linux systems. For best results, you should use a virtual machine or VPS provider. 

### Digital Ocean
Digital Ocean works great for this. If you don't have an account they will give you a $10 credit, which will allow you to create these two machines and use them for a month for free. If you don't have an account, here is my referal code:  

[https://m.do.co/c/5c10ad3a8470](Digital Ocean $10 Code "Digital Ocean $10 Code")  

Your support encourages me to provide these guides, so please sign up.

If you are using Digial Ocean, select Fedora (23 x64), $5 / month, choose a datacenter near you, skip additional options, SSH keys are awesome (use them if you can), select 2 droplets, and name them the following (name them what you want, but to follow along with this guide, use these): **controller**, **target**.

If you did not use SSH keys, then Digital Ocean will email you your passwords.

### VMware or VirtualBox
If you want to setup your controller and target locally, you need to install the operating systems with virtual machine software like [VMware Workstation Player - formally known as VMware Player](http://www.vmware.com/products/player/) - you can get a 30 day free trial or pay $150, [Workstation Pro](http://www.vmware.com/products/workstation/) - you can get a 30 day free trial or pay $250 (however, look for student discounts on VMware products), or [VirtualBox](https://www.virtualbox.org/) - free & open source.

Getting the machines setup using a virtual machine is beyond the scope of this document. There are plenty of guides that should help you. 

## SSH to your controller (as root)


## Getting Started

First, select the ansible_preinstallation_XXX.sh bash script that suits your operating system. 

- ansible_preinstallation_yum.sh - CentOS/RHEL 6, 7 and older versions of Fedora
- ansible_preinstallation_dnf.sh - CentOS/RHEL 7 and newer versions of Fedora (like Fedora 23)
- ansible_preinstallation_apt.sh - Debian / Ubuntu / Kali versions

The purpose of these scripts are to setup the most basic version of ansible on your system.

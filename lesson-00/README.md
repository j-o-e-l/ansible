## LESSON-00
## Objective - SSH to your controller (as root)
Now, ssh into your controller (as root):  

`$ ssh root@192.168.145.131`  
`The authenticity of host 192.168.145.131 (192.168.145.131) cant be established.`    
`ECDSA key fingerprint is 06:e0:e6:ed:37:ce:1c:af:a4:75:0b:0d:f3:d2:4c:81.`    
`Are you sure you want to continue connecting (yes no)? y`    
`Please type yes or no: yes`  
`Warning: Permanently added 192.168.145.131 (ECDSA) to the list of known hosts.`  
`root@192.168.145.131 password:`  
`[root@controller ~]# `  

Now, ssh into your target (as root). We need to make sure everything is working. Ansible uses ssh to interact with machines.

`$ ssh root@192.168.145.132`  
`The authenticity of host 192.168.145.132 (192.168.145.132) cant be established.`    
`ECDSA key fingerprint is 06:e0:e6:ed:37:ce:1c:af:a4:75:0b:0d:f3:d2:4c:82.`    
`Are you sure you want to continue connecting (yes no)? y`    
`Please type yes or no: yes`  
`Warning: Permanently added 192.168.145.132 (ECDSA) to the list of known hosts.`  
`root@192.168.145.131 password:`  
`[root@controller ~]# `  

Great, now we can begin and we know that ssh is working correctly with a password using the root account.

## Getting Started

First, select the ansible_preinstallation_XXX.sh bash script that suits your operating system. 

- ansible_preinstallation_yum.sh - CentOS/RHEL 6, 7 and older versions of Fedora
- ansible_preinstallation_dnf.sh - CentOS/RHEL 7 and newer versions of Fedora (like Fedora 23)
- ansible_preinstallation_apt.sh - Debian / Ubuntu / Kali versions

The purpose of these scripts are to setup the most basic version of ansible on your system. These scripts assume that you are `root` and you are NOT using `sudo.` If you have not logged in as root, you are going to have to modify these scripts slightly -- it is easy, just add the word `sudo` in front of the commands, or become the root user.

If everything worked, you should now have the things you need to use Ansible on your controller machine.

# Objective - Use Ansible to test the ssh connection, and show some variables.
First you need a hosts file, create a directory called ansible, and edit a file called `hosts` and add the following (make sure to use the IP for your target machine):  
`[targets]`  
`192.168.145.132 	### target machine`   

Then, from the command line type the following:
```$ ansible -i hosts targets -m ping -k```  
This invokes the ansible program, the -i specifies the inventory file to use, *targets* directs the program to just work on the hosts under the header `[targets]`. Finally, the -m tells the ansible program to use the ping module. 

This ansible ping module, does not use ICMP, but ssh to connect to the hosts specified. If you forgot to connect before (or your host key is not in your ~/.ssh/known_hosts file, you should get prompted during this step.)

You should see the following output:

```
SSH password:  
192.168.145.132 | SUCCESS = {  
   	"changed": false,   
   	"ping": "pong"  
}
```
Great! Now, we can connect to the machine. Let's use a playbook, move to Lesson 01.
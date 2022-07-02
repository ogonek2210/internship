# Task5 #

1. Deploy three virtual machines in the Cloud. Install Ansible on one of them (control_plane):
   ## vm-ansible - 52.232.119.28 (ansible host) ##
   ## vm-server1 - 40.91.218.224 ##
   ## vm-server2 - 13.94.245.65 ##

*VM1:* 
![vm1](./images/Screenshot_1.jpg)

Step for installing ansible:

- sudo apt update
- sudo apt install ansible

Generate ssh key (*ssh-keygen -t ed25519 -C "key vm-ansible"*): 
![ssh-vm1](./images/Screenshot_2.jpg)

Copied the value of *~/.ssh/id_ed25519* file to the *~/.ssh/authorized_keys* on the azureuser@40.91.218.224 vm:
![check-vm1](./images/Screenshot_3.jpg)

![check-vm2](./images/Screenshot_4.jpg)

Changed the cd */etc/ansible.hosts*:
![hosts1](./images/Screenshot_5.jpg)

![hosts2](./images/Screenshot_6.jpg)

Run the playbook for installing the docker on two VMs: *ansible-playbook playbook.yml -l servers*
Results:
![hosts12](./images/Screenshot_7.jpg)

![hosts12withdocker](./images/Screenshot_8.jpg)

![vm-server-1](./images/Screenshot_9.jpg)

![vm-server-2](./images/Screenshot_10.jpg)
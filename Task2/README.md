# Task2 #

### I have created two VMs: ###
ServerA:
1. Private IP:  10.0.0.4 
2. Public IP: 20.119.203.63
3. OS: Linux (ubuntu 20.04)

![serverA](./images/Screenshot_10.jpg)

ServerB:
1. Private IP:  10.1.0.4 
2. Public IP: 20.230.172.43
3. OS: Linux (centos 7.9.2009)

![serverB](./images/Screenshot_11.jpg)

### I have created peering vnet-A-to-B for connecting different networks: ###

![peering](./images/Screenshot_1.jpg)

With the following properties:
![peering](./images/Screenshot_2.jpg)

Ping ServerA and ServerB:
![cheking connection](./images/Screenshot_3.jpg)

I have configured the Network security group for serverA and ServerB:
![serverB](./images/Screenshot_9.jpg)
![serverA](./images/Screenshot_12.jpg)

I have configured the SSH between serverA and ServerB:
![ssh1](./images/Screenshot_7.jpg)
![ssh2](./images/Screenshot_8.jpg)

### ***Optional task*** ### 
The web server Apache is added to the ServerB and I used for it **task.sh** script.

I am able to see the web page via my browser:
![local browser](./images/Screenshot_5.jpg)

I am able to see the web page via the serverA:
![serverA](./images/Screenshot_4.jpg)

### ***Optional (optional) task*** ### 
I created the storage account **task2storageaccount** containing my screenshot visible (public) on the internet for everyone:

https://task2storageaccount.blob.core.windows.net/task2/Screenshot_5.jpg

![screenshot](./images/Screenshot_6.jpg)

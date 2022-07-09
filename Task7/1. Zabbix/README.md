# Task 7 #

# Zabbix: # 

1. Installed on server, configure web and base using the 
 *docker-compose-server-zabbix.yaml*.
  
  Installed docker-compose on Ubuntu 20.04 (zibbix-server - 10.0.0.5):
   - *sudo apt-get install apt-transport-https ca-certificates curl  gnupg lsb-release*
   - *curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg*

   - *echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null*
  
   - *sudo apt-get update*
   - *sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose*
   - *sudo usermod -aG docker $USER*

![vm-zabbix1](./images/Screenshot_1.jpg)

![vm-zabbix2](./images/Screenshot_2.jpg)

2. Prepare VM or instances (vm1 - IP 10.0.0.4 and vm2 - IP 10.0.0.6):

![vm1](./images/Screenshot_3.jpg)

![vm2](./images/Screenshot_10.jpg)

3. Install Zabbix agents on previously prepared servers or VM:
   - *sudo apt-get update*
   - *sudo apt install zabbix-agent*
   - *vi /etc/zabbix/zabbix_agentd.conf*
   - *sudo systemctl restart zabbix-agent.service*
   
   ![vm13](./images/Screenshot_4.jpg)

4. Make several of your own dashboards, where to output data from your host/vm/container (one of them):
   ![vm-zabbix-4-1](./images/Screenshot_7.jpg)

   ![vm-zabbix-4-2](./images/Screenshot_8.jpg)

   ![vm-zabbix-4-3](./images/Screenshot_9.jpg)

   ![vm-1-4](./images/Screenshot_6.jpg)

5. Active check vs passive check - use both types:
   
   ![vm-1-5](./images/Screenshot_11.jpg)

   Latest data from VM1 using the active agent with the following configuration:
   
   ![vm-1-5-1](./images/Screenshot_14.jpg)

   ![vm-1-5-2](./images/Screenshot_15.jpg)


   ![vm-1-5-3](./images/Screenshot_12.jpg)

   Latest data from VM2 using the the passive agent with the following configuration:

   ![vm-2-5-1](./images/Screenshot_16.jpg)

   ![vm-2-5-2](./images/Screenshot_13.jpg)

6. Make an agentless check of any resource (ICMP ping)
7. Provoke an alert - and create a Maintenance instruction
8. Set up a dashboard with infrastructure nodes and monitoring of hosts and software installed on them

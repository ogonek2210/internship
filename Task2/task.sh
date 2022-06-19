#!/bin/bash

echo "#########################################################"
echo "#### Running apt-get update and apt-get upgrade #########"
echo "#########################################################"

echo
echo
sudo apt-get update -y && apt-get upgrade -y
echo
echo
echo "#########################################################"
echo "############# Installing Apache2 ########################"
echo "#########################################################"
echo
echo
sudo apt-get install apache2 -y
echo "Apache2 installed successfully"
sudo service apache2 status -q
echo
echo
sudo chmod -R 777 /var/www/html
file="/var/www/html/index.html"
echo "<html><head><title>Task2" >> $file
echo "</title></head><body>" >> $file

echo "Hello world" >> $file
echo "<h1>General system information for host $(hostname -s)</h1>" >> $file
echo "" >> $file

echo "<h1>OS version</h1>" >> $file
echo "<pre> $(uname -a) </pre>" >> $file

echo "<h1>Free disk space:</h1>" >> $file
echo "<pre> $(df -h) </pre>" >> $file

echo "<h1>Free/used memory in the system:</h1>" >> $file
echo "<pre> $(free -m) </pre>" >> $file

echo "<h1>Show all running processes:</h1>" >> $file
echo "<pre> $(ps -l) </pre>" >> $file

echo "<center>Information generated on $(date)</center>" >> $file
echo "</body></html>" >> $file



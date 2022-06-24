#! /bin/bash

sudo apt-get update -y
sudo apt-get install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

file="/var/www/html/index.html"
echo "<h1>Hello World</h1>" | sudo tee  /var/www/html/index.html
echo "" | sudo tee -a /var/www/html/index.html
echo "<h1>OS version</h1>" | sudo tee -a /var/www/html/index.html
echo "<pre> $(uname -a) </pre>" | sudo tee -a /var/www/html/index.html

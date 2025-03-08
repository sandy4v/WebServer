#!/bin/bash
#This script initializes a Installs a WebServer, starts the service and creates a dummy index.html to display to the user.
sudo yum update -y
sudo yum install -y httpd.x86_64
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
sudo echo "Hello world from $(hostname -f). Created by USERDATA in Terraform." > /var/www/html/index.html

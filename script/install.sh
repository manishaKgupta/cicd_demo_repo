#!/bin/bash
sudo yum update -y 
sudo yum install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
sudo yum install php php-fpm php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y

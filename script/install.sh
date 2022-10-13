#!/bin/bash
sudo yum update -y 
sudo amazon-linux-extras install epel -y
sudo yum install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
sudo yum install php php-fpm php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y
sudo chmod 600 /home/ec2-user/deploy_code_artifacts/script/stop.sh
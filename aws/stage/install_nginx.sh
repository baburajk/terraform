#!/bin/bash
sudo yum install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
sudo echo 'System information ' >> /usr/share/nginx/html/home.html
sudo curl -v http://169.254.169.254/latest/meta-data/local-ipv4 >> /usr/share/nginx/html/home.html
sudo curl -v http://169.254.169.254/latest/meta-data/public-hostname >> /usr/share/nginx/html/home.html
sudo systemctl reload nginx

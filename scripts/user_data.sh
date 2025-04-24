#!/bin/bash

apt update
apt -y upgrade
apt install -y python3
mkdir -p /var/www/html
echo "<h1>Hello from my Terraform EC2 instance!</h1>" > /var/www/html/index.html
cd /var/www/html
nohup python3 -m http.server 80 &


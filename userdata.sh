#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y

sudo systemctl start apache2
sudo systemctl enable apache2

PUBLIC_IP=$(curl -s http://checkip.amazonaws.com)

if [ -z "$PUBLIC_IP" ]; then
  PUBLIC_IP="Public IP not available"
fi

echo "Hello from instance: ${PUBLIC_IP}" | sudo tee /var/www/html/index.html

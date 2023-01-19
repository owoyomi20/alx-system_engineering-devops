#!/usr/bin/env bash
# Configure a new ubuntu machine

sudo apt-get update
sudo apt-get install -y nginx
sudo sed -i "52i\add_header X-Served-By $HOSTNAME always;" /etc/nginx/sites-available/default
sudo service nginx start

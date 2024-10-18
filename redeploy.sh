#!/bin/bash

cd /root/projects/blog

sleep 5

git pull origin main

mkdocs build

# Move the built files to the new directory accessible by Nginx
sudo rm -rf /var/www/blog/*
sudo cp -r site/* /var/www/blog/

sudo chown -R www-data:www-data /var/www/blog
sudo chmod -R 755 /var/www/blog

sudo systemctl restart nginx

echo "Blog redeployed successfully!"
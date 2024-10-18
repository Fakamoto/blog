#!/bin/bash

cd /root/projects/blog

git pull

mkdocs build

sudo systemctl restart nginx

echo "Blog redeployed successfully!"
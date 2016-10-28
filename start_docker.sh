#!/bin/bash

rm .env

echo 'Creating local alias for docker ip address, sudo password required.'
sudo ifconfig lo0 alias 172.31.31.1

echo 'setting ENV'
echo "HOST_IP=172.31.31.1" | tee -a .env

echo 'building nginx'
docker-compose build nginx

echo 'spinning up docker'
docker-compose up

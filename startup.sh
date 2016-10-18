#!/bin/bash

# Ensure we have an alias for the loopback interface
sudo ifconfig lo0 alias 172.31.31.1
# Run our docker
docker-compose up
# Clean up when we are done
sudo ifconfig lo0 -alias 172.31.31.1


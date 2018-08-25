#!/bin/bash -e
sudo curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo systemctl enable docker

#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
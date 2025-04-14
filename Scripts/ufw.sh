#!/bin/bash

# By: John O'Raw
# Date: 24MAR25
# Function: Install and configure firewall
# Script: firewall.sh

sudo apt install ufw
sudo apt-get install net-tools
sudo ufw status verbose
sudo ufw app list
sudo ufw allow OpenSSH
sudo ufw status
sudo ufw enable
sudo ufw status verbose

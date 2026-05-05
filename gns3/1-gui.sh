#!/bin/bash
# By: John O'Raw
# Date: 18DEC25
# Function: Add a GUI to UB2204 server
# Script: 1-gui.sh

sudo apt install xfce4 -y
sudo apt install xrdp -y
sudo ufw allow 3389/tcp
sudo systemctl enable xrdp
sudo systemctl restart xrdp

echo "Now test if you can RDP into this server!"

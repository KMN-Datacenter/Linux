#!/bin/bash
# By: John O'Raw
# Date: 18DEC25
# Function: Add github desktop to UB2204 server
# Script: 4-github.sh

wget -qO - https://mirror.mwt.me/shiftkey-desktop/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/mwt-desktop.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/mwt-desktop.gpg] https://mirror.mwt.me/shiftkey-desktop/deb/ any main" > /etc/apt/sources.list.d/mwt-desktop.list'
sudo apt update
sudo apt install github-desktop -y
sudo apt install gh -y



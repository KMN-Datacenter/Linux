#!/bin/bash
# By: John O'Raw
# Date: 18DEC25
# Function: Add a Chrome to UB2204 server
# Script: chrome.sh

sudo apt-get install fonts-liberation
sudo apt install xdg-utils -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

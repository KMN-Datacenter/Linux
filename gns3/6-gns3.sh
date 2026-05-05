#!/bin/bash
# By: John O'Raw
# Date: 18DEC25
# Function: Add gns3 to UB2204 server
# Script: 6-gns3.sh.sh

sudo add-apt-repository ppa:gns3/ppa
sudo apt update                                
sudo apt install gns3-gui gns3-server -y

#!/bin/bash
# By: John O'Raw
# Date: 18DEC25
# Function: First actions on new UB2204 server
# Script: 0-all.sh

sudo apt update
sudo apt upgrade -y
sudo apt install openssh-server -y

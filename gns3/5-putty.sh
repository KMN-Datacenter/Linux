#!/bin/bash
# By: John O'Raw
# Date: 18DEC25
# Function: Add Putty to UB2204 server
# Script: 5-putty.sh

sudo add-apt-repository universe
sudo apt update
sudo apt install -y putty

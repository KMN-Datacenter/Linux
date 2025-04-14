#!/bin/bash

# By: John O'Raw
# Date: 24MAR25
# Function: Join a domain
# Script: join_domain.sh

sudo apt update
sudo apt upgrade -y
sudo apt install sssd-ad sssd-tools realmd adcli
sudo pam-auth-update --enable mkhomedir
getent passwd john.oraw@letterkenny.ads.kmn.ie
# Join Domain
sudo realm join letterkenny.ads.kmn.ie
getent passwd john.oraw@letterkenny.ads.kmn.ie
ls -l
# Test and Document
sudo more /etc/sssd/sssd.conf

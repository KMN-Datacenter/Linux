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





----------------------------------------------------------
# By Harman Singh
# Date: 28Sep26
# Function: Join a domain
# Script: join_domain.sh

sudo apt update
sudo apt install -y \
sssd-tools \
sssd \
libnss-sss \
libpam-sss \
adcli \
samba-common-bin

# Check that the domain can be discovered
realm discover letterkenny.ads.kmn.ie

# Join the domain
sudo realm join letterkenny.ads.kmn.ie

# Confirm domain membership
realm list

# Enable automatic home-directory creation for AD users
sudo pam-auth-update --enable mkhomedir

# Test that Ubuntu can resolve your AD user
getent passwd 'harman.singh@letterkenny.ads.kmn.ie'

# Check SSSD
systemctl status sssd --no-pager


# View generated SSSD configuration
sudo cat /etc/sssd/sssd.conf






## Configure DNS for Active Directory
# Active Directory relies on DNS to locate Domain Controllers and services such as Kerberos and LDAP. Configure the Ubuntu server to use the internal Active Directory DNS server.

# Configure DNS for Active Directory
sudo nano /etc/systemd/resolved.conf

# Add the AD DNS server and domain
[Resolve]
DNS=172.28.35.1
Domains=letterkenny.ads.kmn.ie

# Restart DNS resolver to apply the changes
sudo systemctl restart systemd-resolved

# Verify DNS configuration
resolvectl status

# Test Active Directory domain DNS resolution
nslookup letterkenny.ads.kmn.ie

# Test that LDAP/Domain Controller records can be resolved
nslookup -type=SRV _ldap._tcp.letterkenny.ads.kmn.ie

# Test that Kerberos authentication records can be resolved
nslookup -type=SRV _kerberos._tcp.letterkenny.ads.kmn.ie



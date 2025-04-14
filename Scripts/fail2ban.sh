#!/bin/bash

# By: John O'Raw
# Date: 24MAR25
# Function: Set up fail2ban
# Script: fail2ban.sh

sudo apt-get install rsyslog
sudo systemctl enable rsyslog
sudo systemctl start rsyslog
sudo apt update
sudo apt install fail2ban -y
fail2ban-client --version
systemctl status fail2ban.service
more /etc/fail2ban/jail.conf
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
sudo tail -f /var/log/fail2ban.log

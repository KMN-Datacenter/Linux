#!/bin/bash

# By: JOR
# Date: 22MAR25
# Function: What to do first on all Ubuntu servers
# Script: first.sh

sudo apt update
sudo apt upgrade -y
sudo apt install dnsutils -y
sudo apt install iputils-ping -y
sudo apt install net-utils -y
sudo apt install nano -y
sudo apt get openssh-server -y



echo 'Installing SNMP, edit conf file before use'
sudo apt install snmpd snmp libsnmp-dev
# Backup original
cp /etc/snmp/snmpd.conf /etc/snmp/snmpd.bak
# Copy minimalist file
cp ./snmpd.conf /etc/snmp/snmpd.conf

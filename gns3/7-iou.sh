#!/bin/bash
# By: John O'Raw
# Date: 18DEC25
# Function: Add IOU support to GNS3 
# Script: 6-iou.sh

sudo dpkg --add-architecture i386
sudo apt update
sudo apt install gns3-iou -y


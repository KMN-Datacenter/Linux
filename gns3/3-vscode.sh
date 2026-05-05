#!/bin/bash
# By: John O'Raw
# Date: 18DEC25
# Function: Add VSCode to UB2204 server
# Script: 3-vscode.sh

echo "Careful, this link may change, might be better to go via browser?"
read -p "Press return to continue"

wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo apt install ./code_1.105.1-1760482543_amd64.deb

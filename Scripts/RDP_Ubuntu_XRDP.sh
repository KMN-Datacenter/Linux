# By Harman Singh
# Date: 30Sep26
# Function: RDP access to the Ubuntu Desktop
# Script: RDP_Ubuntu_XRDP.sh


# Install XRDP
sudo apt update
sudo apt install -y xrdp

# Enable XRDP to start automatically
sudo systemctl enable xrdp

# Start XRDP
sudo systemctl start xrdp

# Confirm XRDP is running
systemctl status xrdp --no-pager

# Confirm RDP port 3389 is listening
sudo ss -lntp | grep 3389

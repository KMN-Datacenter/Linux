echo 'Installing LLDP, edit conf file before use'

sudo apt-get install -y lldpd
lldpad -d
# Copy minimalist file
cp ./lldpd.conf /etc/lldpd.d/lldpd.conf

# Startup service and test
sudo systemctl enable lldpd
sudo systemctl start lldpd
sudo systemctl status lldpd

# Now verify functionality
lldpcli show neighbors

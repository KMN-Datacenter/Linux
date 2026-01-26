echo 'Installing LLDP, edit conf file before use'

sudo apt-get install -y lldpd
lldpad -d
# Copy minimalist file
cp ./lldpd.conf /etc/lldpd.d/lldpd.conf

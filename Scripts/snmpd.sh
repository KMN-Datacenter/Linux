echo 'Installing SNMP, edit conf file before use'
sudo apt install snmpd snmp libsnmp-dev
# Backup original
cp /etc/snmp/snmpd.conf /etc/snmp/snmpd.bak
# Copy minimalist file
cp ./snmpd.conf /etc/snmp/snmpd.conf

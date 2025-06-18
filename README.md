# Linux
 Configuration information for Linux servers.

 This folder contains scripts for Linux configuration information. 

 Full documentation will be in a Gitbook document at

 - first.sh               What to do first on all servers
 - hardwareinfo.sh        Verify hardware and document
 - batch_users.sh         Create local admins with sudo
 - directories.sh         Simple script to create user directories etc on first login
 - lldp.sh                Allow LLDP to<->from network
 - ufw.sh                 Activate firewall and allow SSH
 - join_domain            Join a domain for non admin users.

 - issue.net              Message to all users on SSH login, copy to /etc, edit /etc/ssh/sshd_config to make active.

## Admin accounts
1. Any account in the form *firstnamesurname* is a local admin account and requires a strong password.
2. You may enable desktop access when the server is being commissioned. 

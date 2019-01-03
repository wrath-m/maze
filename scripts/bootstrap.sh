#!/bin/bash

#Allow password authentication
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config && sudo systemctl restart sshd

#Install Python2.7
sudo apt install python -y --force-yes

#Clean apt list and update cache - resolve apt permission denied bug
sudo rm /var/lib/apt/lists/* -vf
sudo apt update

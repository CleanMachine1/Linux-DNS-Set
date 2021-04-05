#!/bin/bash

sudo apt update && sudo apt install resolvconf -y
sudo systemctl enable resolvconf.service && sudo systemctl start resolvconf.service
read -p "Enter DNS IP Primary: " ip1
echo "nameserver $ip1" > /etc/resolvconf/resolv.conf.d/head
sudo systemctl restart resolvconf.service
sudo resolvconf --enable-updates
sudo resolvconf -u

echo "If you need to add another DNS IP"
echo "Type in the Input Section"
echo "OR type 'exit' if you don't"
read -p "Input: " ans
if [ $ans = "exit" ]; then
    exit
else 
    sudo echo "nameserver $ans" >> /etc/resolvconf/resolv.conf.d/head
    sudo systemctl restart resolvconf.service
    sudo resolvconf --enable-updates
    sudo resolvconf -u

fi
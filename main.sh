#!/bin/bash

sudo apt update > /dev/null && sudo apt install resolvconf -y > /dev/null
sudo systemctl enable resolvconf.service > /dev/null && sudo systemctl start resolvconf.service > /dev/null
read -p "Enter DNS IP Primary: " ip1
echo "nameserver $ip1" > /etc/resolvconf/resolv.conf.d/head
sudo systemctl restart resolvconf.service > /dev/null 
sudo resolvconf --enable-updates > /dev/null 
sudo resolvconf -u > /dev/null 

echo "\n\nIf you need to add another DNS IP"
echo "\nType in the Input Section"
echo "\nOR type 'exit' if you don't"
read -p "Input: " ans
if [ $ans = "exit" ]; then
    exit
else 
    sudo echo "nameserver $ans" >> /etc/resolvconf/resolv.conf.d/head
    sudo systemctl restart resolvconf.service > /dev/null 
    sudo resolvconf --enable-updates > /dev/null 
    sudo resolvconf -u > /dev/null 

fi
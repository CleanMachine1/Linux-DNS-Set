#!/bin/bash
echo "This script was made by CleanMachine1"
echo "There may seem to be nothing happening at parts"
echo "However there are things happening!"
sleep 3
sudo apt update > /dev/null && sudo apt install resolvconf -y > /dev/null
sudo systemctl enable resolvconf.service > /dev/null && sudo systemctl start resolvconf.service > /dev/null
read -p "Enter DNS IP Primary: " ip1
echo "nameserver $ip1" > /etc/resolvconf/resolv.conf.d/head
sudo systemctl restart resolvconf.service > /dev/null 
sudo resolvconf --enable-updates > /dev/null 
sudo resolvconf -u > /dev/null 

echo "If you need to add another DNS IP \n"
echo "Type in the Input Section \n"
echo "OR type 'exit' if you don't"
read -p "Input: " ans
if [ $ans = "exit" ]; then
    exit
else 
    sudo echo "nameserver $ans" >> /etc/resolvconf/resolv.conf.d/head
    sudo systemctl restart resolvconf.service > /dev/null 
    sudo resolvconf --enable-updates > /dev/null 
    sudo resolvconf -u > /dev/null 

fi
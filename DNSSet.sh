#!/bin/bash
sudo apt install cowsay -y
clear
/usr/games/cowsay -f tux "This script was made by CleanMachine1"
sleep 1
echo " "
echo " "
sudo apt update > /dev/null && sudo apt install resolvconf -y > /dev/null
clear
sudo systemctl enable resolvconf.service > /dev/null && sudo systemctl start resolvconf.service > /dev/null
clear
/usr/games/cowsay -f tux "This script was made by CleanMachine1"
echo "Step 2"
echo " "
echo " "
read -p "Enter DNS IP Primary: " ip1
echo "nameserver $ip1" > /etc/resolvconf/resolv.conf.d/head
clear
sudo systemctl restart resolvconf.service > /dev/null 
clear
sudo resolvconf --enable-updates > /dev/null 
clear
sudo resolvconf -u > /dev/null 
clear
/usr/games/cowsay -f tux "This script was made by CleanMachine1"
echo "Step 3"
echo ""
echo ""
echo "If you need to add another DNS IP"
echo "Type in the Input Section "
echo "OR type 'exit' if you don't"
read -p "Input: " ans
if [ $ans = "exit" ]; then
    exit
else 
    sudo echo "nameserver $ans" >> /etc/resolvconf/resolv.conf.d/head
    clear
    sudo systemctl restart resolvconf.service > /dev/null 
    clear
    sudo resolvconf --enable-updates > /dev/null 
    clear
    sudo resolvconf -u > /dev/null 
    clear
fi

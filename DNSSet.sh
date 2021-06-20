#!/bin/bash

clear -x

if [[ $(echo $USER) != "root" ]]; then
  echo "You have started this script without using root access"
  sleep 0.5
  echo "The command you used needs to have a sudo"
  sleep 4
  echo "Exiting, please re-run with sudo or as root"
  sleep 2
  exit
fi 

if ! command -v /usr/games/cowsay >/dev/null; then
    echo "Installing cowsay" 
    sudo apt install cowsay -y >/dev/null

fi

if ! command -v resolvconf >/dev/null; then
    echo "Installing resolvconf"
    sudo apt install resolvconf -y >/dev/null
fi



/usr/games/cowsay -f tux "This script was made by CleanMachine1"
echo " "
echo " "
echo "Scroll up at any point to see outputs of commands"
sleep 1
echo " "
echo " "
clear -x
sudo systemctl enable resolvconf.service > /dev/null && clear -x && sudo systemctl start resolvconf.service > /dev/null
clear -x
/usr/games/cowsay -f tux "This script was made by CleanMachine1"
echo "Step 2"
echo " "
echo " "
read -p "Enter DNS IP Primary: " ip1
sudo dd if=/dev/null of=/etc/resolvconf/resolv.conf.d/head
echo "nameserver $ip1" | sudo tee /etc/resolvconf/resolv.conf.d/head
clear -x
sudo systemctl restart resolvconf.service > /dev/null 
clear -x
sudo resolvconf --enable-updates > /dev/null 
clear
sudo resolvconf -u > /dev/null 
clear -x
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
    echo "nameserver $ans" | sudo tee -a /etc/resolvconf/resolv.conf.d/head
    clear -x
    sudo systemctl restart resolvconf.service > /dev/null 
    clear -x
    sudo resolvconf --enable-updates > /dev/null 
    clear -x
    sudo resolvconf -u > /dev/null 
    clear -x
fi

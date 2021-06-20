# Linux-DNS-Set

## __Installation and Usage__

Open a terminal - Type the following commands (Or copy) -

```bash
wget https://raw.githubusercontent.com/CleanMachine1/Linux-DNS-Set/master/DNSSet.sh

sudo chmod +x DNSSet.sh

sudo ./DNSSet.sh

```

## Overview

This script simplifies changing DNS server on a Linux machine.

This saves having to try and find a guide online or run loads of commands.

Although there maybe GUI alternatives, this simple script WORKS and thats all that matters.

## What it uses

resolvconf to set the DNS

systemctl to start it

sudo to make changes and write to specific files

cowsay to make the friendly Tux at the top

## __Removal__

Whilst I am sure you could remove resolvconf, it is probably a dependency for something.

The best option is to run the command again and for default use 127.0.0.1 or for a reliable DNS use something like Google (8.8.8.8 & 8.8.4.4) or CloudFlare (1.1.1.1)

## Warning

This script is not a toy and should be treated with respect or you could end up unable to connect to internet

Please note that this script may seem to be stopped as it installs the required packages.
Also it clears after each stage to clean the terminal.

__If you do make any mistakes, run the script again then enter your DNS server you want, if you want default, enter 127.0.0.1 then exit at the next prompt.__

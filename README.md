## <b>Installation</b>

Open a terminal - Type the following commands (Or copy) -
```
wget https://raw.githubusercontent.com/CleanMachine1/Linux-DNS-Set/master/DNSSet.sh

sudo chmod +x DNSSet.sh

sudo ./DNSSet.sh

```

<details>
<summary>Why do I need Sudo</summary>
due to the files being in /etc/ they often require root access, this means this script will not work if you don't have access to sudo or root
</details>

## Overview

This script simplifies changing DNS server on a Linux machine.

This saves having to try and find a guide online or run loads of commands.

Although there maybe GUI alternatives, this simple script WORKS and thats all that matters.

## What it uses 

resolvconf to set the DNS
systemctl to start it
sudo to access the needed files
Cowsay to make the friendly Tux at the top

## Warning

This script is not a toy and should be treated with respect or you could end up unable to connect to internet

Please note that this script may seem to be stopped as it installs the required packages.
Also it clears after each stage to clean the terminal.
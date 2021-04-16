## <b>Installation and Usage</b>

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

## <b>Removal</b>

There isn't really a way to uninstall (if you can find one please inform me), however running the script again and entering 127.0.0.1 as the IP should revert to using what your network says to use.

You may just want to consider just changing it to 8.8.8.8 and 8.8.4.4 (Google Public DNS)
as this is a pretty good DNS server to use.

However the DNSSet.sh script can be removed at any time and reinstalled without any consequences, although unless reinstalled you or you are confident with the command line, you wont be able to change your DNS easily like this script

## Warning

This script is not a toy and should be treated with respect or you could end up unable to connect to internet

Please note that this script may seem to be stopped as it installs the required packages.
Also it clears after each stage to clean the terminal.

<b> If you do make any mistakes, run the script again then enter your DNS server you want, if you want default, enter 127.0.0.1 then exit at the next prompt. </b>
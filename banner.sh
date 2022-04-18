#!/bin/bash
echo > /etc/motd

if ping -c 1 8.8.8.8 &> /dev/null
then
  INTERNET=$(echo "connected")
else
  INTERNET=$(echo "not connected")
fi

FILE="/etc/motd"
HOSTNAME=$(hostname)
KERNELRELEASE=$(uname -r)

printf "%-16s%-42s\n" "Hostname:" "$HOSTNAME" >>$FILE
printf "%-16s%-42s\n" "Kernel release:"	   "$KERNELRELEASE" >>$FILE
printf "%-16s%-42s\n" "INTERNET:" 	   "$INTERNET" >>$FILE
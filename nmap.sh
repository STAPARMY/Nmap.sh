#!/bin/bash
echo
#apt update
#apt install nmap -y
clear
echo -e "▒█▄░▒█ █▀▀ ▀▀█▀▀ \e[91m▒█▀▀▀█ █▀▀ █▀▀█ █▀▀ "
echo -e "▒█▒█▒█ █▀▀ ░░█░░ \e[91m░▀▀▀▄▄ █░░ █▄▄█ █░░█"
echo -e "▒█░░▀█ ▀▀▀ ░░▀░░ \e[91m▒█▄▄▄█ ▀▀▀ ▀░░▀ ▀░░▀"
echo
ifconfig

echo -e "\e[92mEnterTergetIP:"
read ip

echo -e "\e[92mEnterTergetPort:"
read port

echo -e "\e[92mSelect scanning :
1 Tcp :
2 Tcp sys:
3 ping:
4 FIN :
5 Xmas :
6 UDP :
7 ACK :"
echo
read st

if [ $st -eq 1 ]
then
   nmap -sT -vv $ip -p $port
elif [ $st -eq 2 ]
then
   nmap -sS -vv $ip -p $port
elif [ $st -eq -3 ]
then
   nmap -sP -vv $ip -p $port
elif [ $st -eq 4 ]
then
   nmap -sF -vv $ip -p $port
elif [ $st -eq 5 ]
then
   nmap -sN -vv $ip -p $port
elif [ $st -eq 6 ]
then
   nmap -sU -vv $ip -p $port
elif [ $st -eq 7 ]
then
   nmap -sA -vv $ip -p $port
fi

echo "thank you"

@echo off
:a
Set /p comm=cmd~
%comm%
Goto a

//ICMP內網探測
for /L %I in (1,1,254) DO @ping -w -1 -n 1 172.16.31.%I |findstr "TTL="
//

// arp -t 192.168.1.0/24

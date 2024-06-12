@echo off
:a
Set /p comm=cmd~
%comm%
Goto a

//ICMP內網探測
for /L %I in (1,1,254) DO @ping -w -1 -n 1 172.16.31.%I |findstr "TTL="
//
for /F %i in (dcs.txt) do @echo [+] Querying DC %i && @netsess -h %i 2>null > sessions.txt && for /F %a in (admin.txt) DO @type session.txt | @findstr /I %a

// arp -t 192.168.1.0/24

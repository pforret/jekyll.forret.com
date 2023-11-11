---
id: 430
title: Installing NTP (time synchronisation)
date: 2005-05-19T15:09:00+02:00
author: Peter
layout: post
guid: /2005/05/installing-ntp-time-synchronisation/
permalink: /2005/05/19/installing-ntp-time-synchronisation/
categories:
  - Linux
tags:
  - Linux
  - ntp
  - synchronisation
  - time
---
**Set timezone (optional)** 
:   create symbolical link from `/usr/share/zoneinfo/...` to `/etc/localtime`:  
    `ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime` 

**Set UTC mode (optional)** 
:   if your hardware clock runs in [UTC (Universal Coordinated Time)](http://www.worldtimeserver.com/current_time_in_UTC.aspx) mode, add  
    `UTC=true`  
    to the `/etc/sysconfig/clock` file

**Make sure `ntpd` is not running** 
:   Use `service ntpd stop` to stop it. 

Choose the **NTP server** you will get your time from 
:   it can be an internal server that has the NTP service open for clients, or an [public NTP server](http://ntp.isc.org/bin/view/Servers/StratumTwoTimeServers). To be sure, use 2 servers. To check if you can access it, run `ntpdate timeserver.ntp.ch` 

**Edit the `/etc/ntp.conf` file** 
:   Rename the current file to `ntp.bak.conf` and make a small new one:  
    `restrict default ignore<br />
server   timeserver.ntp.ch  # Swiss time<br />
server ntp.ucsd.edu       # Univ of California, San Diego<br />
restrict timeserver.ntp.ch mask 255.255.255.255 nomodify notrap noquery<br />
restrict ntp.ucsd.edu      mask 255.255.255.255 nomodify notrap noquery<br />
server  127.127.1.0     # local clock<br />
fudge   127.127.1.0 stratum 10 #so it only takes over if the rest fails<br />
restrict 127.0.0.1  driftfile /etc/ntp/drift broadcastdelay  0.008  authenticate no` 

**Set your system clock right** 
:   Run the following command a couple of times:  
    `ntpdate -u timeserver.ntp.ch # or whatever server you want to use`  
    You will see the initial diffence in time go away afer the 2nd or 3rd time. 

**Set hardware clock** 
:   `/sbin/hwclock --systohc` 

**Run the `ntpd` daemon** 
:   `service ntpd start` 

**Add `ntpd` to the services started at boot time** 
:   `chkconfig ntpd on`

**Check the NTP results** 
:   `ntpd -p`  
    will show you what the difference is between your clock and that of the servers you added. You are looking for lines like  
    `<br />
remote           refid      st t when poll reach   delay   offset  jitter<br />
==========================================================================<br />
LOCAL            LOCAL      10 l   30   64  377    0.000    0.000   0.004 *<br />
192.168.246.107 192.168.246.88   3 u  41  128  177 0.313    5.598   0.345`  
    and not lines like  
    `<br />
remote           refid      st t when poll reach   delay   offset  jitter<br />
==========================================================================<br />
192.168.246.126 LOCAL        11 u   37  128  375    0.204  6082.02 6069.84`  
    Jitter is too high!
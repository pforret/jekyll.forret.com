---
id: 375
title: 'Netgear SC101: crappy storage'
date: 2006-07-10T13:21:09+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/07/netgear-sc-101-urgent-support-required/
permalink: /2006/07/10/netgear-sc-101-urgent-support-required/
categories:
  - hardware
tags:
  - disk
  - external
  - iomega
  - lacie
  - maxtor
  - netgear
  - raid
  - sc101
  - storage
  - USB
---
_UPDATE: also read my post about testing the [Netgear ReadyNAS](http://blog.forret.com/2008/04/netgear-readynas-nas-done-right/) (it doesn&#8217;t suck)_  
[<img  style="float: right; margin: 5px" src="http://static.flickr.com/76/186292024_d2a830f4c7_m.jpg" alt="Storage porn" width="240" height="180" />](http://www.flickr.com/photos/pforret/186292024/ "Photo Sharing")

In my continuing quest for more and better storage, I have taken the following path:

  * Maxtor 5000DV, 120GB USB/Firewire, bought in 2003. Was dependable for 3 years (warranty period: 2 years) but has crashed a couple of times since (with data loss)
  * LaCie Porsche, 160GB USB, bought in 2004. Worked OK for 2 years (warranty period: 2 years) but has crashed a couple of times since (with data loss)
  * Iomega Desktop hard drive, 250GB 100Mb Ethernet, bought in 2005. Hasn&#8217;t broken down yet, but makes way too much noise (loud ventilator, running continuously).
  * Netgear SC-101, 2x300GB Ethernet, bought in 2006. Supports RAID-1 mirroring, which I needed after all my hard disk crashes. For my less-than-optimal experience, read on.

<!--more-->

### Netgear/Zetera

[<img  style="float: right" src="http://static.flickr.com/44/146967665_03c2c8ea19_m.jpg" alt="Netgear Zetera, 2 x 300GB" width="180" height="240" />](http://www.flickr.com/photos/pforret/146967665/ "Photo Sharing")  
I bought the Netgear/Zetera device after positive reviews on sites like [infoworld.com](http://www.infoworld.com/article/05/08/01/31FEinnovator3_1.html). The Zetera software converts network-attached drives into virtual SCSI drives that can be mirrored (RAID-1) or spanned (not striped). In theory, one could put, say, 4 devices in a network with 2 x 500GB each and have a 4TB spanned T: drive.

So, I buy it with 2 x 300GB drives, pop them into the toaster, start it up, and create 2 virtual drives: 1 mirrored 200GB drive &#8220;MIRROR&#8221; for my music (backup of my CDs and a lot of podcasts) and the rest into a 180GB spanned volume &#8220;MOVIES&#8221;. First surprise: the Zetera software requires a (Windows only) driver on each computer that will access the data. I run 2 Windows machines, so that&#8217;s not really an issue, but if you&#8217;re on MacOSX, you would need 1 Windows station to manage the Netgear data and expose as a regular SMB volume: meaning double network traffic for each write/read operation. This is what my Netgear GUI shows: 10 new IP addresses.  
[<img  src="http://static.flickr.com/53/147855506_94cacda94f.jpg" alt="Netgear IP addresses" width="500" height="203" />](http://www.flickr.com/photos/pforret/147855506/ "Photo Sharing")

I then start copying my music and movies over to the new drive. Copying 200GB of data at [45GB/h max (or some 30GB/h realisticly)](http://web.forret.com/tools/bandwidth.asp?speed=100&unit=Mbps&title=Fast+Ethernet+%5BLAN%5D): it took a while, but at least my data is safe. Or so I thought. Every time you start the GUI, a popup appears with &#8220;Do you want to look for upgrades?&#8221;. At some point I&#8217;m thinking, &#8220;Hey, why not&#8221; So I upgrade the drivers on my desktop, and my laptop. Bad idea. To my amazement, I only have one drive anymore: &#8220;MOVIES&#8221;. The MIRROR drive has disappeared. I rerun the utility to attach all drives: &#8220;No drives available to attach&#8221;. This is where I get worried.

<p style="width: 320px; text-align: left">
  <!&#8211; #izoyff3syba1m9tu5t42jndessb5qa0bl6k7y930z{width:320px;height:256px;border:none;margin:0px;} &#8211;>
</p>

<span style="margin-top: 0px"><a href="http://www.dailymotion.com/video/345799">Netgear SC101- drive lost</a><br /> Video sent by <a href="http://www.dailymotion.com/pforret">pforret</a><br /> </span>

On the former Netgear forum, this is a known error, which sometimes can be fixed by erasing something in the registry, re-attaching the drives, fixing the drive letter and a fair amount of praying. Why do I say &#8220;former Netgear forum&#8221;:  
[<img  src="http://static.flickr.com/45/186326227_c4fbe85fae.jpg" alt="Netgear forum: so long and thanks for all the fish" width="500" height="301" />](http://www.flickr.com/photos/pforret/186326227/ "Photo Sharing")  
&#8220;As a result of the popularity&#8221;&#8230; Yeah, right.

To cite the Google cache before it disappears:

> Just solved the problem of a lost drive after hybernate or reboot i.e. laptop (Win XP Home SP2) could not see a shared drive, but other PCs still could. And, I could not reattach (even after detaching) the lost drive using the SC utility.
> 
> These problems appear to be fully resolved by this sequence:  
> Step (1) &#8211; clean lost drive from the registry as follows (found by NetDr:)  
> &#8220;I believe the problem here stems from another entry in the registry that is showing the drive mounted already&#8230;.  
> Registry Key: `HKEY_LOCAL_MACHINESOFTWAREZNSClient`  
> Click on each key below the Client Key and see if the drive that you are trying to mount already co-exist? If so, remove that key only and reboot then remount the drive of choice in the SCM Mananagement software. Example: If you are trying to mount a drive named SC101 and you know it&#8217;s not mounted already, yet you see a key in the registry path mentioned above then Windows thinks that you aleady mounted that drive and you must remove it to trick windows into believing that the drive is not mounted so that you can RE-MOUNT the drive again. &#8221;
> 
> Step (2) &#8211; Apply static drive letter as follows: (found by pslizard)  
> 1) Rightclick My Computer  
> 2) Click Manage  
> 3) Click Disk Management  
> 4) Rightclick on san drive and click Change Driveletter and Paths..  
> etc.  
> Cheers, SCuser

I also find a similarly disappointed customer at [techknowman.com](http://www.techknowman.com/Electronics/NETGEAR_SC101/index.html):

> 4 hours and one new DHCP lease later&#8230;. I came across the &#8220;No drives available to attach&#8221; message when I found that my newly created SC101 partitions had magically &#8220;disappeared&#8221; from My Computer on all 3 of my PCs. The NSLU2 gave me the option to configure either a static or Dynamic IP address so why couldn&#8217;t the SC101?
> 
> Another 2 hours of head scratching and questioning my technical ability I was led to the drive letter issue in these forums. Reading post after post of SC101 owners losing way too much hair in their youth trying to get the SC101 to work got me a little concerned. Although I decided to persist and not be detered as I was going to make this solution work considering that I had a lot of hair to lose.

### Netgear tech support

So I decided to register the product on the [Netgear support site](https://my.netgear-support.com) and call for some technical support. When advised to use the command-line tool &#8220;ut&#8221; to check the storage device, I get:  
`===============================================================================<br />
VERSION : 4.19.0 ROOT IP ADDR : 192.168.1.100<br />
TOTAL(MB): 286184 # PARTITIONS : 2<br />
FREE (MB): 78<br />
-------------------------------------------------------------------------------<br />
PARTITION LABEL IP ADDR SIZE(M)<br />
15BC34B2-E41D-11DA-88C9-0001804AA8BF MIRROR 192.168.1.102 204800<br />
8622F1B4-E41D-11DA-88C9-0001804AA8BF MOVIES 192.168.1.103 81306<br />
===============================================================================<br />
VERSION : 4.19.0 ROOT IP ADDR : 192.168.1.101<br />
TOTAL(MB): 286184 # PARTITIONS : 2<br />
FREE (MB): 78<br />
-------------------------------------------------------------------------------<br />
PARTITION LABEL IP ADDR SIZE(M)<br />
15BC34B2-E41D-11DA-88C9-0001804AA8BF.m1 MIRROR 192.168.1.104 204800<br />
8622F1B4-E41D-11DA-88C9-0001804AA8BF.s1 MOVIES 192.168.1.105 81306<br />
===============================================================================<br />
2 MicroSan found within subnet 192.168.1.255`  
So the partition &#8220;MIRROR&#8221; is still there, I just can&#8217;t get at it. Some consolation. Last thing I heard from Netgear (B.P. Moelker &#8211; NETGEAR Support Nederland) was June 29th. If this doesn&#8217;t get solved fast enough, I might become a very vocal unhappy customer!

UPDATE: my problem was solved as follows:  
_I got a reply from Tech Suppport with following suggestions:  
1) try removing 1 of the 2 disks, and mount the remaining half of the mirror as a drive  
=> that didn’t work, couldn’t mount that mirror half__2) try to change the attributes for the mirrored partitions to “02 00 02″ for middle part and “0A” for the last but one byte.  
(see [kbserver.netgear.com/kb\_web\_files/n101605.asp](http://kbserver.netgear.com/kb_web_files/n101605.asp) )  
=> that worked! I changed  
<small>00 00 00 00 00 00 00 00 02 00 01 00 00 00 08 1D</small> to: <small>00 00 00 00 00 00 00 00 02 00 02 00 00 00 <strong>0A</strong> 1D</small> and  
<small>00 00 00 00 00 00 00 00 02 00 02 00 00 00 09 06</small> to: <small>00 00 00 00 00 00 00 00 02 00 02 00 00 00 <strong>0A</strong> 06</small>.__I could mount the mirrored partition, I copied all data from it, I removed the 2 x 100GB mirror partition and created a spanned 200GB partition. No need for the false security feeling of a mirror when you’re not sure it’s gonna be there tomorrow._
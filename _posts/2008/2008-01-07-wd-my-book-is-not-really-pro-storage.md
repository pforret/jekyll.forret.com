---
id: 960
title: 'WD My Book is not really &#8216;Pro' storage'
date: 2008-01-07T16:07:33+01:00
author: Peter
layout: post
guid: /2008/01/wd-my-book-is-not-really-pro-storage/
permalink: /2008/01/07/wd-my-book-is-not-really-pro-storage/
categories:
  - hardware
tags:
  - disk
  - external
  - freenas
  - mybook
  - nas
  - storage
  - wd
  - westerndigital
---
[<img  width="207" src="http://farm3.static.flickr.com/2320/2174705853_55f0176bb6_m.jpg" alt="WD My Book Pro 1TB" height="240" style="float: right" />](http://www.flickr.com/photos/pforret/2174705853/ "WD My Book Pro 1TB by PeterForret, on Flickr") After having Lacie, Maxtor, Iomega and most recently [Netgear StorageCentral external storage](/2006/07/netgear-sc-101-urgent-support-required/) fail on me, I am now the proud owner of a broken [Western Digital My Book Pro II 1TB](http://www.wdc.com/en/products/products.asp?driveid=270&language=en). I bought it less than a year ago and used it as a mirrored 500GB drive for my music, movies and images. It first failed 3 months ago (broken mirror) but after a full night of rebuilding it worked again. But now one of the drives has fallen victim to the infamous &#8216;[click-of-death](http://en.wikipedia.org/wiki/Click_of_death)&#8216; and the drive would not show up anymore via USB nor Firewire. I disconnected the broken (SATA) disk, and then I could see the other one show up again as a lone 500GB drive. I quickly started copying to a 2 x 300GB [FreeNAS](http://www.freenas.org/) system I had set up on an old Dell system (you don't want to know how many old hard disks I have lying around). During the rescue operation the solo disk gave up twice, but by restarting the My Book device, it came back. So now I have an extra copy of all my data, most importantly my 80GB of photographs (quickly growing thanks to my Canon350D) and 120GB of iTunes music (mostly ripped CDs, not purchased, but still).

First thing is to see how [Pixmania](http://www.pixmania.be) handles the warranty. They are supposed to send me a replacement for the broken drive, but I haven't heard back from their customer support yet.

And then I have to make a decision about an alternative for reliable storage. Do I go for something semi-pro like the [Buffalo Terastation Live](http://www.buffalotech.com/products/network-storage/terastation/terastation-live/) (2TB, Raid5 for +- $1000) or do I build my own storage server with an old PC, a hardware RAID card and something like FreeNAS or Ubuntu. Decisions, decisions &#8230;
---
id: 422
title: Best way to store one terabyte?
date: 2006-08-26T10:54:26+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/08/best-way-to-store-one-terabyte/
permalink: /2006/08/26/best-way-to-store-one-terabyte/
categories:
  - hardware
---
<img src="http://www.pixagogo.com/S55bfzQn-9LaggcwmIzpCo0GTENEbkLXgJQZa-N5UmRqJF0r!iRsy8!CfUk2f9l7eTj5QXdFrKOAeOSXFsO9N-zb!8Mn8Usi7O/petabox.jpg" style="float: right" alt="Petabox - 100TB in a rack" />  
I&#8217;ve gotten quite some response on my [Netgear SC101](http://blog.forret.com/2006/07/netgear-sc-101-urgent-support-required/) post (in short: they don&#8217;t always work). There&#8217;s some catharsis in bashing inferior products, but at the end of the day, how DOES on store lots of data securely? Let&#8217;s make this more specific: how would you store 1 terabyte (1000 GB) of data on your desktop?  
Let take these as requirements:

  * raw storage: 1TB or more (if used with RAID-0 striping or JBOD config)
  * redundant storage: RAID-1: leaves 500GB, RAID-5: leaves 660GB to 800GB
  * affordable: anything higher that €2000 (2$/GB) is not an option
  * accessible via either Firewire/USB or Ethernet (Gigabit)
  * accessible by Mac, PC and Linux
  * preferably not rack-mounted (who has a 19&#8243; rack at home)
  * hot-swappable disks are a big advantage

What have you tried and what are you happy with?

Some possible theoretical options:

Direct attached drive
:   e.g. [Lacie Biggest F800](http://www.lacie.com/be/products/product.htm?pid=10326) 1GB, 4-disk S-ATA: €1299
:   meets requirements? YES. Only Firewire + USB

Network attached storage
:   e.g. [Maxtor Shared Storage II](http://www.maxstore.com/product.asp?sku=3041377) 1GB, 2-disk: €899
:   meets requirements? YES. Only Ethernet
:   [Lacie Ethernet disk](http://www.lacie.com/products/product.htm?pid=10645) would not work: it&#8217;s rackmounted and has no RAID

Build your own server
:   e.g. [Dell PowerEdge SC430](http://configure2.euro.dell.com/dellstore/config.aspx?c=be&cs=bebsdt1&kc=305&l=nl&oc=SC084301&s=bsd&sbc=pedge_430sc_ide) with 2 x SATA 500GB drives and Linux: around €1000
:   meets requirements? YES. Only Ethernet

For me, the only solution I have experienced to be 100% reliable is building a dedicated PC with a hardware RAID card. What is your experience?
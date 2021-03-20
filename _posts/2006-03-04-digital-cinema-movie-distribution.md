---
id: 268
title: 'Digital cinema: movie distribution'
date: 2006-03-04T01:37:12+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2006/03/04/digital-cinema-movie-distribution/
permalink: /2006/03/04/digital-cinema-movie-distribution/
categories:
    - technology
tags:
    - bandwidth
    - digitalcinema
---
I wrote about [digital cinema](https://blog.forret.com/blog/2005/07/digital-cinema-one-step-closer.html) earlier. I want to focus now on the distribution of movies to theatres.

### FILESIZE OF A MOVIE

The movie's video signal is compressed and encrypted into a bitrate of max [250 Mbps](https://toolstud.io/data/bandwidth.php?speed=250&speed_unit=Mbps&compare=cinema&title=DCP+Cinema+2K+p24+-+max+bitrate%3A+250+Mbps), which translates in 31.25 MB/second or 112.50 GB/hour footage. So a &#8216;short&#8217; 90-minute movie is something like 170GB, and a 2h30 movie, with some audio thrown in, is more like 300 GB. The estimates from the DCI specification are even higher: around 140 GB per hour running length (video, audio and subtitles together) or around 38 MB/s.  

[<img alt="movie storage requirements" src="http://static.flickr.com/41/100762737_2309faef14.jpg" width="450" />](http://www.flickr.com/photos/pforret/100762737/ "Photo Sharing")  


### DIGITAL TRANSPORT

[Kinepolis](http://www.kinepolis.com/) currently has 21 theatres that are [equiped for digital cinema](http://investors.kinepolis.com//index.cfm?PageID=15861). So if a new movie comes out they need to transport 21 copies of 300GB to each of those. Imagine somewhere in the future a large distributor has to distribute 500 copies, preferably in less than a day. What are the options?  
Start situation: 1 compressed file in [DCDM format](http://blog.forret.com/blog/2005/07/digital-cinema-one-step-closer.html) (compressed and encrypted &#8211; so safe to send)

External hard disk </p> 
:   **Low-budget**: send a [LaCie Big Disk drive](http://www.lacie.com/be/products/product.htm?pid=10117) (500 euro/600GB &#8211; 1,5kg). Although, they are not exactly 100% reliable. </p> 
:<img style="float: right" src="http://us3.pixagogo.com/S5Z6HBQ!pXO5Ww3Ux0ogl-izn0MsHB84AmNXAXo8ZcU!AkjBBsDLa1HuBeoGnRz2impsWrs1V7h8BnDDgG2QmArjaF0NoGJdawYtdWQaXdoO-LcXcgEFdgHXPGtuhROC3F2Dqy1lXCwd8_/netgear.jpg" />  
    **Mid-budget**: send 2 drives in RAID-1 configuration (mirrored), such as the [Lacie Two Big](http://www.lacie.com/be/products/product.htm?pid=10490) (1000 euro/500GB mirrored S-ATA &#8211; 2,5kg) or the Netgear/Zetera [Storage Central SC101](http://blog.forret.com/2006/07/netgear-sc-101-urgent-support-required/) (700 euro/400GB mirrored ATA) </p> 
:   These disks are USB2.0 (max 216 GB/h), Firewire (max 160 or 320 GB/h) or Gigabit Ethernet (max 450GB/h). Actual throughput speeds will be 25 to 75% of these theoretical values. So copying the whole data onto the local movie theatre network will take 1 to 2 hours, and then it&#8217;s ready for projection. </p> 

Backup tape </p> 
:   **DLT tape**: [Super DLTape II](http://www.dlttape.com/DLTtape/Products/Media/Super+DLTtape+II.htm) can store 300GB onto a 0,225kg tape, with speeds up to 32MB/s </p> 
:   **LTO tape**: [LTO 3](http://searchstorage.techtarget.com/qna/0,289202,sid5_gci991660,00.html) can store 400GB and has speeds up to 80 Mbps. </p> 
:   Reading speed can go up to [32 MB/s](http://www.forret.com/tools/bandwidth.asp?speed=32&unit=MB%2Fs) (115 GB/h), so a bit slower than the hard disks. </p> 

HD-DVD/BluRay </p> 
:   HD-DVD has a capacity of 15GB/disk, BluRay 25GB/disk. This means a 200GB movie translates 8 to 14 disks. Might be a way to distibute the content, but I&#8217;m not too convinced it&#8217;s a handy one. </p> 

Broadband (Cable/ADSL) </p> 
:   Imagine transport via network instead of magnetic carrier. Every theatre has a broadband connection. Max speeds in Belgium are around 10Mbps download (4,5GB/h). So downloading a 200GB movie file would take 2 full days. That&#8217;s too slow. </p> 

Fast Ethernet </p> 
:   If every theatre had 100Mbps download speed, would that make network download feasible? That adds up to 45GB/h, download a full movie in 5 hours, or -let&#8217;s be realistic- 8 hours. That&#8217;s OK. Actually, if there was only 1 theatre, that would be OK. But if 21 deliveries have to be made at the same time, and they all download from one location, that adds up to 21 x 100 Mbps or 2,1 Gbps. That&#8217;s more bandwidth than most hosts can handle. Let alone 500 simultaneous downloads. </p> 

Fast Ethernet + [BitTorrent](http://www.bittorrent.com/guide.html) </p> 
:   But if the source host only serves as a BitTorrent seeder, and the other downloaders can serve as peers for each other, it should be possible to deliver the same content to each theatre within 8 hours. Looking at how close [Hollywood is looking at BitTorrent](http://money.cnn.com/2005/10/19/technology/bittorrent/), this should be an evident choice. 

Since current movie distribution (printing on 35mm film) costs between [$1500](http://entertainment.howstuffworks.com/movie-distribution.htm/printable) and [$3000](http://www.ida.gov.sg/idaweb/media/PressRelease_LeadStory_Main.jsp?leadStoryId=L83) per copy, any of the above methods is way cheaper.

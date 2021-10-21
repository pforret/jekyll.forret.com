---
id: 505
title: 'A picture a day: Flickr&#8217;s storage growth'
date: 2006-10-16T13:14:48+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/10/a-picture-a-day-flickrs-storage-growth/
permalink: /2006/10/16/a-picture-a-day-flickrs-storage-growth/
categories:
  - bandwidth
---
Just how many pictures does Flickr receive every day? I found a way to estimate the # of images that they add to their database, and another way to get average (original) file sizes for those images. The result? Their storage growth, i.e. their upload bandwidth, and the growth rate of their storage system (how many days to reach a terabyte?) 

## Number of photos per hour

[<img  src="http://static.flickr.com/103/271195136_0b76056076.jpg" width="500" height="230" alt="Flickr: #photos per hour" />](http://www.flickr.com/photos/pforret/271195136/ "Photo Sharing")  
You see here that weekends, Sundays specifically, are the most busy days for uploads. You can see peaks of almost 68.000 pictures an hour (almost 20 pictures a second). Peaks are around 22h CET (or 1 PM PDT &#8211; in California). The lowest rates (still around 20.000 photos/hour) are 12h apart: 10h CET (1 AM PDT).  
The average inflow of pictures is: **38.400 photos/hour**. That is around 10 photos/second, 920.000 photos/day.

## Average photo size

[<img  src="http://static.flickr.com/118/271195133_59f05d3330.jpg" width="499" height="250" alt="Flickr: average and max photo size" />](http://www.flickr.com/photos/pforret/271195133/ "Photo Sharing")  
And how big are those pictures? I have found a way to estimate average filesize (and maximum, while I&#8217;m at it). It&#8217;s not perfect, but quite accurate. How? That&#8217;s classified. I could tell you, but then I&#8217;d have to &#8230; Anyway: these are the numbers:  
On average, a picture uploaded to Flickr is **555.2 KB** big. They receive files up to 7.3 MB (what number of megapixels would that be?) and quite a lot of 3MB images. My [Canon 350D](http://web.forret.com/tools/megapixel.asp?title=Canon+EOS+350D&width=3456&height=2304) makes 8 megapixel images (3456 x 2304 pixels) that are between 2 and 4 MB large. But the ones I send to Flickr (after Picasa processing) are typically smaller: [1200 x 800](http://web.forret.com/tools/megapixel.asp?width=1200&height=800) (300 &#8211; 600KB) or [1024 x 683](http://web.forret.com/tools/megapixel.asp?width=1024&height=683) (200 &#8211; 400KB).

## Upload bandwidth

What happens if we multiply both numbers?  
38.400 pictures/hour x 555,2 KB/pic = [21,3 GB/hour](http://web.forret.com/tools/bandwidth.asp?speed=21.3&unit=GB%2Fh) = 5,9MB/sec or 47,3 Mbps. Storagewise, this is **15,3 terabyte/month** of new pictures. Thank God storage prices are dropping.

> Five years ago, a server with a few hundred gigabytes of storage – one of many needed to handle uploads of member photographs – would have cost Flickr about $250,000. Today, Mr Butterfield says, “you can get a terabyte of storage for about $5,000”. (via [ft.com](http://www.ft.com/cms/s/7ac899e4-ca42-11da-852f-0000779e2340.html))

Peak bandwidth usage: let&#8217;s take 60.000 pictures/hour x 3MB/pic: 180GB/hour = 50 MB/sec or 400 Mbps. This is probably still peanuts compared to their outgoing bandwidth.
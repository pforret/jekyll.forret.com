---
id: 218
title: 'Google: turning cash into cache'
date: 2005-11-18T23:57:00+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/11/18/google-turning-cash-into-cache/
permalink: /2005/11/18/google-turning-cash-into-cache/
categories:
  - Google
---
![](http://www.pixagogo.com/S55bfzQn-9LaggcwmIzpCo0GTENEbkLXgJQZa-N5UmRqJF0r!iRsy8!CfUk2f9l7eTj5QXdFrKOAeOSXFsO9N-zb!8Mn8Usi7O/petabox.jpg)

### Google and dark fiber

Interesting theory on why Google is buying up miles and miles of &#8216;dark fiber' hi-speed optical network (they have been doing this since [at least 2002](http://www.webmasterworld.com/forum3/27573.htm)).

> The probable answer lies in one of Google's underground parking garages in Mountain View. There, in a secret area off-limits even to regular GoogleFolk, is a shipping container. But it isn't just any shipping container. This shipping container is a prototype data center. Google hired a pair of very bright industrial designers to figure out how to cram the greatest number of CPUs, the most storage, memory and power support into a 20- or 40-foot box. We're talking about **5000 Opteron processors and 3.5 petabytes of disk storage** that can be dropped-off overnight by a tractor-trailer rig. The idea is to plant one of these puppies anywhere Google owns access to fiber, basically turning the entire Internet into a giant processing and storage grid.  
> While Google could put these containers anywhere, it makes the most sense to place them at Internet peering points, of which there are about 300 worldwide.
> 
> Two years ago Google had one data center. Today they are reported to have 64. Two years from now, they will have 300-plus. The advantage to having so many data centers goes beyond simple redundancy and fault tolerance. They get Google closer to users, reducing latency. They offer inter-datacenter communication and load-balancing using that no-longer-dark fiber Google owns. But most especially, they offer super-high bandwidth connections at all peering ISPs at little or no incremental cost to Google.  
> from [&#8220;Google-Mart&#8221; (Cringely)](http://www.pbs.org/cringely/pulpit/pulpit20051117.html)

### King of cache

Having a datacenter close to any customer is of course the best way to do swift and reliable caching. Presumably not for its primary activity [web search](http://www.google.com), since caching responses for search makes not much sense (see [Pareto doesn't do search](/blog/2005/09/pareto-doesnt-do-search.html)). That kind of local storage/network capacity can nevertheless be used to cache other stuff:

  * web pages for [Google Accelerator](http://webaccelerator.google.com/) 
  * email messages for [Gmail](http://mail.google.com/mail/) 
  * images for [Google Images](http://images.google.com/) 
  * video for [Google Video](http://video.google.com/) 
  * audio for Google Audio (doesn't exist yet, but is bound to be created at some point) 
  * voicemail for Google Phone (not yet, but &#8230;) 
  * peer-2-peer caching: BitTorrent, P2P telephony&#8230; 
  * And of course also **hosting** of users' content. Google makes money by indexing it, making it searchable and putting contextual ads next to them, so they can host people's audio/video/images for free. 

And all that processing power (with some simple extrapolation: [17 Teraflops](http://www.taborcommunications.com/hpcwire/hpcwireWWW/03/0822/105766.html) per datacenter block) could be used to index, filter and convert data or just rent out for [distributed computing](http://en.wikipedia.org/wiki/Distributed_computing). 

### Orders of magnitude

How big is a petabyte? A thousand terabyte, but that doesn't say much. _&#8220;If digitized with full formatting, the seventeen million books in the Library of Congress contain about 136 terabytes of information.&#8221;_ ([Berkeley 2003](http://www.sims.berkeley.edu/research/projects/how-much-info-2003/execsum.htm)) So a datacenter of 3.5 petabytes, that's about 25 libraries of Congress. At the fastest network speed we know, [10 Gbit Ethernet or 108 TB/day](http://www.forret.com/tools/bandwidth.asp?speed=10&unit=Gbps&title=10+Gigabit+Ethernet+%5BLAN%5D), it would take 32 days to fill one of such datacenters. And it demands something between 5 and 10 Megawatt of power. 

Technorati: <a href="http://technorati.com/tag/google" rel="tag">google</a> &#8211; <a href="http://technorati.com/tag/datacenter" rel="tag">datacenter</a> &#8211; <a href="http://technorati.com/tag/cache" rel="tag">cache</a> &#8211; <a href="http://technorati.com/tag/fiber" rel="tag">fiber</a>
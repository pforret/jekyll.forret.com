---
id: 321
title: 'Youtube bandwidth: terabytes per day'
date: 2006-05-04T11:54:45+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/05/youtube-bandwidth-terabytes-per-day/
permalink: /2006/05/04/youtube-bandwidth-terabytes-per-day/
categories:
  - bandwidth
tags:
  - bandwidth
  - mbps
  - traffic
  - youtube
---
[<img  width="500" src="http://static.flickr.com/44/140242878_61c5743ed6.jpg" alt="Youtube (Blogpulse)" height="300" />](http://www.flickr.com/photos/pforret/140242878/ "Photo Sharing")  
[Youtube](http://www.youtube.com) seems to be losing some of its early adopters: [Coolz0r](http://blog.coolz0r.com/2006/05/02/screw-youtube/) quits the service, while [Nathan](http://google.blognewschannel.com/?p=2295) even embarks on a grassroots activism mission to ruin the company (by getting its most popular uploaders banned &#8211; I have mixed feelings about that one). The issue is: to protect themselves from lawsuits, Youtube is taking the approach of deleting videos and even users upon first suspicion of (copyright) problems. They already received [an ultimatum from NBC](http://www.boingboing.net/2006/02/17/nbc_nastygrams_youtu.html) in Feb, then a proof to Jason Calacanis that it was &#8216;[not a real business](http://www.calacanis.com/2006/02/20/youtube-is-not-a-real-business/)&#8216;.

![Youtube traffic](http://traffic.alexa.com/graph?a=1&w=468&h=240&r=1y&u=youtube.com)  
What I found interesting in the whole controversy are the astounding numbers that popped up: # videos shown per day, bandwidth usage, bandwidth costs. Get ready for some big numbers:  
<!--more-->

> Meanwhile the site&#8217;s bandwidth costs, which increase every time a visitor clicks on a video, may be approaching $1 million a month&#8211;much of which goes to provider Limelight Networks.  
> (&#8230;)  
> Industry observers estimate that YouTube, which is streaming 40 million videos and 200 terabytes of data per day, may be paying between a tenth of a cent and half a cent per minute. Neither YouTube nor Limelight would comment on their pricing.  
> [forbes.com](http://www.forbes.com/home/intelligentinfrastructure/2006/04/27/video-youtube-myspace_cx_df_0428video.html) via [Standaard Blog](http://standaard.typepad.com/en_nu_even_ernstig/2006/05/cijfers.html#more)

### &#8220;Terabyte per day&#8221;

[<img  width="470" src="http://static.flickr.com/49/140242877_0e8dd69974.jpg" alt="Youtube: 200tb per month" height="241" />](http://www.flickr.com/photos/pforret/140242877/ "Photo Sharing")  
I remember the days when a &#8220;TB/day&#8221; unit of bandwidth sounded like science fiction. Estimations of Youtube&#8217;s bandwidth go from [25TB/day](http://www.webhostingtalk.com/archive/thread/505157-1.html) to the 200TB/day above. Let&#8217;s get a feel for that number. [200 terabytes a day](http://www.forret.com/tools/bandwidth.asp?speed=200&unit=TB%2Fd&title=Youtube+Bandwidth) adds up to 6 petabyte per month, or 72 petabyte per year. That&#8217;s a lot of Libraries of Congress. It&#8217;s equivalent to a sustained 9.26 Gbps stream, more than any single Serial-ATA or Fibre Channel can deliver.  
If you would build your own distributed network of &#8216;standard&#8217; unmetered 100Mbps caching servers, optimistically delivering [20TB/month at $2000/month](http://www.ev1servers.net/Dedicated/100Mbps.aspx), you would need at least 300 servers &#8211; or $600K per month. With [Streamload](http://www.streamload.com/Account/Pricing.asp?TerabytePlans=True), it&#8217;s way more expensive: $4400/15TB or $1,76mio per month for Youtube&#8217;s 6PB/month. Although I think Youtube would get a better price since they would need 400 Streamload servers.

### Videos per day

In Feb 2006 it was [only 15 million movies per day](http://www.youtube.com/blog?entry=jNQXAC9IVRw), but now the number stands at 40 million. At 2-3 minutes average per video, that&#8217;s 100 million minutes per day, or a cumulated 19 years of waisted time per day. There&#8217;s probably a GDP loss to be calculated for that too, but that would sound so negative. Amusement has its value.

### Limelight

[Limelight Networks](http://www.limelightnetworks.com), YouTube&#8217;s content delivery network provider (i.e. the movies come from their servers) reports a [monthly income of $4 mio](http://www.limelightnetworks.com/news/pr.2006.05.03.html). This means that almost 25% of their income comes from 1 customer. So if Youtube runs through its [last $8 mio of funding](http://gigaom.com/2006/04/05/youtube-snags-another-8-million/) (around September 2006, say), it will make for a painful quarterly report for Limelight.

### Youtube Director

In the mean time, Youtube is trying to [create a better connection](http://www.youtube.com/blog?entry=4KWKYZN7znU) with original content creators: the free [Youtube Director account](http://youtube.com/director).

> And the best benefit of all? The YouTube Director program is completely, 100% FREE. The only thing we ask? That you be a legitimate, original content creator.
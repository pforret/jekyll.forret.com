---
id: 71
title: Podcasting and Windows Media Agony (WMA)
date: 2004-10-26T21:30:10+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/10/26/podcasting-and-windows-media-agony-wma/
permalink: /2004/10/26/podcasting-and-windows-media-agony-wma/
categories:
  - podcast
---
Thanks to Feedburner&#8217;s new [SmartCast](http://www.burningdoor.com/feedburner/archives/000812.html) (see [Podcasting with Blogger](http://www.forret.com/blog/2004/10/podcasting-with-blogger.html)), I can now create a Podcast feed with Blogger. It works fine with MP3 files. Before I buy my portable MP3 player (iPod or Zen), I wanted to check out if it&#8217;s easy to podcast Windows Media files. The iPod does not support .WMA files, but if it turns out that they don&#8217;t integrate easily into podcasts anyway, that&#8217;s less of an issue.  
![](http://www.pixagogo.com/S55bfzQn-9LagpqUDGkgUuiiIJzd7S8kK!p7KlOj6VpZXxag-G3H6zd5H!yRV10o7ViPqlvvxBuA5NfFTfehNYyr-1oWoo7yli/wmagony.jpg)  
**Scenario 1: Windows Media Services aka Cougar**  
I&#8217;m a sucker for sampling trivia, and there now is a great program on Studio Brussels on &#8216;modern music&#8217;: [De Sample Minds](http://www.stubru.be/stubru_master/programmas/de_sample_minds/home/). Lots of fun music (including a weekly dose of the Beach Boys), ample background info on the technical and legal aspects of sampling from [DJ Bobby Ewing](http://www.forret.com/blog/2004/07/dj-bobby-ewing-werchter.html) and above all, they don&#8217;t take themselves too seriously. The only problem: it plays on Sunday afternoon and I&#8217;m never near a radio at that moment. However, they publish the program archive on-line in ASX/WMA format. So I could make a feed for that, right? I downloaded the .asx files (basically XML-based playlists) and retrieved the .wma references in them. The latter are hosted on wm.streampower.be, which is a Cougar/9.00.00.3372 server. _&#8216;Cougar&#8217;_, that&#8217;s the [Windows Media Services](http://www.microsoft.com/technet/itsolutions/network/deploy/depovg/wmwpr.mspx) (not the most compatible of servers, as will be revealed).

  * 1st try: [Sample Minds in Webjay](http://webjay.org/by/pforret/thesampleminds). The Cougar server does not support `HTTP HEAD`, which Webjay uses to check if the URL actually exists. So the links all look &#8216;dead&#8217; and do not get included into the auto-generated playlist. The &#8216;enclosures&#8217; in the Podcast feed cannot be downloaded by [iPodder](http://www.ipodder.org) and [Doppler](http://www.dopplerradio.net), presumably because the Cougar server does extra checks like verifying UserAgent, HttpReferer and consumed bandwidth. When it detects an unusual downloader, it just returns a `audio/x-ms-wax` file that references `Ref1=http://(server)/(path)/(file).wma?MSWMExt=.asf`. 
  * 2nd try: [Sample Minds in Blogger](http://sampleminds.blogspot.com/): I convert the ATom feed with the new FeedBurner SmartCast, but because `HTTP HEAD` does not work, the link looks dead to FeedBurner and do not get included into the RSS feed. But even if they would be included, no files would be downloaded (judging by the experience with Webjay). 
  * 3rd try: and this one works, but it is not a Podcast: [SampleMinds in ASX playlist](http://www.smoothouse.org/smoothouse/media/sampleminds.asx). But it only works for streaming, not for downloading. 

**Scenario 2: &#8216;Normal&#8217; webserver (like IIS)**  
Let&#8217;s see what happens with .WMA files on my own webserver. I&#8217;ve included some in the [SmoothPod](http://smoothpod.blogspot.com) blog. Again Feedburner SmartCast converts the Atom feed to an RSS Podcast feed and, lo and behold, it works! The WMA files are detected, converted into a perfect  
`<enclosure url="http://www.smoothouse.org/smoothouse/media/hardwork.wma" length="4190342" type="audio/x-ms-wma" />`  
which is picked up by Doppler without a problem.

**Conclusion:**  
WMA files delivered from a &#8216;normal&#8217; webserver should cause no problem. Podcasting with WMA files from a Windows Media Services server will probably not work.
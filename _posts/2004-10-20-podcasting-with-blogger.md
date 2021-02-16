---
id: 69
title: Podcasting with Blogger
date: 2004-10-20T20:34:44+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/10/20/podcasting-with-blogger/
permalink: /2004/10/20/podcasting-with-blogger/
categories:
  - podcast
---
<img src="http://www.pixagogo.com/Tools/Thumbnails.aspx?thumb=S5!pg7swZZxdEldF8u5gEuiRaONZ3fqjCJiQX4SYQWzf04BQsagym9wC0HDT4-XYqjPimRVUNpUrjMPJN21bjla5!qj7MuvA3MzSHmSevo308_" width="500" />  
I&#8217;m thinking about installing an iPod (or Zen) in my car. I would replace my current car stereo with a radio with AUX input (Kenwood has some nice ones) and get a docking station for the POD.  
Why? I would like an MP3 source that I can update more easily than burning CD&#8217;s every now and then. I&#8217;d like to get up in the morning, take my MP3 player along and discover what has been put on it. In short, I wanna be a [Podcast](http://en.wikipedia.org/wiki/Podcasting) receiver.

I would of course like to get my favourite music on it. A bit like the [Smooth-o-Matic Random Groove](http://www.xampled.com/smoothouse/random.html), but in my car. So I want to publish my own Podcast. Now I&#8217;m a take-it-easy blogger. I do not handcarve my Atom or RSS feeds, I just use Blogger. So can I create Podcasts with Blogger?

I started a new blog: [SmoothPod](http://www.xampled.com/smoothpod/) to try this out. I can include a URL to an MP3 file in the (optional) _Link_ field. When I take a look at the resulting Atom feed, it is included as  
`<link href="http://(path)/file.mp3" mce_href="http://(path)/file.mp3" rel="related" title="(Link Title)" type="text/html"/>`. However, what we need for a correct Podcast is an [RSS enclosure](http://blogs.law.harvard.edu/tech/rss#ltenclosuregtSubelementOfLtitemgt):  
`<enclosure url="http://(path)/file.mp3" length="12216320" type="audio/mpeg" />`

After [RSS conversion by Feedburner](http://feeds.feedburner.com/SmoothPod), the _Link_ is gone. Now I could do the Atom-2-RSS conversion myself with [FeedParser](http://feedparser.org/). But I decided to outsource the problem: I mentioned it to the guys from [FeedBurner](http://www.feedburner.com), and Eric Lunt seemed quite enthusiastic about it. So with some quality developer&#8217;s time on it, the FeedBurner SmartFeed might include a Podcast option that converts Blogger&#8217;s Link field, when filled with an MP3 file, to an RSS file with MP3 enclosures.

In the meantime, I&#8217;ll just go with the [Smoothouse Oct 2004 Playlist @ Webjay](http://webjay.org/by/pforret/smoothouse_oct_2004).  
UPDATE: Webjay actually has Podcasting capability right now! The [RRS feed of the above playlist](http://webjay.org/by/pforret/smoothouse_oct_2004.xml) works like a charm in [iPodder](http://www.ipodder.org/)!
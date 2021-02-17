---
title: Moving up the feed chain
author: Peter
layout: post
permalink: /2006/03/24/moving-up-the-feed-chain/
categories:
    - RSS
tags:
    - feeds
    - syndication
    - atom
---
While playing with [Feed43](http://www.feed43.com) recently (an excellent anything-to-RSS converter), I wondered: why doesn&#8217;t [Feedburner](http://www.feedburner.com) do any of this stuff? It&#8217;s just a bit earlier in the RSS food chain (let&#8217;s call that the &#8216;feed chain&#8217;). Which of course incentivised me to put that feed chain on paper. This is the result:  
[<img  src="http://static.flickr.com/34/117254772_76336c52b7.jpg" width="342" height="500" alt="RSS feed chain" />](http://www.flickr.com/photos/pforret/117254772/ "Photo Sharing")  
<!--more-->

  
Let&#8217;s go over the steps:

  * **1: create**: create an RSS/Atom feed out of something else. This can be the regular expression-based parsing of [Feed43](http://www.feed43.com), or the [Webjay](http://webjay.org) import functionality (get all MP3 links in an external page, and publish them as a podcast-ready RSS feed). As far as I know, Feedburner hasn&#8217;t done anything in this area yet. The best example there is Feed43.
  * **2: enrich**: make the content of the feed &#8216;better&#8217;. Feedburner does this by e.g. adding your Amazon affiliate number to any Amazon product links, by converting stock symbols into tickers, by adding [Feedflare](http://www.feedburner.com/fb/a/publishers/feedflare) links. Also adding geo-coordinates would fall under this.
  * **3: convert**: between formats (e.g. Atom/RSS). This is the market that Feedburner originally identified and now almost completely occupies. They also have [SmartCast](http://www.burningdoor.com/feedburner/archives/000812.html) that converts regular RSS into podcast feeds (audio/video/images). I haven&#8217;t seen any real competition here.
  * **4: aggregate**: combine several feeds into one. Feedburner already splices Flickr/Buzznet and del.icio.us feeds into the main feed, but does not have the possibility to merge arbitrary feeds together. [Feedshake](http://www.feedshake.com/) does this.
  * **5: filter**: filter items out of a feed. One can imagine a filter to show only feeds items that contain a certain keyword or category, or that contain the right kind of enclosure (e.g. MPEG4 for iTunes or WMV for Media Player).
  * **6: visualize**:Feedburner already has [BuzzBoost](http://www.burningdoor.com/feedburner/archives/001311.html) (embed your feed into HTML code) and the [headline animator](http://www.burningdoor.com/feedburner/archives/000644.html) (show your feed as an animated image), and for statistics they have the Feedcount and more general, the [feed Awareness API](http://www.feedburner.com/fb/a/api/awareness). 

Feedburner still has room to move up or down the feed food chain. If they would acquire a service, my bet would be on Feed43 or FeedShake.

<small><a href="http://technorati.com/tag/rss" rel="tag">RSS</a> &#8211; <a href="http://technorati.com/tag/feed" rel="tag">feed</a> &#8211; <a href="http://technorati.com/tag/feedburner" rel="tag">Feedburner</a></small>
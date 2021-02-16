---
id: 476
title: WP-Cache speeds up your WordPress!
date: 2006-09-20T12:09:23+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/09/wp-cache-speeds-up-your-wordpress/
permalink: /2006/09/20/wp-cache-speeds-up-your-wordpress/
categories:
  - Wordpress
---
Ever wondered if you needed a caching plugin for your [WordPress](http://www.wordpress.org) blog? You have the impression your blog&#8217;s homepage takes forever to load? You hate it when your friends call your blog &#8216;interesting, but so slow&#8217;?

Well, I did, so I wanted to find out just how slow it was. I set up an [MRTG](http://oss.oetiker.ch/mrtg/) monitoring system on my [Dreamhost](http://www.dreamhost.com/r.cgi?166410) account. First thing I did was to add 2 tests:

  * the download time of my blog&#8217;s home page (which involves quite some PHP/MySQL)
  * the download time of a small CSS file on the same site, which involves no PHP

Let&#8217;s take a look at the CSS file first:  
[<img  src="http://static.flickr.com/97/248146088_32f0e60117.jpg" width="500" height="135" alt="Getting a CSS file from my site: always fast" />](http://www.flickr.com/photos/pforret/248146088/ "Photo Sharing")  
The green line is my 500ms treshold: everything above it is too slow.You see that most of the time my CSS file can be downloaded faster than that (actually the average is around 250ms). There is the occasional peak, which might be caused by temporary network congestion or a server busy doing other stuff &#8211; it IS a shared hosting after all.

Now compare this to the time it takes to get my homepage:<!--more-->

  
[<img  src="http://static.flickr.com/93/248144593_c30c85f4e2.jpg" width="500" height="135" alt="The effect of WP-Cache on WordPress speed" />](http://www.flickr.com/photos/pforret/248144593/ "Photo Sharing")  
The average was more around 1,5 seconds, that is, until last Monday. On Monday I installed [WP-Cache 2.0](http://mnm.uib.es/gallir/wp-cache-2/), a WordPress (2.0) plugin that saves each delivered page on disk for an hour. So the PHP overhead (including SQL statements to get posts, related posts, comments, blogroll, &#8230;) is no longer executed for each and every page request. If that page was requested less than an hour ago, there is a saved copy on disk that is returned immediately instead of re-rendering it. The effect: my average access time has dropped to 302ms.

Let&#8217;s show you the immediate effect on a second blog I manage:  
[<img  src="http://static.flickr.com/54/248146089_072270c69e.jpg" width="500" height="135" alt="Immediate effect of WP-cache" />](http://www.flickr.com/photos/pforret/248146089/ "Photo Sharing")  
This is a &#8216;DAY&#8217; chart instead of a &#8216;WEEK&#8217; chart, so you can see the individual samples (every five minutes). How hard is it to guess where WP-Cache kicked in?

Any WordPress installation, but certainly those with plugins like the [Ultimate Tag Warrior](http://www.neato.co.nz/ultimate-tag-warrior/) (those &#8216;related posts&#8217; are super, but slow) or [Brian&#8217;s Latest Comments](http://meidell/latestcomments/), could profit from this caching tool. Depending on the traffic, that is: you need at least something like 48 visits/day to see an improvement, if you keep the default expiration of 3600 seconds.

[Ricardo Galli](http://mnm.uib.es/gallir) has developed a top-notch plugin, that works out-of-the-box with minimal configuration necessary. Make your WordPress fly, get [WP-Cache](http://mnm.uib.es/gallir/wp-cache-2/)!

_(hat-tip to [theblogjoint.com](http://theblogjoint.com/2006/08/29/top-wordpress-plugins/) for reminding me I should try it)_
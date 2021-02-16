---
id: 232
title: 'Christmas present: podcast feed validator!'
date: 2005-12-25T18:16:00+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/12/25/christmas-present-podcast-feed-validator/
permalink: /2005/12/25/christmas-present-podcast-feed-validator/
categories:
  - podcast
tags:
  - feed
  - podcast
  - RSS
  - tool
---
I get a lot of _&#8220;what is wrong with my podcast feed?&#8221;_ kind of questions because I have written a fairly [popular tutorial on podcasting with Blogger and Feedburner](http://blog.forret.com/blog/2004/10/how-to-podcast-with-blogger-and.html), and a lot of people start doing podcasts that way. There&#8217;s a couple of things that can go wrong:

  * Not a valid RSS feed
  * RSS feed without enclosures
  * Feed not updated when posting new article
  * &#8230;

To check some of those things, I needed to read and interpret the RSS feed by hand. That&#8217;s why I decided to make a [**podcast feed validator**](http://www.smoothouse.com/podcast/validator.php) to do the checks automatically. Let&#8217;s take [Adam Curry](http://live.curry.com/)&#8216;s [DailySourcecode](http://www.dailysourcecode.com/) podcast as an example:

  * the URL of the feed is [radio.weblogs.com/ 0001014/ categories/ dailySourceCode/ rss.xml](http://radio.weblogs.com/0001014/categories/dailySourceCode/rss.xml), so I input it into the input field and [the results are](http://www.smoothouse.com/podcast/validator.php?src=http%3A%2F%2Fradio.weblogs.com%2F0001014%2Fcategories%2FdailySourceCode%2Frss.xml):
  * #1: feed URL exists and can be reached
  * #2: feed is a valid RSS feed (but does not conatin the iTunes extensions),
  * #3: feed items have audio enclosure (but not all, as you see in the image below. The reason is that two enclosures are wrongly specified as `text/html` instead of `audio/mpeg`.)
  * #4: the audio enclosure (MP3 file) exists and can be reached

[<img  border="0" width="470" src="http://static.flickr.com/37/77187539_e2195dfd9c.jpg" alt="podcast feed validator" height="500" />](http://www.flickr.com/photos/pforret/77187539/ "Photo Sharing")  
So the enhancements for this feed would be: make sure all enclosures have the right type, and provide iTunes meta data. Better still: use [Feedburner](http://www.feedburner.com) to get that and more: subscriber statistics and lots of feed tools.

Try it out for yourself:  
[**Check your podcast RSS feed**](http://www.smoothouse.com/podcast/validator.php)!

Some more features of the [podcast feed check](http://www.smoothouse.com/podcast/validator.php):

  * estimation of **mean-time-between-posts** (MTBP), a metric I talked about in [RFM for RSS feeds](http://blog.forret.com/blog/2005/12/rfm-for-rss-feeds-recency-frequency.html)
  * estimation of required bandwidth/storage per month (DailySourcecode: 600MB/month, [175-25.be](http://www.175-25.be) podcast: 10MB/month)
  * works with MP3 audio enclosures and AAC (MPEG-4) audio/video enclosures (any `audio/mp*` enclosure)
  * detailed (technical) information is hidden by default and can be shown through some [AJAX](http://en.wikipedia.org/wiki/AJAX) functionality.

Technorati: <a rel="tag" href="http://technorati.com/tag/podcast">podcast</a> &#8211; <a rel="tag" href="http://technorati.com/tag/feed">feed</a> &#8211; <a rel="tag" href="http://technorati.com/tag/rss">rss</a> &#8211; <a rel="tag" href="http://technorati.com/tag/validation">validation</a> &#8211; <a rel="tag" href="http://technorati.com/tag/check">check</a>
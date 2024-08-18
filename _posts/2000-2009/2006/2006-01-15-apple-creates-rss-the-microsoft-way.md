---
id: 242
title: Apple creates RSS the Microsoft way
date: 2006-01-15T16:56:34+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2006/01/15/apple-creates-rss-the-microsoft-way/
permalink: /2006/01/15/apple-creates-rss-the-microsoft-way/
categories:
  - Apple
  - podcast
---
When [Apple reinvented the photofeed](/blog/2006/01/apple-reinvents-photocasting-in-ilife.html), they actually were a bit sloppy. Instead of building upon standard RSS and the [Media RSS extensions backed by Yahoo!, Feedburner](http://search.yahoo.com/mrss) et al., they decided to do what Microsoft has always been accused of: **they made a different, non-compatible RSS format**.

> cf <http://static2.podcatch.com/blogs/gems/snedit/rss.xml>  
> It's pretty bad. There are lots of errors, the date formats are wrong, there are elements that are not in RSS that aren't in a namespace.  
> via [scripting.wordpress.com (Dave Winer)](http://scripting.wordpress.com/2006/01/11/welcome-to-the-wonderful-wacky-world-of-apple-rss/)

[<img  height="436" alt="Apple photocast RSS" src="http://static.flickr.com/42/86859675_35a9a49514.jpg" width="500" />](http://www.flickr.com/photos/pforret/86859675/ "Photo Sharing")  
from [static2.podcatch.com/blogs/gems/snedit/rss.xml](http://static2.podcatch.com/blogs/gems/snedit/rss.xml)

  * First of all, it looks like they made a &#8216;wallpaper-cast' instead of photocast. The RSS extensions are called _www.apple.com/ilife/wallpapers_.
  * The RSS feeds are only accessible with a specific UserAgent, i.e. only with Apple Safari. Try to open it in any browser and you get an error message. _(Update: actually, while I was writing this, the behaviour seems to have been [changed to delivering the RSS](http://www.forret.com/projects/analyze/?url=http%3A%2F%2Fweb.mac.com%2Fmrakes%2FiPhoto%2Fphotocast_test%2Findex.rss) with `Content-Type: application/octet-stream`. So this is more or less fixed &#8211; `application/rss+xml` would have been better)_
  * The dates are not conform the [RFC822](http://www.faqs.org/rfcs/rfc822.html) standard: &#8220;2006-01-11 16:43:22 -0800&#8221; should be &#8220;Wed, 11 Jan 2006 16:43:22 -0800&#8221;. Most RSS parsers will have no problem with this, but if there's an [official RSS specification](http://blogs.law.harvard.edu/tech/rss), why not follow it.
  * They put the image URL in the `link` field, which does not allow extra attributes like type or size. Why not [use `enclosure`](/blog/2005/08/photofeed-image-podcasting.html)?
  * For all the date related metadata (_photoDate, cropdate_), why not use [Dublin Core dcterms](http://web.resource.org/rss/1.0/modules/dcterms/)?

<!--more-->

  
Compare this to the [Flickr Photofeeds](http://www.smoothouse.com/blog/2005/08/flickr-photofeeds/): they use standard RSS 2.0, enriched with the MediaRSS extensions.  
[<img  height="495" alt="Flickr Photocast/Photofeed RSS" src="http://static.flickr.com/37/86865050_ff9edbbf8b.jpg" width="500" />](http://www.flickr.com/photos/pforret/86865050/ "Photo Sharing")  
from [www.flickr.com](http://www.flickr.com/services/feeds/photos_public.gne?id=37855527@N00&format=rss_200_enc)

My prediction: Apple will have to comply to the RSS specification (e.g. using correct dates), but they will stick to their own RSS extensions instead of using Media RSS. So if you have a need for photocasting, wait until [Feedburner](http://www.feedburner.com) have released some [Apple Photocast specific options](http://www.smoothouse.com/blog/2005/08/feedburner-photofeeds/), and let Feedburner convert your photocast feed for you:

  * SmartCast for Photocast should convert dates to standard RFC822 dates
  * it should add an image `enclosure` to each item (not done now: [feeds.feedburner.com/ApplePhotocastTest](http://feeds.feedburner.com/ApplePhotocastTest))
  * it should add Media RSS entensions
  * using Feedburner means that you can change your feed provider afterwards, e.g. migrate from .Mac to Flickr or Pixagogo, without losing your subscribers
  * using Feedburner means that you can monitor how many people are subscribed to your feed.

Technorati: <a href="http://technorati.com/tag/rss" rel="tag">rss</a> &#8211; <a href="http://technorati.com/tag/feed" rel="tag">feed</a> &#8211; <a href="http://technorati.com/tag/apple" rel="tag">apple</a> &#8211; <a href="http://technorati.com/tag/ilife" rel="tag">ilife</a> &#8211; <a href="http://technorati.com/tag/photocast" rel="tag">photocast</a> &#8211; <a href="http://technorati.com/tag/photofeed" rel="tag">photofeed</a> &#8211; <a href="http://technorati.com/tag/feedburner" rel="tag">feedburner</a> &#8211; <a href="http://technorati.com/tag/mrss" rel="tag">Media RSS</a>
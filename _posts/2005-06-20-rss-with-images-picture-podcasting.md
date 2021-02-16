---
id: 155
title: 'RSS with images: picture podcasting'
date: 2005-06-20T17:09:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/06/20/rss-with-images-picture-podcasting/
permalink: /2005/06/20/rss-with-images-picture-podcasting/
categories:
  - podcast
  - RSS
---
![](http://www.pixagogo.com/S5vpfnjbBPdPn3!77h!9nvCwHKUngfL0q9aNicxTeloR0!5oH1smeMgCoqgKg7lxUlXOcTqNMnKOpmOZueIuVU4QBLIb-!7-bBif8QfH71QXOBpZy1VQ-Yp79kmJTpY5Iw37AujUh8iiUemGWcfai!ow__/ipod_photo.jpg)  
There is something weird: after the audio-only iPods came the [iPods with images](http://www.apple.com/ipodphoto/), but there are no iPods for videos ([yet](http://www.macrumors.com/pages/2004/05/20040514024228.shtml)). However, we already have video podcasts, but there are to my knowledge hardly any picture podcasts? Why did we skip that medium? The hardware is there, the content is there.

So let&#8217;s see how hard this would be. At first glance, you would need the pictures, in an RSS, optionally automagically transferred to the photo device:

### RSS with pictures

I found a couple of initiatives for putting images in an RSS so that they can easily be retrieved/manipulated:

[Flickr: RSS with image enclosures](http://www.flickr.com/services/feeds/) </p> 
:   this is the most straightforward and obvious implementation: using the same `enclosure` tag that made podcasting so simple. The only thing is: they do not include the image size (`length=`) attribute, probably for performance reasons, but this [breaks the validation of the feed](http://feedvalidator.org/check.cgi?url=http%3A%2F%2Fwww.forret.com%2Fprojects%2Frss_img%2Fflickr.xml). </p> 

[Yahoo!: Media RSS](http://search.yahoo.com/mrss) </p> 
:   a more recent effort from Yahoo! to include media files and associated meta-data into RSS. More meta-data means better search accuracy. They use an extra namespace `xmlns:media="http://search.yahoo.com/mrss"` which is probably the most correct way of doing it, but makes it unfit for podcast use (no podcatcher client recognizes their `media:content` tag, so nothing is downloaded). They do support multiple enclosures per post item (e.g. a high-quality MPEG-4 video, a low-quality &#8211; but faster downloaded &#8211; WMV alternative and a JPG screen shot for the same footage). </p> 

[pheed.com Pheed RSS](http://www.pheed.com/pheed/) </p> 
:   another extension of RSS 2.0, now with a `xmlns:photo="http://www.pheed.com/pheed/"` namespace. Same remarks as above: no podcast recognition. They also use the [Dublin Core](http://dublincore.org/) namespace, which is probably a good idea. </p> 

[solitude.dk](http://www.solitude.dk/archives/20050208-0045/) </p> 
:   Andreas had a proposal for changing the RSS2.0 standard, allowing multiple enclosures per item. Better go with the Yahoo! route for that, I guess. 

My conclusions: you need the `enclosure` tag for compatibility with existing applications. You need the `length=` attribute for conformance to the RSS specs. So I&#8217;d start with what Flickr does, entend it with the length (even it&#8217;s just an estimation based on image pixel size, I don&#8217;t think many applications verify the actual size). But you could combine this with the Yahoo! Media RSS namespace (a bit like using the `embed` tag within the `object` for embedded media players) in the same feed.  
**Feedburner**  
Feedburner no longer adds image URLs as enclosures to their feeds (too many user problems, [Eric Lunt](http://www.burningdoor.com/eric/) tells me). So you cannot use Feedburner for constructing the RSS feed. (I tried it with [Blogger and SmartCast](http://blog.forret.com/blog/2004/10/how-to-podcast-with-blogger-and.html) and indeed, no success). They do [support Yahoo! Media RSS](http://www.burningdoor.com/feedburner/archives/001162.html) as output format. They actually use the combination I described above. So we&#8217;re one step away from the perfect image feed constructor: Feedburner (optionally) enables image (JPEG/GIF/PNG) attachments to be converted to enclosures (with their usual automatic `length=` detection).

### Transfer to device

I tried to use a mixed enclosure/MediaRSS feed in the [iPodder](http://ipodder.sourceforge.net) podcast client, and it works like a charm. All references images are downloaded and stored under \[iPodder download folder\]\[Feed name\][filename]. Whcih means you only have to specify the [iPodder download folder] as e.g. iTunes&#8217; &#8216;Image root folder&#8217; and all pictures will be synchronized with the iPod photo. Each feed is a separate folder, and a separate album on the iPod. Super! I guess the [Doppler podcast aggregator](http://www.dopplerradio.net) would work as good.

### Applications

Whether the pictures are consulted on a iPod or other [portable multimedia device](http://www.amazon.co.uk/exec/obidos/redirect?link_code=ur2&camp=1634&tag=forretcom-21&creative=6738&path=tg/browse/-/560884), or online in an aggregator or [Bloglines](http://www.bloglines.com), people can dream up a load of neat applications.

  * Gadget freaks could subscribe to an [Engadget](http://www.engadget.com/) GSM &#8216;photo-cast&#8217; of the latest must-have mobile phones. 
  * Parents could create a &#8216;kidcast&#8217; for pictures of their newborn so the relatives can be automatically updated
  * [casting directors](http://www.actorsaccess.com/) could use a &#8216;casting-cast&#8217; to get updated on new faces &#8230;
  * A TV channel could subscribe to the RSS&#8217;es of the main news agencies.
  * Simple: a PHP script that takes the RSS and shows your 5 most recent pictures in the side menu of your blog
  * &#8230;

Technorati: <a href="http://technorati.com/tag/RSS" rel="tag">RSS</a>
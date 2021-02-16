---
id: 298
title: 'PDF podcasts: proof of concept'
date: 2006-04-07T16:30:23+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/04/pdf-podcasts-proof-of-concept/
permalink: /2006/04/07/pdf-podcasts-proof-of-concept/
categories:
  - media
  - podcast
  - RSS
---
[<img loading="lazy" src="http://static.flickr.com/36/124710707_4e9f7decd7_m.jpg" width="175" height="240" alt="Videography magazine: via PDF" style="float: right" />](http://www.flickr.com/photos/pforret/124710707/ "Photo Sharing")**Background**  
I read a lot of info on [digital cinema](http://blog.forret.com/categories/digcinema/) these last months. I find there is little syndicated content (blog feeds) to be found on the topic. Some sites have a page of press releases and/or an email newsletter, but that&#8217;s about it. That&#8217;s why I have created some custom RSS feeds with feed43. (e.g. [Digital Cinematography feed](http://feed43.com/digitalcinematography.xml) for the [CMP Digital Cinematography Magazine](http://www.uemedia.net/CPC/digitalcinemamag/index.shtml))  
What I do see is that some sites publish really nice magazines in PDF (Portable Document Format &#8211; by Adobe) format (see [Videography](http://videography.com/) on the right). You only know about these if you go visit the site of course &#8211; very Web 1.0. So if there could be a feed that alerts me of new issues of these PDF files &#8230; And while we&#8217;re at it, why not put the PDF link as an enclosure in the RSS feed, podcast style? And just like an MP3 podcast is automatically transferred to a portable MP3 player, could a PDF podcast be automatically printed? The answer is: **Yes**. Let me show you how.  
<!--more-->

  
**STEP 1: the RRS with PDF enclosures**  
That was harder than it should be: [Feed43](http://www.feed43.com) does not do podcast feeds, [Feedburner](http://www.feedburner.com) only recognizes audio/video and image files. So I ended up creating an RSS file by hand:  
[<img loading="lazy" src="http://static.flickr.com/44/124691891_28378b2d64.jpg" width="500" height="392" alt="PDF podcast feed" />](http://www.flickr.com/photos/pforret/124691891/ "Photo Sharing")  
Since I&#8217;m only testing I don&#8217;t mind for now. It should be possible to auto-create it with WordPress, or maybe Feedburner could add it to its list of &#8220;rich media files&#8221; for [SmartCast](http://www.burningdoor.com/feedburner/archives/000812.html).

**STEP 2: podcatching the PDF feed**  
Now what? There is a podcast feed with PDF enclosures, and I want a _podcatching_ application to download them. I chose [Juice (the former iPodder)](http://juicereceiver.sourceforge.net/) application here, because I can configure it to run a script for each downloaded enclosure (see further). I copy/paste the feed URL in the Juice aggregator and it has no problem downloading the PDF files:  
[<img loading="lazy" src="http://static.flickr.com/34/124691900_f349818687.jpg" width="500" height="98" alt="Download the PDF podcast in Juice" />](http://www.flickr.com/photos/pforret/124691900/ "Photo Sharing")  
The result of this is: the podcatcher will create a folder for the podcast where all PDF files are stored. So if you prefer to read them on your screen, this is already good enough. But let&#8217;s try to get them printed the moment they arrive.

**STEP 3: auto-printing the PDF files**  
Task at hand: I want the PDF files to be printed automatically upon download. I can configure Juice to execute a command line after each download, and I configure it to run a script `print_pdf.cmd "%f"`:  
[<img loading="lazy" src="http://static.flickr.com/36/124695149_ad8f3f4d40_o.gif" width="455" height="175" alt="Juice: advanced settings" />](http://www.flickr.com/photos/pforret/124695149/ "Photo Sharing")  
What the script does is:

  * check if the file is a PDF file (so skip all MP3, &#8230; files)
  * if it is call `"c:(path to Adobe Reader)Acrord32.exe" /p /h %1` so that Adobe Reader opens the file in the background (option `/h` or &#8216;hidden&#8217;) and prints the document (option `/p`).

This print operation will take the default printer with default settings, so you have to configure the computer to e.g. print on the color laser (looks nice) with 2 pages on 1 sheet (to save trees) with automatic stapling (if your printer supports that).

**Conclusion:**  
A PDF podcast feed allows you to subscribe to regular releases of PDF files that are automatically printed the moment they are published. There are no technological barriers to do it. It would be nice if Feedburner supported it in its Smartcast service.  
Anyone publishing magazines, reports, statistics, account overviews in PDF format: try it out!

_  
UPDATE: Apple iTunes now supports &#8220;[PDF enclosures subscriptions](http://www.micropersuasion.com/2006/05/itunes_offers_p.html)&#8220;. (via [Pascal](http://pascal.vanhecke.info/))_
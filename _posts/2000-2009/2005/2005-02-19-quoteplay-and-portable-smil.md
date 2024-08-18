---
title: QuotePlay and portable SMIL
date: 2005-02-19T01:17:00+01:00
author: Peter
layout: post
permalink: /2005/02/19/quoteplay-and-portable-smil/
categories:
    - technology
tags:
    - media
    - playlist
    - audio
    - podcast
---
[Matt Round](http://www.malevolent.com/about/matt-round/) had released [QuotePlay](http://www.malevolent.com/extras/quoteplay/), a Flash-based MP3 player for playing specific parts (&#8216;quotes') of an MP3 sound file. A bit like <blockquote> for sound, and a handy way to cite podcasters.

I remember Jon Udell talking about a different approach for the same problem:

> Peter van Dijck wrote to tell me about [his tool for converting the URL of a Real stream](http://www.me-tv.org/freetools/getrmurl.php), plus start/stop times, into a link to the specified segment. A while ago, I mentioned [Rich Persaud's version of the same idea (PFOR: AutoMeta's RPXP)](http://autometa.com/RPXP/web/), which works with Windows Media and QuickTime as well as Real. Using either of these, you can do what I did the other day &#8212; namely, link to a segment within a video stream &#8212; without hacking URLs and wrapper files.  
> (from [Jon Udell's Blog &#8211; May 13, 2004](http://weblog.infoworld.com/udell/2004/05/13.html))

The RPXP tool works by generating a RAM/ASX/SMIL meta file on the spot by processing the &#8216;start'/'stop' information in the URL. _Instantaneously generated playlist files_, sounds a lot like [Webjay](http://www.webjay.org), right?

Which brings me to a related topic: wouldn't it be great for future portable MP3/WMA players to support the ASX (Windows Media) and SMIL (Quicktime/RealPlayer/MP3) playlist format? There are already devices that support music + images (the [iPod photo](http://www.apple.com/ipodphoto/), the [iRiver H10](http://www.iriver.com/html/product/prpa_product.asp?pidx=61)) and even movies (the [iRiver PMC140](http://www.iriver.com/html/product/prpa_product.asp?pidx=62), the [Zen Portable Media Center](http://www.creative.com/PortableMediaCenters/productinfo/features.asp)). It would be so easy to glue the audio and video together in playlist files to create slideshows, partial playback (like the above QuotePlay), reuse of the same intro/outro audio for different playlists, &#8230; 

For the moment, the iPod supports M3U playlists (audio only &#8211; but m3u does not support start and end times) and the iPod photo can show album art, i.e. visual metadata embedded in the MP3 file. Both features are very limited. 

Imagine a Powerpoint-2-SMIL export functionality that enables you to take your presentation on your portable player, and hook it up to an overhead projector. Imagine a package of 1 video file with 3 soundtracks &#8211; each in a different language &#8211; and different subtitles, all glued together by a set of small playlist files. Imagine creating a playlist on-the-fly that contains the most memorable quotes ina 90-minute speech, and that is sync'ed with your PC.

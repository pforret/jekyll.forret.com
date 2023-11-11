---
title: 'My quest for Let’s get lost - Chet Baker by Bruce Weber'
date: 2009-07-14T22:04:22+02:00
author: Peter
layout: post
image: https://farm3.static.flickr.com/2548/3720484563_3bd889b84c.jpg
permalink: /2009/07/14/my-quest-for-lets-get-lost-chet-baker-by-bruce-weber/
categories:
  - music
tags:
  - Apple
  - movie
  - mpeg
  - video
  - youtube
---

> [Let's Get Lost](http://en.wikipedia.org/wiki/Let's_Get_Lost_(film)) (1988) is a American documentary film about the turbulent life and career of jazz trumpeter Chet Baker written and directed by Bruce Weber.

![](https://farm3.static.flickr.com/2548/3720484563_3bd889b84c.jpg)

I saw _Let's Get Lost_ in Leuven, I guess around 1990. Chet Baker has been a weak spot for me ever since, because I now knew how much suffering was hiding behind that vulnerable voice. I tried to find a DVD of it but apart from a VHS tape (I don't have a player) I couldn't find anything. Then the other day I found the whole movie, split in 13 parts, on Youtube:

Now I could watch them on my PC one after the other, but I wondered if I couldn't join them and watch them as 1 single movie on my Apple TV. And I managed. Of course, the quality is not comparable to DVD, but it's something. Here's the procedure:

  * I installed [Easy Youtube Video Downloader](https://addons.mozilla.org/en-US/firefox/addon/10137) for Firefox.
  * I downloaded the 13 parts one by one. Each file was a 40MB MPEG4 video. The format:  
    <small><em>Input #0, mov,mp4,m4a,3gp,3g2,mj2, from &#8216;<strong>Chet Baker Lets Get Lost 1988 0113.mp4</strong>&#8216;:<br /> Duration: 00:08:21.2, start: 0.000000, bitrate: 628 kb/s<br /> Stream #0.0(und): Audio: mpeg4aac, 44100 Hz, stereo<br /> Stream #0.1(und): Video: h264, yuv420p, 480&#215;360, 30.00 tb(r)</em></small>
  * I transcoded each file to a .VOB (MPEG2, DVD format). Each VOB file is about 180MB. For the transcoding I used ffmpeg: `ffmpeg -i [INPUT.MP4] -target pal-dvd -y [OUTPUT.VOB]`  
    The result:  
    <small><em>Input #0, mpeg, from &#8216;</em><strong><em>Letsgetlost01.vob</em></strong><em>&#8216;:<br /> Duration: 00:08:21.2, start: 0.500000, bitrate: 2734 kb/s<br /> Stream #0.0[0x1e0]: Video: mpeg2video, yuv420p, 720&#215;576 [PAR 1:1 DAR 5:4], 9000 kb/s, 25.00 tb(r)<br /> Stream #0.1[0x80]: Audio: liba52, 48000 Hz, stereo, 448 kb/s</em></small>
  * The handy thing with .VOB files is that you can append them into 1 file, and they just play in sequence. So I just did `copy *.VOB ONEBIGFILE.VOB` and this gave me a 2,2GB video file in DVD format.
  * I now needed to transcode it again to a format that plays on my AppleTV, so I used [Mediacoder](http://mediacoder.sourceforge.net/) to do that.  
    The final result: a 525 MB video file, ready for my bedroom TV:  
    <small><em>Input #0, mov,mp4,m4a,3gp,3g2,mj2, from &#8216;</em><strong><em>Letsgetlost.mp4</em></strong><em>&#8216;:<br /> Duration: 01:54:55.2, start: 0.000000, bitrate: 624 kb/s<br /> Stream #0.0(und): Video: h264, yuv420p, 640&#215;480, 25.00 tb(r)<br /> Stream #0.1(und): Audio: mpeg4aac, 48000 Hz, stereo</em></small>

Now just imagine I could do the following: search for the movie in iTunes, pay for it, let it download, and it's there, 15 min later, on my Apple TV. If it were possible, would I do that? Yes. But the movie industry does not have a solution for the long tail of video, does not want to set up a convenient distribution model for video, certainly not for that funny region called ’Europe’ and so we need to resort to elaborate and cumbersome methods that, unfortunately, do not make them any money.  

![](https://farm4.static.flickr.com/3472/3720809087_bb69dae28a.jpg)

The world around the movie companies has changed, the customers have changed, the technology has changed, and if they keep on refusing to adapt, they'll be like a buggy whip company.

> _You know, at one time there must've been dozens of companies making buggy whips. And I'll bet the last company around was the one that made the best goddamn buggy whip you ever saw. Now how would you have liked to have been a stockholder in that company?_ 
> 
> [Larry the Liquidator - Other People's Money](http://www.imdb.com/title/tt0102609/quotes)
---
id: 1109
title: Create your own iPhone ring tones
date: 2009-02-13T21:05:54+01:00
author: Peter
layout: post
guid: /?p=1109
permalink: /2009/02/13/create-your-own-iphone-ring-tones/
categories:
  - iphone
tags:
  - ffmpeg
  - iphone
  - ringtone
  - Apple
---
I've had my iPhone for a week (loving it!) and of course I want to make custom ring tones for some of my contacts. I figured out how it worked from posts like [create-free-iphone-ringtones-using-itunes-in-windows](http://create-free-iphone-ringtones-using-itunes-in-windows/) but I developed my own workflow:

**1. Find a source file**

  * I typically start from an existing MP3 file. It might be a CD I have ripped to MP3, or a soundtrack from DVDs or other sound bites. I also have a collection of accapella samples that are a nice source.

**2. Create the 15 &#8211; 30 sec tone in MP3 format**

  * You don't need a 5 min ringtone, just 15 to 30 seconds will be enough
  * I use [Audacity](http://audacity.sourceforge.net/) (with the [LAME MP3 encoder add-on](http://audacity.sourceforge.net/help/faq?s=install&item=lame-mp3)) to load the full source MP3 file, trim out the piece I want and then add a fade-in and fade-out.

[<img  src="http://farm4.static.flickr.com/3324/3276474433_b361c195dc.jpg" alt="Make iPhone ringtone with Audacity" width="500" height="278" />](http://www.flickr.com/photos/pforret/3276474433/ "Make iPhone ringtone with Audacity by PeterForret, on Flickr")

**3. Export to MP3**

  * I then export the file to an MP3 file of 128kbps. You don't need better quality than that anyway. If you want, you can convert the file to mono here, or it can happen in the next step
  * Result: ringtone.mp3

**4. Convert with ffmpeg to MPEG4 ringtone**

  * I prefer using the command-line [ffmpeg](http://ffmpeg.mplayerhq.hu/) for transcoding of audio and video.
  * The simple way of doing it: `ffmpeg -i ringtone.mp3 -y ringtone.m4a` (.m4a stands for MPEG4 audio, ffmpeg will see this extension and use default settings for the conversion.) Afterwards you then have to change the extension to .m4r (MPEG4 ringtone).
  * The detailed one-step-only way to do this: `ffmpeg.exe -i ringtone.mp3 -ac 1 -ab 128000 -f mp4 -acodec libfaac -y ringtone.m4r`

**5. Open file with iTunes**

  * Just double-click the file, that should do it.

**The lazy way:**

let's make a batch file that will automatically convert the first 30 seconds of any MP3 file into an iPhone ringtone:  
`SET INPUT=%1<br />
SET NAME=%INPUT:.mp3=%<br />
SET OUTPUT=%NAME%.m4r<br />
echo CONVERT %INPUT% to %OUTPUT% ...<br />
ffmpeg.exe -i %INPUT% -t 30 -ac 1 -ab 128000 -f mp4 -acodec libfaac -genre Ringtone -y %OUTPUT%`
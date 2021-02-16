---
id: 496
title: 'Video hosting shootout: Youtube, Google, Vimeo, MySpace &#8230;'
date: 2006-10-10T17:53:16+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/10/video-hosting-shootout-youtube-google-vimeo-myspace/
permalink: /2006/10/10/video-hosting-shootout-youtube-google-vimeo-myspace/
categories:
  - audio-video
---
Let&#8217;s compare some of the main video hosting services. Now that YouTube has been sold to Google, maybe one of these is on the shopping list of Microsoft or Yahoo!

### The source: mobile video

The source file I used was recorded with my [Nokia N91 phone](http://blog.forret.com/2006/04/nokia-n91-first-impressions/) at a concert of [Billie King](http://www.billieking.be/) in the Ancienne Belgique (Brussels), at the end of their set. The cute girl you see hitting the cymbals is [Isolde Lasoen](http://blog.forret.com/2004/07/isolde-lasoen/), Belgium&#8217;s finest female drummer. The equally cute lead singer is Tine Reymer.

The input file is:

  * video format: MPEG-4 (compressed), 352 x 288 pixels, 15 fps 
  * filesize: 7.817.226 bytes 
  * duration: 0:01:54 (114 seconds) &#8211; so around 550 kbps bitrate 

This means that (a) the source material was already compressed and comes from a consumer-grade, low-quality camera, so it was no DVD quality to start with and (b) the source dimensions (352 wide) are smaller than most embedded players(400-480 wide) so the movie had to be [upsized](http://blog.forret.com/2006/08/how-to-upsize-an-image/), which adds some more distortion.

### Video hosting services

#### [Youtube](http://www.youtube.com)

  
Size: 425 x 350  
<!--more-->

  
\___

#### [Google Video](http://video.google.com)

<embed style="width:400px; height:326px;" id="VideoPlayback" type="application/x-shockwave-flash" src="http://video.google.com/googleplayer.swf?docId=3025258272166301499&#038;hl=en">
</embed>

[Isolde on Google Video](http://video.google.com/videoplay?docid=3025258272166301499&hl=en)  
Size: 400 x 326  
\___</p> 

#### [MySpace video](http://www.myspace.com/index.cfm?fuseaction=vids)

<embed src="http://lads.myspace.com/videos/vplayer.swf" flashvars="m=1247107081&#038;type=video&#038;cp=1" type="application/x-shockwave-flash" width="430" height="346">
</embed>

  
Get this video and more at [MySpace.com](http://vids.myspace.com/index.cfm?fuseaction=vids.individual&videoid=1247107081&n=2)  
Size: 430 x 346  
\___</p> 

#### [Dailymotion](http://www.dailymotion.com)

  
**[Isolde Lasoen &#8211; drummer of Billie King](http://www.dailymotion.com/video/xgpub_isolde-lasoen-drummer-of-billie-kin)**  
_Uploaded by [pforret](http://www.dailymotion.com/pforret)_  
Size: 425 x 364  
\___

#### [Vimeo](http://www.vimeo.com)

Vimeo actually shows the video in its original MP4 format: best quality, but full size (> 7MB). Moreover, it always loads the clip in an embedded Quicktime player, it does not wait until you press &#8216;play&#8217;.

<embed controller="true" width="400" height="324" src="http://clips2.vimeo.com/video_files/2006/10/04/vimeo.201788.be610a.mp4" autoplay="false" autostart="0">
</embed>

[Isolde Lasoen &#8211; Billie King concert](http://www.vimeo.com/clip=107874) on [Vimeo](http://www.vimeo.com/)  
Size: 400 x 324  
\___

#### [Revver](http://one.revver.com)

<embed type="application/x-shockwave-flash" src="http://flash.revver.com/player/1.0/player.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" scale="noScale" salign="TL" bgcolor="#ffffff" flashvars="width=480&#038;height=392&#038;mediaId=73325&#038;affiliateId=30495&#038;javascriptContext=true&#038;skinURL=http://flash.revver.com/player/1.0/skins/Default_Raster.swf&#038;skinImgURL=http://flash.revver.com/player/1.0/skins/night_skin.png&#038;actionBarSkinURL=http://flash.revver.com/player/1.0/skins/DefaultNavBarSkin.swf&#038;resizeVideo=True" wmode="transparent" height="392" width="480">
</embed>Size: 480 x 392

  
\___</p> 

#### [GoFish](http://www.gofish.com)

<embed src="http://www.gofish.com/player/fwplayer.swf" width="343" height="290" align="middle" quality="high" bgcolor="#000000" name="fwplayer" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" FlashVars="&#038;loc=blog&#038;gf=true&#038;ns=true&#038;fs=true&#038;gfid=30-1052784&#038;c=grey&#038;autoPlay=false&#038;getAd=false&#038;wm=true&#038;ct=true&#038;tb=false">
</embed>Size: 343 x 290

  
\___ </p> 

#### [ClipShack](http://clipshack.com)

<embed src="http://clipshack.com/player-cs-em.swf?key=9DAD57C4497E151E" width="430" height="354">
</embed>

[View Isolde on Clipshack](http://clipshack.com/Clip.aspx?key=9DAD57C4497E151E)  
Size: 430 x 354</p> 

### Observations

  * I haven&#8217;t researched which services use what kind of compression (need to set-up a packet sniffer for that).
  * The only service that does not use a Flash player + FLV Flash video is Vimeo. Their leave-the-format alone approach makes that the servers need less CPU (no transcoding necessary) but more bandwidth. Additionally, the lack of a Flash player means that there is no thumbnail, and the video starts loading right away.
  * Thanks to the fact that I made this blog template wide enough to show Flickr pictures at normal width (i.e. slightly wider than 500px), I could show all movies. If your layout is different, you might have trouble with the Revver (480px wide) format.
  * Most services take their thumbnail around the same time: some 5 seconds into the movie. Google Video takes it screenshot way further (around 15 seconds).
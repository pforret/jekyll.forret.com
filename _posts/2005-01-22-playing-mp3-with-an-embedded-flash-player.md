---
id: 112
title: Playing MP3 with an embedded Flash player
date: 2005-01-22T23:12:20+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/01/22/playing-mp3-with-an-embedded-flash-player/
permalink: /2005/01/22/playing-mp3-with-an-embedded-flash-player/
categories:
  - webdev
tags:
  - audio
  - flash
  - mp3
  - player
---
_(There is an updated post at [Click to hear the MP3 playlist (Apr 2006)](/2006/04/click-to-hear-the-mp3-playlist/))_

When you want to have an embedded player in a web page, there are several options: working with an embedded RealPlayer or WindowsMedia player &#8211; which do not all work on a Mac/Linux platform or with Firefox. Another option is using a Flash player. Flash/ShockWave is supported on all platforms and in all browsers. I went on a search for free embedded Flash players:

[SoundBlox](http://soundblox.blogspot.com/)![](http://www.pixagogo.com/S5ulBSyeMk-LC!ZNpCzEvPtos5SFc0QT0QD1NkrtlwbduXVXgRg1bovODRNJVPR6ZFfE4krC78gAe0Y5ziRCtXaKI8F-Pr5tP0OE1OFBmfE8A_/flash_soundblox.jpg) 
:   **License**: This is an Apache-style open source project by [Laszlo Systems](http://www.laszlosystems.com/), based on the Laszlo open-source RAD framework. It is free for non-commercial use. 
:   **Method**: you reference a Javascript file in your HTML headers, and then call a Javascript function with the URL of the playlist. (This is a problem for some sites. Blogger e.g. does not allow `<script>` tags in its posts, only in the template.) 
:   **Format**: it uses a proprietary XML format. <geek>[Files in XSPF format can be converted to the SoundBlox format through XSLT](http://gonze.com/xspf/xspf-draft-8.html#HowtoIconvertXSPFtoSoundblox)</geek> 

[MusicPlayer](http://musicplayer.sourceforge.net/) 
:![](http://www.pixagogo.com/S51S18yJ7cy7cYQ!9pE0My4DZyxx5H3ZVhGX07eBqnoP0yhk29w7f1TUlvUAbyerQTyz4vB1PRuQsnt0KUBNa7lddylWbvZlROn5cu!8sBzFSXjLw1Z7Ulxg__/flash_sourceforge.jpg) 
:   **License**: This is an open-source (SourceForge) project by [Fabricio Zuardi](http://idomyownstunts.blogspot.com/). It is free for non-commercial use. 
:   **Method**: you reference a Flash file and give it the URL of the playlist. The Flash file is embedded with the usual `<object>` and `<embed>` tags. 
:   **Format**: it uses the standard XSPF (XML Sound Playlist Format). Webjay can convert any HTML file/feed to XSPF!  
    Check my [Webjay wizard](http://www.smoothouse.org/smoothouse/webjay.asp) to generate the right HTML code for your page! 

[Halfbaked](http://web.uvic.ca/hrd/halfbaked/howto/audio.htm) 
:![](http://www.pixagogo.com/S5ulBSyeMk-LDku-QnTz45PDwqdcNl51UR!Wg!zOTVmdawiJ9hYDi5P2loruw1GHCahvEfOrVVCmBK-mfKotfNpDoOkRiNAHqQlUfyb6iPrjE_/flash_halfbaked.jpg) 
:   **License**: not explicitly stated. I presume it&#8217;s free to use. 
:   **Method**: you reference a Flash file and give it the URL of the MP3 file. The Flash file is embedded with the usual `<object>` and `<embed>` tags. 
:   **Format**: No playlist here, just one MP3 file. 

[GurusNetwork](http://www.gurusnetwork.com/work/steve/mp3player_demo5/) 
:![](http://www.pixagogo.com/S5O9iF!ik9WX7e3kNSFrbdwDFxDBreBqW0w7jgpuq29RfMqdq42rg5-itWJ5sQ1EkPEqMV2Pma0OIX032-5TY-QNNh6YfnuDvR87cJe7piWTg_/flash_gurus.jpg) 
:   **License**: not explicitly stated. I presume it&#8217;s free to use. 
:   **Method**: you reference a Flash file, which contains the playlist of the MP3 files to play. You can&#8217;t specify a self-made playlist 
:   **Format**: No idea. 

[Sonify](http://www.sonify.org/home/feature/remixology/026_mp3player/) 
:![](http://www.pixagogo.com/S5!pg7swZZxdE2PcwImUIkVlFen0-ZH8eGwi3JvgdZ3ApXROI3BdUlXFW2ArksoAx0FVqizR2h!3oidPsLVN9UoJKP6MXqVVgt1qxeftWY50g_/flash_sonify.jpg) 
:   **License**: not explicitly stated. I presume it&#8217;s free to use. 
:   **Method**: you reference a Flash file, which contains the playlist of the MP3 files to play. You can&#8217;t specify a self-made playlist 
:   **Format**: No idea. 

![](http://www.pixagogo.com/S5ulBSyeMk-LCLz-BTpLZYMVgx-fy8OZliQ5C6en9i!qg8HsiRDfxjC5XvyGFvZb0X!my76531IJfKmjXyYssO1-M1bkFs-z!02mCksZpS1Go_/flash_radioblog.jpg) [RadioBlogClub](http://www.radioblogclub.com/) 
:   **License**: free to use. 
:   **Method**: you host the player with all graphics and a `config.xml` file, that points to a playlist. 
:   **Format**: A PHP script creates an XML playlist for all MP3 present in a _local(!) folder.  
_ 

For more information on playlist formats (XSPF, SMIL, ASX, &#8230;), [check out Lucas Gonze&#8217;s excellent survey](http://gonze.com/playlists/playlist-format-survey.html).

There are also some commercial options: [hooverwebdesign.com](http://www.hooverwebdesign.com/flash-music-player.html) ($50), [wimpyplayer.com](http://www.wimpyplayer.com/) ($25), [soundnails.com](http://www.soundnails.com/) ($15)
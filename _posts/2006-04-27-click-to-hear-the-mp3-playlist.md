---
id: 319
title: Click to hear the MP3 (playlist)
date: 2006-04-27T10:59:01+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/04/click-to-hear-the-mp3-playlist/
permalink: /2006/04/27/click-to-hear-the-mp3-playlist/
categories:
  - music
  - podcast
tags:
  - audio
  - embed
  - flash
  - mp3
---
More than a year ago, I wrote an piece on [Playing mp3 with an embedded Flash player](http://blog.forret.com/2005/01/playing-mp3-with-an-embedded-flash-player/). Things change quickly in this area, so it&#8217;s time for an update.

These are all tools to play either individual MP3 files or playlists (e.g. podcast RSS feeds) in a web page. Most of them are based on Macromedia/Adobe Flash. Where possible, I&#8217;ll use my [Smoothpod Mashups](http://mashup.xampled.com) as an example feed.

### Hosted Service (insert HTML code)

[Pupuplayer Free](http://www.pupuplatters.com/pupuplayer/try.htm)
:   License: no details &#8211; I presume it&#8217;s free to use
:   Format: expects a podcast feed as input
:   [<img width="240" src="http://static.flickr.com/46/135829640_5aa1e2d9c8_m.jpg" alt="pupuplayer" />](http://www.flickr.com/photos/pforret/135829640/ "Photo Sharing")

[Pickle Player](http://www.podcastpickle.com/app/player/free.php)
:   License: no details &#8211; I presume it&#8217;s free to use
:   Format: expects a podcast feed as input &#8211; or can work with individual MP3 files
:   [<img width="240" src="http://static.flickr.com/54/135829641_6cd9b3bd62_m.jpg" alt="pickle player" />](http://www.flickr.com/photos/pforret/135829641/ "Photo Sharing")

[FeedPlayer](http://www.bigcontact.com/feedplayer.php)
:   License: no details &#8211; I presume it&#8217;s free to use
:   Format: expects a podcast feed as input
:   [<img width="240" src="http://static.flickr.com/51/135829639_1362320a38_m.jpg" alt="feedplayer" />](http://www.flickr.com/photos/pforret/135829639/ "Photo Sharing")

[Webjay](http://www.webjay.org/playthispage) (now Yahoo!)
:   free
:   can work with feeds or MP3 files, can also generate a playlist from an HTML page
:   [<img loading="lazy" width="240" src="http://static.flickr.com/52/135830153_23286969d2_m.jpg" alt="webjay" height="213" />](http://www.flickr.com/photos/pforret/135830153/ "Photo Sharing")

[Webjay Wizard](http://www.smoothouse.org/smoothouse/webjay.asp)
:   This tool of mine can also be used to create the HTML code for Windows Mediaplayer, RealPlayer or Quicktime embedded players

<!--more-->

### Software to install (on your server)

This means that at the very least you need FTP access to drop files on specific places on your server (not possible with Blogspot, e.g.).

[MusicPlayer](http://musicplayer.sourceforge.net/)
:   License: This is an open-source (SourceForge) project by Fabricio Zuardi. It is free for non-commercial use.
:   Method: you reference a Flash file and give it the URL of the playlist. The Flash file is embedded with the usual [object] and tags.
:   Format: it uses the standard [XSPF (XML Shareable Playlist Format)](http://www.xspf.org/). Webjay can convert any HTML file/feed to XSPF! Check the [Webjay wizard](http://www.smoothouse.org/smoothouse/webjay.asp) to generate the right HTML code for your page!
:   [<img loading="lazy" width="240" src="http://static.flickr.com/53/135832408_1f9edf15c1_m.jpg" alt="musicplayer" height="172" />](http://www.flickr.com/photos/pforret/135832408/ "Photo Sharing")

[SoundBlox](http://soundblox.blogspot.com/)
:   License: This is an Apache-style open source project by Laszlo Systems, based on the Laszlo open-source RAD framework. It is free for non-commercial use.
:   Method: you reference a Javascript file in your HTML headers, and then call a Javascript function with the URL of the playlist. (This is a problem for some sites. Blogger e.g. does not allow <script> tags in its posts, only in the template.)
:   Format: it uses a proprietary XML format. Files in XSPF format [can be converted](http://gonze.com/xspf/xspf-draft-8.html#HowtoIconvertXSPFtoSoundblox) to the SoundBlox format through XSLT

[Flash MP3 Player](http://www.jeroenwijering.com/?item=Flash_MP3_Player)
:   License: Creative commons, free for non-commercial use
:   Format: RSS files, XSPF files 
:   [<img loading="lazy" width="240" src="http://static.flickr.com/50/135831115_22692e77b4_m.jpg" alt="flashmp3" height="160" />](http://www.flickr.com/photos/pforret/135831115/ "Photo Sharing")

[GurusNetwork](http://www.gurusnetwork.com/work/steve/mp3player_demo5/)
:   License: not explicitly stated. I presume it’s free to use.
:   Method: you reference a Flash file, which contains the playlist of the MP3 files to play. You can’t specify a self-made playlist

[Sonify](http://www.sonify.org/home/feature/remixology/026_mp3player/)
:   License: not explicitly stated. I presume it’s free to use.
:   Method: you reference a Flash file, which contains the playlist of the MP3 files to play. You can’t specify a self-made playlist

[RadioBlogClub](http://www.radioblogclub.com/)
:   License: free to use.
:   Method: you host the player with all graphics and a config.xml file, that points to a playlist.
:   Format: A PHP script creates an XML playlist for all MP3 present in a local(!) folder.
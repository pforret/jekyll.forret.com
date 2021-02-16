---
id: 64
title: 'Google is listening: searching audio'
date: 2004-10-04T23:08:52+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/10/04/google-is-listening-searching-audio/
permalink: /2004/10/04/google-is-listening-searching-audio/
categories:
  - Google
---
There are rumours that Google would be rolling out search functionality for audio files. It is true that currently no sound files (.wav, .mp3, .wma, .mov, .ogg, &#8230;) files can be found by Google&#8217;s &#8220;normal search&#8221;, except for the odd [mis-indexed mp3 file](http://www.google.com/search?hl=en&ie=UTF-8&q=mp3+filetype%3Amp3).  
Multimedia search is a fascinating topic, let&#8217;s talk about audio for a moment:

**INDEXING**

  * target = WAV, MP3, WMA, RAM, AIFF, MOV, OGG, &#8230; files. Playlist files (M3U, ASX, SMIL, &#8230;) would be essential to include too, since they often are the link between a web page and the audio they publish, and also provide a link between &#8216;related&#8217; audio items. Maybe also MIDI files. 
  * 1<sup>st</sup> level indexing: no file content is indexed, only the URL and the content of the HTML page that referred to it. This is what Google Images does. 
  * 2<sup>nd</sup> level indexing: most audio formats have meta-data (artist, song, album, date, &#8230;) listed in the beginning of the file. This can be retrieved by just taking the first KB of an audio file and extracting that information &#8211; so one does not need to download the whole file. 
  * 3<sup>rd</sup> level indexing: the full content of the file is also converted to a text format and indexed. This is what Google currently does with PDF and DOC files. How does one convert audio to text? For spoken word, speech recognition comes to mind. An impressive example is [HP Speechbot](http://speechbot.research.compaq.com/), that has converted 14.928 hours of radio programs into searchable text. For music files, one could use the lyrics as a text representation. 
  * Now that [PODcasting](http://garage.docsearls.com/node/view/462) _(publishing MP3&#8217;s of discussions, conferences, radio programs &#8230; which are then included in RSS feeds and automatically downloaded by subscribed users)_ is becoming something of a hype (e.g. [Adam Curry&#8217;s Daily Sourcecode](http://radio.weblogs.com/0001014/categories/dailySourceCode/2004/10/04.html)), there will be a lot of information in audio-only format (I haven&#8217;t seen too many people also providing transcriptions &#8211; it&#8217;s a dirty job). It is crucial there that indexing is done on 3<sup>rd</sup> level, otherwise it is useless.

**SEARCHING**

  * **preview**: what should the results of a search look like? Just text (artist, song, album, year, filesize) or also audio samples? To make the analogy with Google Images, provide a 30 seconds 28Kbps MP3 preview file (which would be approx. 60KB) for every audio file found.
  *![](http://www.pixagogo.com/Tools/Thumbnails.aspx?thumb=S5%21pg7swZZxdHzLTM694VJ09AHShld9Cfg7jUuudWkkw-36pVKbmH7SeRwLSqzxXArLXKMocvBWoL5fziyDjIrH7MRATXQaPnLoriWRlVw4KU_) 
  * **ranking**: which search hits are shown first? Something like an audio _SoundRank_ could be invented. My guess is that this is easier than the [real Google PageRank](http://www-db.stanford.edu/%7Ebackrub/google.html), since audio files are typically an endpoint, they do not &#8216;cast votes&#8217; to other URLs, so there is no recursivity in calculating this SoundRank. Every page/playlist referring to an audio file would represent a vote. Maybe high PageRank sites should have a heavier weight.

Currently existing audio search engines: 
:   Search on &#8220;_Donna Summer_&#8221; 
:   [AllTheWeb Audio Search](http://www.alltheweb.com/?cat=mp3&cs=utf8&q=&rys=0&_sb_lang=pref): 104 results 
:   [Altavista Audio Search](http://www.altavista.com/audio/): 245 results 
:   [Espew.com](http://www.espew.com/): 53 results 
:   [Lycos Multimedia Search](http://multimedia.lycos.com/): 350 results 
:   [Singing Fish](http://www.singingfish.com/): **1867**(!) results 
:   More audio search engines can be found on [Google Directory: MP3 Search Engines](http://directory.google.com/Top/Computers/Multimedia/Music_and_Audio/Audio_Formats/MP3/Search_Engines/) 

**SIDE REMARKS**

  * What are the **legal** implications of pointing people to content that you don&#8217;t know is legal? I don&#8217;t see Google setting up BitTorrent/ISO search soon. 
  * There is a technology [Shazam Music Recognition](http://www.shazamentertainment.com/technology.shtml) that allows one to call a number, point your phone at the speakers while a song is playing and get the name/title/ringtone of that song on your mobile. Or this technology by [Fraunhofer Institute: query by humming](http://www.iis.fraunhofer.de/amm/download/qbh.pdf). 
  * Judging by the PODcasts I&#8217;ve already heard, any speech recognition used on it should be extremely robust, due to many VoIP audio issues: low bandwidth, delay, glitches. Hopefully this will improve in the future. [Skype](http://www.skype.com/), the [PODcast edition](http://secrets.scripting.com/2004/10/03#a85)?

Inspired by: [oristus.com](http://oristus.com/resources/gassle.html) via [Google Blogoscoped](http://blog.outer-court.com/archive/2004_10_04_index.html#109689492404200074)
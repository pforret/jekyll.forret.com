---
id: 145
title: 'REQ: Live mashup performance tool'
date: 2005-05-09T18:06:55+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/05/09/req-live-mashup-performance-tool/
permalink: /2005/05/09/req-live-mashup-performance-tool/
categories:
  - music
---
![](http://www.pixagogo.com/S5vpfnjbBPdPkCoGtoelrtOyTZponFTQxTaKKy0NdBLYhPOfyfOqFTf9y7dDH37kV2Gk9BxEQKPAFM1dsKhUXYipwezuDCWzScg-qkv24ZQJoAtIFaA7lU0U1UX1JWMBB-Vd2W5x6b1i8Ti4YSGKb4aA__/LesTruttes2.jpg)  
I have an idea for a software that I would love to use to do live mashup performances. It&#8217;s based on experiences I&#8217;ve had with different types of software and hardware tools, but none has the exact functionality I&#8217;m looking for. The inspiration I got comes from different sources:

  * a concert last week of [Les Truttes](http://www.lestruttes.be/) in the [Monk](http://www.ebru.be/Cafes/CafMonk.html). One of their numbers is a 15 minute instrumental medley of great riffs (rock/house/elektro/&#8230;). They play it with live instruments, but it should be possible to do something similar with a PC. When done right (like Les Truttes) the audience goes crazy. 
  * a reggae dub concert of [Zion Train](http://www.wobblyweb.com/zt/) I saw a wile back on [Couleur Cafe](http://www.couleurcafe.be) where the DJ used live dub FX on the singer&#8217;s voice and other instruments. I knew it could be done, but I had never seen it done so skillfully. 
  * some videos I saw from turntablist [DJ Z-Trip](http://djmonstermo.blogspot.com/2005/03/z-trip-videos-including-z-trip-and.html), doing live mashups with regular decks. Handling two decks is easy, three harder and four would be rather impossible. What if you could have 16 simultaneous tracks? 
  * using a [Roland MC-505 Groovebox](http://www.rolandus.com/products/details.asp?CatID=4&SubCatID=0&ProdID=MC-505). The pre-programmes rhythms are not always very inspired, but the user interface is very intuitive for live performances: basically an 8-track mix deck. 
  * using [Acid Pro 5.0](http://mediasoftware.sonypictures.com/products/acidfamily.asp): they already had the best timestretching capabilities, they&#8217;ve now added the groove patterns (for e.g. converting a square quantized beat into something with a shuffle feel). But Acid is purely an authoring tool, not for live performances 
  * using [Ableton Live 4.0](http://www.ableton.com/): they have some good features for live performances and the feel of the buttons is very musical (if you click on a loop just before the beat, the loop starts running along right on the beat, which feels very intuitive). No support for MP3 files or beatmapped tracks.

The goal here would be to improvise: just like a DJ does not know up front what tracks he&#8217;s gonna play in what order, the live mashup DJ wouldn&#8217;t know what his set is gonna be like. He just arrives with his portable PC , starts with e.g. a [Jon Cutler acapella](http://www.traxsource.com/index.php?act=show&step_id=71b09f4373d5c56773ad65fc568fb91c&ss=YWNh&sc=tracks&ob=r_date&so=1&pg=1) over Prince&#8217;s Controversy beat, throws in some Justin Timberlake vocals, keyboards from Depeche Mode and a De La Soul sample, goes to the break with Michael Jackson&#8217;s &#8220;Ma ma sa, ma ma coo sa&#8221; and Daft Punk with a wah-wah filter. Whatever.

![](http://www.pixagogo.com/S5vpfnjbBPdPk5w7fVtkR8HpT1MdVKLWSvNUEGn!SbvVuZmuslDvsJEBC1VVeI3utW4xNI9WYQb2bhcIXhKMpKVBrNmPIEXdcyiuchhvW8Pd2!7lVHr9qnD4oiwc3onlOiugsRauS15-S53ZzpLNQpRA__/mc505_a.jpg)  
So the software I have in mind would work in the following way:

  * **LIBRARY**: obviously you start with a large library of audio: 4-bar, 8-bar loops, one-shots, beatmatched accapella&#8217;s, in any of the WAV, MP3 or WMA formats. Like ACID, each of these loops/samples can contain length information and/or tuning. Using a C# loop in a G# track would cause the sound to be tuned up 7 semitones (or tuned down 5 semitones). You would have stuff like Missy Elliot accapellas, James Brown grunts, the Funky Drummer groove, the Blue Monday beat, maybe some famous movie quotes taken from DVDs (Monty Python, Chris Rock, Arnold, &#8230;) 
  * **TOOLBOX**: you arrange a number of these sound files on a kind of soundboard, a bit like the Ableton Track view, but without the vertical time axis. You can save and reload these toolbox configurations. Beatmapped tracks and loops are synced to the main BPM, one-shots can be either synced (they start on the first beat) or not (they start immediately when you click them). 
  * **MULTITRACK**: you can now drop these sounds on a multitrack, with mute/solo & volume control, a parametric EQ, some FX controls. 
  * **FX-MANIPULATION**: you can drag-n-drop FX on individual tracks or on the master (output) controls. The effects (delay, reverb, wah, compressor, &#8230;) can be manipulated in real-time. Ableton Live already does a pretty good job of this. 
  * **DRUMTRACK**: the drumtrack can again be split up in 8-16 instruments with separate volume and mute control and each part. This should work the way the MC-505 Groovebox works. 
  * **CONTROLLER**: ideally you could add a USB/FireWire/Midi controller to the setup so you can use real buttons, dials, sliders and LEDs. 
  * **BATTLE-MODE**: you can connect 2 systems to each other so they run on the same BPM, and 2 DJs can &#8216;compete&#8217; or &#8216;cooperate&#8217;. 
  * **MIC-AUX INPUT**: microphone and other input (guitars, keyboards, vinyl decks, &#8230;) can be routed through the software and used for sampling and FX manipulation.

Does something like this already exist? Would Sony or Ableton be close to creating it?
---
id: 136
title: iTunes and ID3 tags
date: 2005-03-11T11:51:54+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/03/11/itunes-and-id3-tags/
permalink: /2005/03/11/itunes-and-id3-tags/
categories:
  - music
  - podcast
---
I have a Sony MP-40 car radio that reads CDs with MP3 files. However, since I started using iTunes to create my MP3 CDs, I sometimes seem to lose the ID3 tags (Title/ Artist/ Album). I now know why: iTunes writes ID3v2 tags, and the Sony only handles ID3v1 ([MP40 PDF](http://www.docs.sony.com/release/CDXMP40.PDF)).  
Main differences: 

  * ID3v1 tags are written in a **128 byte fixed-length** field at the **end** of the audio file. 
    <pre>Song title 30 characters 
Artist     30 characters 
Album      30 characters 
Year        4 characters 
Comment    30 characters 
Genre       1 byte</pre>

  * ID2v2 can accommodate **variable length** tags, and allows storing them **at the beginning and/or the end** of the file. 
    <pre>+-----------------------------+
|      Header (10 bytes)      |
+-----------------------------+
|       Extended Header       |
| (variable length, OPTIONAL) |
+-----------------------------+
|   Frames (variable length)  |
+-----------------------------+
|           Padding           |
| (variable length, OPTIONAL) |
+-----------------------------+
| Footer (10 bytes, OPTIONAL) |
+-----------------------------+</pre>

There are advantages for both systems: 

  * **prepending** the ID3 info (add it in the beginning of the file) is essential for non-random access (e.g. streaming) and low bandwidth situations. You want to display the information as fast as possible, before the music starts playing. 
  * **appending** the ID3 data (add it at the end of the file) makes it easier to edit. If you have a 50MB music podcast, and you change the Album/Artist info (which is necessary in a lot of cases, the authors don't always pay attention to good tagging &#8211; thank god [Doppler](http://www.dopplerradio.net) can do this automatically), in a lot of cases the whole file has to be rewritten, and this takes several seconds. 

iTunes actually does the most sensible thing: it prepends ID3v2 tags and uses the &#8216;padding' to reserve about 1,6 KB of space. So if new ID3 info has to be added, it can take some of the place reserved by the padding and iTunes only needs to change the first 1,6KB of the file, and leave the rest untouched. This combines the advantages of appending and prepending.

> The default location of an ID3v2 tag is prepended to the audio so that players can benefit from the information when the data is streamed. It is however possible to append the tag, or make a prepend/append combination.  
> (from [id3.org](http://www.id3.org/id3v2.4.0-structure.txt))

Until I change my car stereo, my only option is to change the ID3 format of my files before I burn them to a MP3 CD. iTunes can do this (the &#8216;Advanced'/'Convert ID3 tags' option), but it's still a drag.
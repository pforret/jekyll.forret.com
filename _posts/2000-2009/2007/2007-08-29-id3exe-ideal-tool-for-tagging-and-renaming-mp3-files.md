---
id: 857
title: 'id3.exe &#8211; ideal tool for tagging and renaming MP3 files'
date: 2007-08-29T10:05:51+02:00
author: Peter
layout: post
guid: /2007/08/id3exe-ideal-tool-for-tagging-and-renaming-mp3-files/
permalink: /2007/08/29/id3exe-ideal-tool-for-tagging-and-renaming-mp3-files/
categories:
  - audio-video
  - music
  - tool
---
I want to mention a little tool that helped me out twice in the last week, and that I find very little info about online. It's a Windows command-line MP3 file tagger and renamer called `id3.exe`. Since I forgot where I downloaded it from and Google doesn't give me a clue either: here's where you can [download id3.exe](http://blog2.forret.com/wp-content/uploads/2007/08/id31.exe "id3.exe").

ID3.exe can do several things, of which I will just cite the things I actually used:

  * it can obviously set ID3 tags in MP3 files (that is, ID3v1 and v2). The first time it adds [ID3v2 tags](http://www.id3.org/id3v2.4.0-structure) which are stored in the beginning of the file (necessary when you need the info right when you start reading the file, like with streaming), the whole file has to be rewritten, but subsequent modifications are really fast.  
    `id3.exe -1 -2 -g [genre] -c "[Copyright notice]" -l "[Album name]" "%OUTPUT%"`
  * set the ID3 tags of one file to those of another. I needed this when I transcoded MP3 files to a lower bitrate with [LAME](http://lame.sourceforge.net/index.php). LAME does not copy the existing ID3 tags to the new file. So I used ID3.exe to just copy those from the source file.  
    `id3.exe -D %INPUT% -1 -2 "%OUTPUT%"`
  * Rename the file according to the MP3 tags. I had a big collection of MP3 files called &#8220;01 Track01&#8221; without any MP3 tags. I first set the ID3 tags based upon the folder structure (the folder name was the Album name), and then renamed them to &#8220;[Artist name] &#8211; [Album name] &#8211; [Track N°].mp3&#8221;.  
    `id3.exe -2 -f "%%a - %%l - %%t.rbs" "%OUTPUT%"`
  * Id3 can also deduct album names, artist, song titles and track number from the complete filename + path.

<!--more-->This is the complete usage of the version I used:

  
``<br />
id3 0.78 (2006080)<br />
usage: id3 [-1 -2 -3] [OPTIONS] filespec ...<br />
 -v             give verbose output<br />
 -d             clear existing tag<br />
 -t <title>     set tag fields<br />
 -a <artist><br />
 -l <album>             (i'th matched `*' wildcard  = %1-%9,%0<br />
 -n <tracknr>            path/file name/counters    = %p %f %x %X<br />
 -y <year>               value of tag field in file = %t %a %l %n %y %g %c)<br />
 -g <genre><br />
 -c <comment><br />
 -D <filename   duplicate tags read from filename<br />
 -f <template>  rename files according to template<br />
 -q <format>    print formatted string on standard output<br />
 -m             match variables in filespec<br />
 -R             search recursively<br />
 -M             preserve modification time of files<br />
 -V             print version info<br />
Only on last selected tag type:<br />
 -s <size>      set tag size<br />
 -E             only write if tag already exists<br />
 -u             update all standard fields<br />
 -rTYPE         erase all `TYPE' frames<br />
 -wTYPE <data>  write a `TYPE' frame```Report bugs to <<a href="mailto:squell@alumina.nl">squell@alumina.nl</a>>.`
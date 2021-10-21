---
title: 'Hybrid CD: making it run on Mac and PC'
date: 2005-03-04T11:41:51+01:00
layout: post
permalink: /2005/03/04/hybrid-cd-making-it-run-on-mac-and-pc/
categories:
  - technology
tags:
    - apple
    - hardware
    - cd

---
&#8220;[Just write it on a CD](http://en.wikipedia.org/wiki/Compact_Disc)&#8221; can mean a lot of things. There&#8217;s the plain audio CD (also &#8216;IEC 908&#8217; or &#8216;[Red Book](http://en.wikipedia.org/wiki/Red_Book_%28audio_CD_standard%29)&#8216; standard &#8211; 74 minutes of audio), the CD-ROM (or &#8216;[Yellow Book](http://en.wikipedia.org/wiki/CD-ROM)&#8216; &#8211; 700MB of data), the CD-R (&#8216;[Orange Book](http://en.wikipedia.org/wiki/CD-R)&#8216;) and I&#8217;m not even gonna go into stuff like SVCD ([Super Video CD](http://en.wikipedia.org/wiki/SVCD) &#8211; up to 60 minutes of video).

While these colorful standards define the lowest level of formatting, for a CD-R/CD-ROM you still have the issue of which filesystem to use on it. Apple has chosen for using its [Hierarchical File System (HFS)](http://en.wikipedia.org/wiki/Hierarchical_File_System) &#8211; the weird one with the resource forks &#8211; on CD media too, while PCs use the [ISO 9660](http://en.wikipedia.org/wiki/ISO_9660) standard (in its basic version: 8.3 filenames). PC-style CDs are readable on a Mac most of the time, while Mac disks are only accessible on a PC with [special software](http://www.macwindows.com/disks2.html). And it&#8217;s possible to create a CD with both a Mac and PC partition, each of them invisible for the other platform: the [hybrid disc](http://www.roxio.com/en/support/toast/toasthybrid.jhtml).  
<!--more-->

  
How does one create such a &#8216;Hybrid CD&#8217;? Some web pages will tell you it can only be done on a Mac, with [Roxio Toast](http://www.roxio.com/en/products/toast/).

> Clicking on the Advanced tab displays all of the available formats:
> 
>   1. **Mac Only**: A Macintosh only disc is a data disc that contains Macintosh data and is usable only on a Macintosh computer. 
>   2. **Mac & PC**: A Mac & PC disc is a cross-platform data disc that contains Macintosh and Windows data, and is usable on either operating system. All disc data will be visible to both Mac and Windows users. This is the easiest disc to create for both Mac and PC users. 
>   3. **DVD-ROM (UDF)**: Make a DVD-Video from a VIDEO_TS folder, or a data CD or DVD usable on computers with UDF reader software. 
>   4. **ISO9660**: An ISO9660 disc is usable on multiple operating systems, including Windows, Macintosh, UNIX, Linux, and DOS.  
>     e. Custom Hybrid Make a data disc that is usable on both Macintosh and Windows computers. Macintosh data will be visible to Macintosh users but not to Windows users and vice versa. This also allows Macintosh users to see the normal icons and window positions for the data while maintaining complete compatibility with Windows systems. 
>   5. **Mac Volume** : Record the entire contents of a local HFS Standard or HFS+ volume or partition to a disc.
> 
> (from [Roxio Knowledgebase](http://www.nohold.net/noHoldCust40/Prod_4/KnowledgePortal/KPScripts/amsviewer.asp?docid=7ce8c6e1572d44298e52ef05923e0383_721200420113.xml&amsstatsid=1145254))

This is not correct, there is at least one excellent tool for Windows: [MacImage](http://www.macdisk.com/macimgen.php3). It allows the creation of an CD image (.ISO file) with both an HFS and ISO9660 partition, with features like: decide per file on whether it appears on 1 or both partitions, let the disk autostart in MacOS, create the correct forks for Mac files (so they start up in the right program). The resulting .ISO file can then be written to a CD with Roxio or Nero or another CD authoring tool. It does what it advertises, and has a trial version (limited to 250MB images) on its website. Try it out!

If the developers of the software are listening, here&#8217;s some feature requests:

  * an &#8216;autorun wizard&#8217; for PC that would create the correct `<a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/shellcc/platform/shell/programmersguide/shell_basics/shell_basics_extending/autorun/autoplay_cmds.asp">autorun.inf</a>` file. It&#8217;s not at all complicated to do, but it makes so much sense to have it in the program. 
  * while the main program is quite intuitive, the bundled icon composer is not. I can imagine that Macs and PCs treat icons differently, and it is crucial to have an editor that creates icons for both platforms. But on my machine (Win 2003) it&#8217;s rather buggy. 
  * <strike>extend the command-line interface</strike>: nope, bar that, I reread the usage notes and the `-i` option (file/folder inclusion) does exactly what I had in mind. Neat!

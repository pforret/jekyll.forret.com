---
id: 162
title: 'Online software development: the WikiRAD'
date: 2005-07-15T19:30:23+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/07/15/online-software-development-the-wikirad/
permalink: /2005/07/15/online-software-development-the-wikirad/
categories:
  - internet
  - webdev
---
![](http://www.pixagogo.com/S5vpfnjbBPdPlrwuygMfdob-olIWIff6oBbPIZ4PT!HpEhgBfpfirYoi0ej8YwpLktVKNV7bWm9IjrgSfcPbOcjtDDhu29ZUL3MqLzKQuagDilby21y3R-rQjQXVcBnyvKwQ!3gEocuWELoBa!X5AHZw__/colorcoded.jpg)  
I love the idea of [social software](http://en.wikipedia.org/wiki/Social_software). Specifically, while it has been several years since I first encountered the [wiki](http://en.wikipedia.org/wiki/Wiki) concept ([Ward Cunningham](http://en.wikipedia.org/wiki/Ward_Cunningham)&#8216;s [c2.com](http://c2.com/cgi/wiki)), and I have been a [Wikipedia](http://en.wikipedia.org) contributor for a while, it is only since I checked out the emerging wiki hosting sites (see [Google and social software: wikis](http://blog.forret.com/blog/2005/06/google-and-social-software-wikis.html)) that I realize that wikis are becoming mainstream. Sites like [Wikispaces](http://www.wikispaces.org/), [JotSpot](http://www.jot.com/) and [PbWiki](http://pbwiki.com) are providing anyone with the tools to safely and effortlessly develop a body of knowledge.

On a seemingly unrelated point, I am currently developing some stuff in PHP (codeword &#8216;_photcasting_&#8216; but more on that later) and I realise my development environment is so amateuristic: I use a text-editor with FTP support (the last couple of years it has always been [Editplus](http://www.editplus.com)), and everytime I save some code, I overwrite the older version on the &#8216;live&#8217; server. I also develop on different PCs in a typical week (easily 3) and so I don&#8217;t have 1 development PC with PHP running where I could stage everything before I deploy it to my &#8216;production&#8217; site. With a bad broadband connection, when a &#8216;save&#8217; operation goes wrong, you end up with a &#8216;crucialstuff.php&#8217; script file that is empty (0 bytes) and brings your whole site down. Unfortunately, I know this from (repeated) experience.

Earlier today, I was thinking about these 2 issues one right after the other and bam: they collided. I have a new development paradigm: the **WikiRAD**.

### &#8216;WikiRAD&#8217; development

**WRITE CODE**

  * you write your code with your browser in a Wiki-style editor, with [syntax colouring](http://en.wikipedia.org/wiki/Syntax_highlighting) added (haven&#8217;t seen that in a Wiki editor yet). The code resides on a WikiRAD server (with [RAID5](http://en.wikipedia.org/wiki/Redundant_array_of_independent_disks) disks, daily backups, &#8230;). You need no other software on your PC to be able to develop software. 
  * the Wiki system takes care of [version management](http://en.wikipedia.org/wiki/Revision_control) and comparing of sources (Wikis already do this). Check in, check out, rollback, branching, merging, several developers on 1 codebase, &#8230; all possible! 
  * you can search your whole codebase for certain keywords, jump to class definitions &#8211; just like normal [IDE](http://en.wikipedia.org/wiki/Integrated_development_environment) 
  * when you look at your code, the names of classes, templates, libaries, .. become clickable, just like in a &#8230; wiki! 
  * there are tools to make writing code easier (class wizard, sample code, forum for questions) 
  * there&#8217;s a Google-like crawler that indexes code so it becomes available for other developers &#8211; this is real &#8220;open source&#8221;! 

**COMPILE AND RUN**

  * the WikiRAD server lets you develop in a &#8216;stage&#8217; mode (separate from your real system) and lets you deploy it to &#8216;production&#8217; once you&#8217;re sure. The production server can be your own server, with deployment via FTP or SSH. 
  * for the most popular languages, you also have a [lint](http://en.wikipedia.org/wiki/Lint_programming_tool) system that can detect obvious errors in your code before compiling. 
  * if the language you write in requires [compiling](http://en.wikipedia.org/wiki/Compiler) (like C++, C#, VB.NET, &#8230;) the server takes care of that &#8211; probably faster than on your own Pentium III. 
  * you no longer need to set up a &#8216;similar&#8217; server to test your software, it will run on the same kind of system, behind the same combination of routers and firewalls, with the same libraries installed. 
  * you can add breakpoints, see the console output, view values of variables, &#8230; 

So take [Sourceforge](http://sourceforge.net/), drop in a Wiki system for writing the code, a system for online debugging and profiling and tada: life has just become so much easier for a programmer. 

All remarks are welcome!

Technorati: <a href="http://technorati.com/tag/social%20software" rel="tag">social software</a> &#8211; <a href="http://technorati.com/tag/wiki" rel="tag">wiki</a> &#8211; <a href="http://technorati.com/tag/software" rel="tag">software</a> &#8211; <a href="http://technorati.com/tag/open%20source" rel="tag">open source</a>
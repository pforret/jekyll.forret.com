---
id: 364
title: 'waSendKeys: new Winadmin script'
date: 2006-06-29T10:39:18+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/06/wasendkeys-new-winadmin-script/
permalink: /2006/06/29/wasendkeys-new-winadmin-script/
categories:
  - winadmin
---
[<img  src="http://static.flickr.com/73/177594344_1f1bf99f43_m.jpg" style="float: right" width="111" height="240" alt="winadmin tools" />](http://www.flickr.com/photos/pforret/177594344/ "Photo Sharing")  
Over on the brand new, freshly painted [Winadmin scripts](http://winadmin.forret.com) site:  
[waSendKeys.wsf 1.0](http://winadmin.forret.com/2006/06/wasendkeys-version-10/) was just released.

> This one will start a program and send keystrokes to it. Use it to automate programs that only have an interactive user interface and do not support command-line parameters: defrag tools, export to CSV/HTML, … You can also use this script in a scheduled task!
> 
> Examples:  
> `waSendkeys D:foo.exe /wait:20 /keys:"{F9};^R;test;{ENTER};%{F4}"`  
> :: will send F9, CTRL+R, “test”, ENTER And ALT-F4
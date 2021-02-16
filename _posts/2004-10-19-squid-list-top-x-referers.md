---
id: 437
title: 'Squid: list top X referers'
date: 2004-10-19T17:55:54+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2004/10/squid-list-top-x-referers/
permalink: /2004/10/19/squid-list-top-x-referers/
categories:
  - Linux
---
If your Squid server logs the referers of its request (i.e.  
1. you&#8217;ve configured [squid-cache](http://www.squid-cache.org) with `--enable-referer-log` before compiling and  
2. you&#8217;ve included a `referer_log /var/log/squid/referer.log` in your `squid.conf` file),  
you can easily show top 50 of most popular referers with a simple Bourne shell:  
`#!/bin/bash`

  1. this script is &#8216;top_referers.sh&#8217;
  2. (c) 2004 Peter Forret &#8211; Open Source  
    REFERERS=/var/log/squid/referer.log  
    OUTPUT=/var/www/html/stats/referer.txt  
    MAXLINES=50``(<br />
echo REPORT MADE AT `date`<br />
echo =============================<br />
$OUTPUT``

Then add it to your crontab:  
`10 * * * * /(path)/top_referers.sh`  
and you have an hourly updated stat!  
Add a little HTML formatting if you&#8217;re aesthetically demanding!
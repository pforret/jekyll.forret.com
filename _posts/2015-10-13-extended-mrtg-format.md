---
id: 1405
title: 'Idea: Extended MRTG format'
date: 2015-10-13T10:37:28+02:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1405
permalink: /2015/10/13/extended-mrtg-format/
attitude_sidebarlayout:
  - default
image: /wp-content/uploads/2015/10/mrtg.png
categories:
  - idea
  - technology
tags:
  - idea
  - monitoring
  - mrtg
  - remix
---
Every tech geek has his/her preferred tools and one of mine is without doubt Tobi Oetiker&#8217;s [MRTG](https://oss.oetiker.ch/mrtg/) (Multi Router Traffic Grapher), which I&#8217;ve used to make pretty trend lines of much more than routers or traffic.

MRTG is a Perl program that grabs some measurement values (typically via SNMP) and plots them as time series. It creates &#8216;daily&#8217;, &#8216;weekly&#8217;, &#8216;monthly&#8217; and &#8216;yearly&#8217; graphs and the HTML page that shows the graphs and some min/max/average statistics to accompany the graphs. You&#8217;ve probably seen the typical MRTG output images before:

[<img loading="lazy" class="alignnone wp-image-1406 size-full" src="http://blog2.forret.com/wp-content/uploads/2015/10/mrtg.png" alt="Example of MRTG " width="500" height="135" srcset="https://blog.forret.com/wp-content/uploads/2015/10/mrtg.png 500w, https://blog.forret.com/wp-content/uploads/2015/10/mrtg-300x81.png 300w" sizes="(max-width: 500px) 100vw, 500px" />](http://blog2.forret.com/wp-content/uploads/2015/10/mrtg.png)

But MRTG can do more than just SNMP. In fact MRTG can plot any trend, as long as it gets its input in the form of 4 text lines:

> <pre>[I value]
[O Value]
[uptime]
[server name]</pre>

The I value becomes the green bar graph, the O value becomes the blue line, and the rest is only used to generate the following line in the generated HTML pages:

_The statistics were last updated **Tuesday, 13 October 2015 at 10:40**, at which time **&#8216;[server name]&#8217;** had been up for **[uptime]**._

<!--more-->I started using it with some basic local scripts that I created to give their output in this 4-line format:

<pre>Target[disk_space]: `/path/mrtg_diskspace.sh /dev/sda1`</pre>

But then I also discovered that I could use URLs as data input:

<pre>Target[nb_clients]: `curl -s "http://example.com/mrtg.php?count=nb_clients"`</pre>

And I developed [mrtg\_remote\_sensor](https://github.com/cinemapub/mrtg_remote_sensor): a library that allow me to easily monitor CPU/RAM (which I could also do through SNMP, but this is easier), and e.g. size of a folder, number of files in a folder, ping time to a LAN or Internet server. You just call the right URL and you get back 4 lines that MRTG knows how to process.

I like MRTG a lot, but writing the config files can be tricky. The syntax is quite unforgiving. That&#8217;s why I added a config mode to the URLs: when I add &config=1 to the URL I get not only the 4 lines with the values, but also the whole config block.  
``21122<br />
22677<br />
4 days 18:27<br />
server<br />
#### MRTG CONFIG ping_google ####<br />
Target[ping_google]: `curl -s "http://server/mrtg_remote_sensor/index.php?key=pingtime&param=www.google.com"`<br />
Title[ping_google]: ping time to google.com<br />
PageTop[ping_google]: <h1>ping time to google.com</h1><br />
LegendI[ping_google]: MIN ping time to google.com<br />
LegendO[ping_google]: MAX ping time to google.com<br />
YLegend[ping_google]: sec<br />
PNGTitle[ping_google]: ping_google<br />
ShortLegend[ping_google]: sec<br />
Options[ping_google]: growright,nobanner,gauge,nopercent<br />
MaxBytes[ping_google]: 1000000000<br />
kMG[ping_google]: u,m,,k,M,G<br />
`` 

<small></small>  
Now I just need to copy/paste all lines after the #### into my MRTG config file and it just works.

This is what I call &#8216;**Extended MRTG format**&#8216;. Happy graphing!
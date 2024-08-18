---
title: 'Idea: Extended MRTG format'
date: 2015-10-13T10:37:28+02:00
author: Peter
layout: post
permalink: /2015/10/13/extended-mrtg-format/
image: /wp-content/uploads/2015/10/mrtg.png
categories:
  - idea
tags:
  - monitoring
  - mrtg
  - remix
---
Every tech geek has his/her preferred tools and one of mine is without doubt Tobi Oetiker's [MRTG](https://oss.oetiker.ch/mrtg/) (Multi Router Traffic Grapher), which I've used to make pretty trend lines of much more than routers or traffic.

MRTG is a Perl program that grabs some measurement values (typically via SNMP) and plots them as time series. It creates &#8216;daily', &#8216;weekly', &#8216;monthly' and &#8216;yearly' graphs and the HTML page that shows the graphs and some min/max/average statistics to accompany the graphs. You've probably seen the typical MRTG output images before:

[<img  class="alignnone wp-image-1406 size-full" src="http://blog2.forret.com/wp-content/uploads/2015/10/mrtg.png" alt="Example of MRTG " width="500" height="135" srcset="https://blog.forret.com/wp-content/uploads/2015/10/mrtg.png 500w, https://blog.forret.com/wp-content/uploads/2015/10/mrtg-300x81.png 300w" sizes="(max-width: 500px) 100vw, 500px" />](http://blog2.forret.com/wp-content/uploads/2015/10/mrtg.png)

But MRTG can do more than just SNMP. In fact MRTG can plot any trend, as long as it gets its input in the form of 4 text lines:

```
[I value]
[O Value]
[uptime]
[server name]
```

The 'I' value becomes the green bar graph, the 'O' value becomes the blue line, and the rest is only used to generate the following line in the generated HTML pages:

_The statistics were last updated **Tuesday, 13 October 2015 at 10:40**, at which time **&#8216;[server name]'** had been up for **[uptime]**._

I started using it with some basic local scripts that I created to give their output in this 4-line format:
```
Target[disk_space]: `/path/mrtg_diskspace.sh /dev/sda1`
```
But then I also discovered that I could use URLs as data input:

```
Target[nb_clients]: `curl -s "http://example.com/mrtg.php?count=nb_clients"`
```

And I developed [cinemapub/mrtg_remote_sensor](https://github.com/cinemapub/mrtg_remote_sensor): a library that allow me to easily monitor CPU/RAM (which I could also do through SNMP, but this is easier), and e.g. size of a folder, number of files in a folder, ping time to a LAN or Internet server. You just call the right URL and you get back 4 lines that MRTG knows how to process.

I like MRTG a lot, but writing the config files can be tricky. The syntax is quite unforgiving. That's why I added a config mode to the URLs: when I add &config=1 to the URL I get not only the 4 lines with the values, but also the whole config block.  

```
21122
22677
4 days 18:27
server
#### MRTG CONFIG ping_google ####
Target[ping_google]: `curl -s "http://server/mrtg_remote_sensor/index.php?key=pingtime&param=www.google.com"`
Title[ping_google]: ping time to google.com
PageTop[ping_google]: <h1>ping time to google.com</h1>
LegendI[ping_google]: MIN ping time to google.com
LegendO[ping_google]: MAX ping time to google.com
YLegend[ping_google]: sec
PNGTitle[ping_google]: ping_google
ShortLegend[ping_google]: sec
Options[ping_google]: growright,nobanner,gauge,nopercent
MaxBytes[ping_google]: 1000000000
kMG[ping_google]: u,m,,k,M,G
```


Now I just need to copy/paste all lines after the #### into my MRTG config file, and it just works.

This is what I call **Extended MRTG format**. Happy graphing!
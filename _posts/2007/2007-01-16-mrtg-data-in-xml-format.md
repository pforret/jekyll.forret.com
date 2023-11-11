---
id: 627
title: MRTG data in XML format
date: 2007-01-16T00:30:46+01:00
author: Peter
layout: post
guid: /2007/01/mrtg-data-in-xml-format/
permalink: /2007/01/16/mrtg-data-in-xml-format/
categories:
  - tool
---
Get ready for a lot of acronyms in this post: &#8220;How to create a good XML-based API for MRTG sensor data&#8221;.

#### MRTG

> [MRTG](http://oss.oetiker.ch/mrtg/) (Multi Router Traffic Grapher) is a tool to monitor the traffic load on network-links. It is widely used around the world to generate web pages containing images that provide a live visual representation of this traffic. MRTG is mainly a Swiss open-source product written by [Tobias Oetiker](http://tobi.oetiker.ch/) from ETH Zurich with [some help from others](http://oss.oetiker.ch/mrtg/cast/index.en.html). 

When used in its basic form (without [RRDTOOL](http://oss.oetiker.ch/rrdtool/)), it generates output like the following:  
[<img  src="http://farm1.static.flickr.com/103/271195136_0b76056076.jpg" width="500" height="230" alt="Flickr: #photos per hour" />](http://www.flickr.com/photos/pforret/271195136/ "Photo Sharing")

#### MRTG &#8220;API&#8221;

While MRTG was developed with network devices (routers) in mind, it can be used to show the trend of any numeric value over time. For that, it has a very simple input API: it expects 4 lines of text:  
`<br />
Line 1: current state of the first variable, normally 'incoming bytes count'<br />
Line 2: current state of the second variable, normally 'outgoing bytes count'<br />
Line 3: string (in any human readable format), telling the uptime of the target.<br />
Line 4: string, telling the name of the target.` ([*](http://oss.oetiker.ch/mrtg/doc/mrtg-reference.en.html))  
So there's maximum 2 variables, which should be the same order of magnitude (or the automatic scaling of the Y-axis will make the smaller one undistinguisable of 0). The uptime and name show up in the &#8220;_at which time &#8216;rou-rz-gw.ethz.ch' had been up for 160 days, 8:02:55._&#8221; in the header of the HTML page. 

#### MRTG in XML

In this world of REST, XMLRPC and SOAP interfaces, this seems so limited. Let's try to make an XML format that allows the following:

  * it should minimally contain the four data lines cited above
  * it should be possible to add any parameter that influences the MRTG result (HTML and/or image) so that the XML as such is enough to define the whole MRTG configuration

This could be a minimal implementation:<!--more-->

  
`<br />
<MRTGresponse><br />
<Sensors &nbsp;&nbsp;name="Second Life activity" &nbsp;&nbsp;date="2007-01-15 22:45:55 GMT" &nbsp;&nbsp;uptime="45 days, 5:55:12" ><br />
<SensorI value="25334" name="# logged-in users " /><br />
<SensorO value="36951" name="# Linden$ bought per hour" /><br />
</Sensors><br />
</MRTGresponse><br />
` 

And this could be a more extended example:  
`<br />
<MRTGresponse><br />
<Sensors<br />
&nbsp;&nbsp;name="Second Life activity"<br />
&nbsp;&nbsp;date="2007-01-15 22:45:55 GMT"<br />
&nbsp;&nbsp;timezone="GMT-4"<br />
&nbsp;&nbsp;uptime="45 days, 5:55:12"<br />
&nbsp;&nbsp;showgraphs="DWM"<br />
&nbsp;&nbsp;countertype="gauge"<br />
&nbsp;&nbsp;maxvalue="50000"<br />
&nbsp;&nbsp;refresh="3600" ><br />
<SensorI<br />
&nbsp;&nbsp;value="25334"<br />
&nbsp;&nbsp;color="#FF6600"<br />
&nbsp;&nbsp;unit="user"<br />
&nbsp;&nbsp;name="# logged-in users " /><br />
<SensorO<br />
&nbsp;&nbsp;value="36951"<br />
&nbsp;&nbsp;color="#66FF00"<br />
&nbsp;&nbsp;unit="L$/h"<br />
&nbsp;&nbsp;name="# Linden$ bought per hour" /><br />
</Sensors><br />
</MRTGresponse><br />
` 

This would allow a script to generate a fitting `mrtg.conf` configuration file from any reading of the data. The response is bigger than the simple 4 text lines, but in these days of cheap bandwidth and lots of CPU, that's not really an issue. It's also easy to convert the XML format into the 4 lines, if need be.

Anything I forgot?
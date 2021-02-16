---
id: 433
title: Probe disk performance (MRTG)
date: 2004-11-03T14:41:28+01:00
author: Peter
layout: post
guid: http://blog.forret.com/2004/11/probe-disk-performance-mrtg/
permalink: /2004/11/03/probe-disk-performance-mrtg/
categories:
  - Linux
---
The `hdparam` can be used to monitor the throughput speed of a hard disk:  
`# <strong>hdparm -tT /dev/hda</strong>`  
`/dev/hda:<br />
Timing buffer-cache reads:   888 MB in  2.00 seconds = 444.00 MB/sec<br />
Timing buffered disk reads:   20 MB in  3.30 seconds =   6.06 MB/sec`

This would be an interesting performance metric to see plotted against time. So let&#8217;s convert it to a format ready for MRTG.

  * The only numbers we need are the last ones: resulting speed. This can be parsed from the output as follows:  
    `#hdparm -tT /dev/hda | gawk -F = "/seconds/ { print $2}"`&#160;</p> 
    <pre>440.00 MB/sec   3.30 MB/sec</pre>

  * if we could suppose that the results will always be in &#8220;MB/sec&#8221;, we could parse out the numbers with  
    `(...) | gawk "{print $1}"`  
    and then add a line to our MRTG config files to adjust the units:  
    `kMG[_]: M,G,T,P,X`  
    But let&#8217;s say that KB/sec or GB/sec speeds are possible.
  * One `gawk` can do the conversion trick:  
    `#(...) | gawk "/GB/ {print $1*1000000000} /MB/ {print $1*1000000} /KB/ {print $1*1000}"`&#160;</p> 
    <pre>440000000 3300000</pre>

  * To have a complete MRTG-ready output, we also add the boot time on line 3 and the name of the MRTG output on line 4
  * Q: Do we need 2 `gawk`s one after the other? Can&#8217;t one do it?  
    A: You could do it in 1, I guess, but the parsing would be more complex. I use 2 because the FS (field separator) changes: the first gawk uses the &#8216;=&#8217; character, the second uses the normal whitespace.
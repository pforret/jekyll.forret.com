---
id: 436
title: Calculate hit rate from a log file
date: 2004-10-21T10:30:13+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2004/10/calculate-hit-rate-from-a-log-file/
permalink: /2004/10/21/calculate-hit-rate-from-a-log-file/
categories:
  - Linux
---
You have a huge file that contains one line per request/transaction. Some of the lines are of one type (e.g. &#8216;HIT&#8217;), some of another (e.g. MISS). Let&#8217;s say you want to calculate the hitrate, but as fast as possible.  
We take a Squid log file of about 140MB. How long does it take to count how many lines it has?  
`# time wc -l /var/log/squid/access.log<br />
845212 /var/log/squid/access.log<br />
real 0m6.523s` (about 21.4 MB/s or 130.000 lines/s)

And now let&#8217;s just filter out the lines containing &#8216;HIT&#8217; and count those:  
`#time sh -c "grep -i HIT /var/log/squid/access.log | wc -l"`  
Wow! This takes ages (I stopped it after 15 minutes) and the `grep` takes 100% CPU all the time. So let&#8217;s look for another solution.

Maybe `gawk`? First let&#8217;s see if it is much slower than `wc -l` for counting lines:  
`# time gawk "END {print NR}" /var/log/squid/access.log<br />
845907<br />
real 0m26.129s` (5.3 MB/s or 32.000 lines/s &#8211; 4 times slower)  
And now let it count the hits too:  
`]# time gawk "BEGIN {hit=0} /HIT/ {hit = hit+1} END {print hit/NR*100}" '/var/log/squid/access.log'<br />
84.5023<br />
real 0m32.836s` (4MB/s or 25.000 lines/s &#8211; slow but acceptable)

Do we actually need a count on the whole file? What if we just took the last (i.e. most recent) 100.000 lines? The result would be a better indication of what the current hit rate is, and the speed of calculation would be more predictable.  
`# time sh -c "tail -100000 /var/log/squid/access.log | gawk 'BEGIN {hit=0} /HIT/ {hit = hit+1} END {print hit/NR*100}'"<br />
92.305<br />
real 0m3.332s` (30.000 lines/s)

It is actually a bit slower the first time you run it, probably due to disk or filesystem caching. So if you want your hit rate calculation to take less than 2 seconds, you could take the last 50.000 lines. Done!
---
title: Calculate hit rate from a log file
date: 2004-10-21T10:30:13+02:00
author: Peter
layout: post
permalink: /2004/10/21/calculate-hit-rate-from-a-log-file/
categories:
    - bash
tags:
    - benchmark
---
You have a huge file that contains one line per request/transaction. Some lines are of one type (e.g. 'HIT'), some of another (e.g. MISS). Let's say you want to calculate the hit-rate, but as fast as possible.  
We take a Squid log file of about 140MB. How long does it take to count how many lines it has?  
```bash
$ time wc -l /var/log/squid/access.log
845212 /var/log/squid/access.log
real 0m6.523s
```
(about 21.4 MB/s or 130.000 lines/s)

And now let's just filter out the lines containing 'HIT' and count those:
```bash
$ time sh -c "grep -i HIT /var/log/squid/access.log | wc -l"
```  
Wow! This takes ages (I stopped it after 15 minutes) and the `grep` takes 100% CPU all the time. So let's look for another solution.

Maybe `gawk`? First let's see if it is much slower than `wc -l` for counting lines:  
```bash
$ time gawk "END {print NR}" /var/log/squid/access.log
845907
real 0m26.129s
``` 
(5.3 MB/s or 32.000 lines/s &#8211; 4 times slower)  

And now let it count the hits too:  
```bash
$ time gawk "BEGIN {hit=0} /HIT/ {hit = hit+1} END {print hit/NR*100}" '/var/log/squid/access.log'
84.5023
real 0m32.836s
```
(4MB/s or 25.000 lines/s &#8211; slow but acceptable)

Do we actually need a count on the whole file? What if we just took the last (i.e. most recent) 100.000 lines? The result would be a better indication of what the current hit rate is, and the speed of calculation would be more predictable.  
```bash
$ time sh -c "tail -100000 /var/log/squid/access.log | gawk 'BEGIN {hit=0} /HIT/ {hit = hit+1} END {print hit/NR*100}'"
92.305
real 0m3.332s
```
(30.000 lines/s)

It is actually a bit slower the first time you run it, probably due to disk or filesystem caching. So if you want your hit rate calculation to take less than 2 seconds, you could take the last 50.000 lines. Done!

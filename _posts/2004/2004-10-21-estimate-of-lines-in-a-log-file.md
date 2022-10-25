---
title: 'Estimate # of lines in a log file'
date: 2004-10-21T13:30:27+02:00
author: Peter
layout: post
permalink: /2004/10/21/estimate-of-lines-in-a-log-file/
categories:
  - Linux
---
Let&#8217;s say you need an (approximate) count of the number of lines in a huge file. The most obvious way of calculating this would be using `wc`, but this actually can be quite slow:  
```bash
> time wc -l /var/log/squid/access.log
2812824 /var/log/squid/access.log
real    0m43.988s
# (counting is done at 64.000 lines/sec)
```

Running `wc` without the `-l` (only count lines) would be ever slower because it would also count the words, instead of just the LF (linefeed) characters. But using `wc -c` is very fast! This is because the filesystem keeps track of each file's filesize (= number of characters/bytes), so the file does not even have to be read to give this number. Can we estimate the # of lines from the # of bytes?

For the type of file we are talking about here (a Squid log file) there actually is a way. The file is more or less 'square', meaning that every line is about the same length (it contains date, status, URL, ...)

If we take the beginning of the file (the first 10000 lines):  
`# head -10000 /var/log/squid/access.log | wc
  10000  100000 1775257`  
we see that every line is about 177 chars long.

The end of the file (the last 10000 lines):  
`# tail -10000 /var/log/squid/access.log | wc<br />
  10000  100000 2047887`  
gives us a number of 204 chars/line.

Let&#8217;s take some more data and combine both:  
`# ( head -50000 /var/log/squid/access.log ; tail -50000 /var/log/squid/access.log ) | wc<br />
 100000 1000000 19488905`  
which gives us an average of 195 chars/line.

A file size of 533.229.920 bytes (533MB) would lead us to estimate the # of lines to 2.734.512, where the actual # of lines is 2.818.184 (3% difference). That is: we lose 3% accuracy but the calculation takes almost no CPU time, instead of 45 seconds. This might be a trade-off you are willing to accept!
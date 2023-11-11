---
title: 'It's the latency, stupid!'
date: 2004-11-01T16:47:34+01:00
author: Peter
layout: post
permalink: /2004/11/01/its-the-latency-stupid/
categories:
  - bandwidth

tags:
    - network
    - latency
---
While working on some bandwidth-related stuff (my [bandwidth calculator](https://toolstud.io/data/bandwidth.php)), I came across an excellent article on [&#8220;latency vs. bandwidth&#8221; by Stuart Cheshire](http://www.stuartcheshire.org/rants/Latency.html). It was originally written in 1996, so focuses a lot on modems, but Fact 1, 2 and 4 are still valid.

His points:

* Fact 1: **Making more bandwidth is easy**: You can just put enough slow connections in parallel to get a fast one.</p> 
    
* Fact 2: **Once you have bad latency you're stuck with it**: Parallel devices, compression, &#8230; nothing helps! </p> 
        
* Fact 3: **Current consumer devices have appallingly bad latency**: Modems are evil (but now, with cable and ADSL, this is less of an issue)</p> 
            
* Fact 4: **Making limited bandwidth go further is easy**: Compression and caching help a lot. (This article was written about the time [MP3](http://en.wikipedia.org/wiki/Mp3) was invented, but long before it became hugely popular. [DivX](http://en.wikipedia.org/wiki/Divx) came later, in 1999) 

The following calculation is eye-opening:

> The distance from Stanford to Boston is 4320km.  
> The speed of light in vacuum is 300 x 10^6 m/s.  
> The speed of light in fibre is roughly 66% of the speed of light in vacuum.  
> The speed of light in fibre is 300 x 10^6 m/s * 0.66 = 200 x 10^6 m/s.  
> The one-way delay to Boston is 4320 km / 200 x 10^6 m/s = 21.6ms.  
> The round-trip time to Boston and back is 43.2ms.  
> The current ping time from Stanford to Boston over today's Internet is about 85ms:  

```
[cheshire@nitro]$ ping -c 1 lcs.mit.edu
PING lcs.mit.edu (18.26.0.36): 56 data bytes
64 bytes from 18.26.0.36: icmp_seq=0 ttl=238 time=84.5 ms
```

> So: the hardware of the Internet can currently achieve within a factor of two of the speed of light.

Definitions of latency:

> _Latency, a synonym for delay, is an expression of how much time it takes for a packet of data to get from one designated point to another_ - [techtarget.com](http://whatis.techtarget.com/definition/0,,sid9_gci212456,00.html)
    
> _Latency is the time a message takes to traverse a system_ - [wikipedia.org](http://en.wikipedia.org/wiki/Latency)

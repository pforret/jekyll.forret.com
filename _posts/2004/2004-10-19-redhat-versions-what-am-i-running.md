---
id: 438
title: 'Redhat versions: what am I running?'
date: 2004-10-19T16:32:32+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2004/10/redhat-versions-what-am-i-running/
permalink: /2004/10/19/redhat-versions-what-am-i-running/
categories:
  - Linux
---
If you manage multiple RedHat servers, or if you just stumble on a Linux server, and you have no idea what kind of machine it is, nor what the version of the OS is, try the following commands:

> \# **more /proc/version**  
> Linux version 2.4.20-24.9 (bhcompile@porky.devel.redhat.com)  
> (gcc version 3.2.2 20030222 (Red Hat Linux 3.2.2-5)) #1  
> Mon Dec 1 11:35:51 EST 2003  
> \# **more /proc/cpuinfo**  
> vendor_id : GenuineIntel  
> model name : Intel(R) Pentium(R) 4 CPU 2.00GHz  
> cpu MHz : 1992.653  
> cache size : 512 KB  
> (&#8230;)  
> [bogomips](http://www.tldp.org/HOWTO/BogoMips/) : 3971.48  
> \# **more /proc/meminfo**  
> MemTotal: 1030872 kB  
> (&#8230;)  
> \# **cat /etc/redhat-release** (only for RedHat distributions)  
> Red Hat Linux release 9 (Shrike) 

So now you know: a 2GHz Pentium 4 with 1GB of memory, running RedHat 9 &#8216;Shrike&#8217;.  
For more info on RedHat versions: [Taroon, Shrike, Enigma, &#8230;](http://www.unixgods.org/~tilo/redhat_versions.html)
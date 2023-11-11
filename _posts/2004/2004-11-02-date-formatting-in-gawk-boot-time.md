---
id: 434
title: 'Date formatting in GAWK: boot time'
date: 2004-11-02T15:17:54+01:00
author: Peter
layout: post
permalink: /2004/11/02/date-formatting-in-gawk-boot-time/
categories:
    - linux
tags:
    - devops
    - redhat
---
I have one server with apparently an exceptional stability:  

```bash
$ uptime
3:45pm  up 524 days,  1:22,  1 user,  load average: 0.44, 0.16, 0.13
```

Unfortunately I know this is not correct (I remember rebooting it some weeks ago). So what are other ways to get the date/time of the last boot?

Looking at the [RedHat manuals](http://www.redhat.com/docs/manuals/linux/RHL-7.3-Manual/ref-guide/s1-proc-topfiles.html), the following thing should work too:  

```bash
$ cat /proc/stat
cpu 33813143 210619911 30093342 59435750
cpu0 33813143 210619911 30093342 59435749
(...)
btime 1096157569
```

The `btime` gives us the last boot time in seconds since 1 Jan 1970. I can find and convert it with `gawk`:  

```bash
$ gawk '/btime/ { print (`date +%s` - $2) / (3600 * 24.0) ,"days -",strftime("%a %b %d %H:%M:%S %Z %Y",$2)}' /proc/stat
38.6473 days - Sun Sep 26 02:12:49 CEST 2004
```

Which gives us an uptime of 38,6 days &#8211; that looks more like it!

Another way of calculating the uptime:  

```bash
$ gawk "/cpu/ {print $1,($2 + $3 + $4 + $5)/(3600 * 24 * 100)}" /proc/stat
cpu 38.6515
cpu0 38.6515
```
Confirmation of the previous measurement!

```bash
$ cat /proc/uptime
45282758.17 663091.26
```

The first number is the # of seconds since last boot. The other one (idle time) we don't need. What is that in days? 

```bash
$ gawk "{print $1/(3600 * 24.0)}" /proc/uptime
524.106
```

This is where the wrong data is coming from! So I'll ignore this data.

Remark: This server is one of my oldest ones and is still running _Redhat 7.2 (Enigma)_. Looks like this bug was fixed in later versions of RedHat, since none of my other servers have it.

---
id: 435
title: Probe average cpu utilisation (MRTG)
date: 2004-10-21T23:44:27+02:00
author: Peter
layout: post
guid: /2004/10/probe-average-cpu-utilisation-mrtg/
permalink: /2004/10/21/probe-average-cpu-utilisation-mrtg/
categories:
  - Linux
---
There are two main tools to keep track of your CPU usage: `top` and `vmstat`.

  * `top` is an interactive tool: it shows you the CPU usage of each process, as well as overall statistics, updated every 5 seconds. It's good for hands-on checking.  
    `<br />
#top  17:18:34  up 2 days,  8:14,  3 users,  load average: 0.00, 0.00, 0.00<br />
47 processes: 46 sleeping, 1 running, 0 zombie, 0 stopped<br />
CPU states:   0.1% user   0.1% system   0.0% nice   0.0% iowait  99.6% idle<br />
Mem:  1030872k av, 1022256k used,    8616k free,<br />
                         0k shrd,  104844k buff<br />
     777088k actv,      12k in_d,   22296k in_c<br />
Swap: 2048276k av,    8120k used, 2040156k free<br />
                                 640080k cached<br />
  PID USER     PRI  NI  SIZE  RSS SHARE STAT %CPU %MEM   TIME CPU COMMAND<br />
30776 root      19   0  1140 1140   852 R     0.9  0.1   0:00   0 top<br />
    1 root      15   0   504  464   436 S     0.0  0.0   0:03   0 init       (...)`  
    But say you want to get just one number (percentage) back, so you can use it for logging. 
  * `vmstat` wil give you the following output:  
    `<br />
#vmstat<br />
procs                      memory      swap          io     system      cpu<br />
r  b  w   swpd   free   buff  cache   si   so    bi    bo   in    cs us sy id<br />
0  0  0   7964   8804 104712 640224    0    0     2    16  129    27  0  0 100<br />
` </p> 
    You can run `vmstat 1 5` to get 5 consecutive measurements (1 second apart). The number we want is the average CPU usage, or (100% &#8211; idle). The following command will do the job:  
    `#vmstat 1 5 | gawk "/0/ {tot=tot+1; id=id+$16} END {print 100 - id/tot}"`  
    gives  
    `0.4` </li> </ul>
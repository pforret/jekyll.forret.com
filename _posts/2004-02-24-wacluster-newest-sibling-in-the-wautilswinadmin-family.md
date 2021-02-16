---
id: 5
title: 'waCluster &#8211; newest sibling in the waUtils/WinAdmin family'
date: 2004-02-24T19:19:03+01:00
author: Peter
layout: post
categories:
    - winadmin
    - windows
---
I&#8217;ve just finished [waCluster.wsf 1.0](https://github.com/pforret/WinAdmin) &#8211; a script for managing Network Load Balancing on Win2K servers.  
It takes care of stopping/starting load-balanced ports, related services.

How easy is this for performing a rolling upgrade on a web server?  

`waCluster RESTART /wlbs:all /svc:iis /wait:300`
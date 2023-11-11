---
id: 5
title: 'waCluster: newest sibling in the waUtils/WinAdmin family'
date: 2004-02-24T19:19:03+01:00
author: Peter
layout: post
categories:
    - winadmin
    - windows
---
I've just finished [waCluster.wsf 1.0](https://github.com/pforret/WinAdmin), a Windows script for managing Network Load Balancing on Win2K servers.  
It takes care of stopping/starting load-balanced ports, related services.

How easy is this for performing a rolling upgrade on a web server?  

`waCluster RESTART /wlbs:all /svc:iis /wait:300`
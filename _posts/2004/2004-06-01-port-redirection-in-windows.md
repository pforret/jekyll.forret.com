---
id: 25
title: Port redirection in Windows
date: 2004-06-01T23:49:17+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/06/01/port-redirection-in-windows/
permalink: /2004/06/01/port-redirection-in-windows/
categories:
  - tool
  - webdev
  - windows
---
We use port redirection/proxy often on our platforms. In the production setup, separate (Linux-based) servers take care of this, but for our development and testing environment, we need port redirection for Windows system. I generally use 2 command-line packages:

  * [stunnel.org](http://www.stunnel.org/): TCP proxy for adding or removing TLS (tunnel encryption aka SSL) from a stream 
  * [rinetd](http://www.boutell.com/rinetd/): plain TCP proxy for that accepts TCP connections and just transfers them to another TCP/IP address/port 
    Typical use of _stunnel_: </li> 
    
      * adding TLS to a non-secure **server** (you will need a server certificate for this), HTTP to HTTPS, SMTP to SMTPS, POP3 to POP3S, FTP to FTPS, &#8230; `stunnel -d smtps -r localhost:smtp` 
      * adding TLS to a non-secure **client**, e.g. a mail client without SMTPS 
      * tunnel an existing non-TLS capable protocol through a TLS tunnel (e.g. DNS) 
        Typical use of _rinetd_: </li> 
        
          * transfer a site on port 8080 to another IP address on port 80, to get rid of `server:8080` side effects 
          * transfer a port 88 to port 80, so you can have different Network Load Balancing policies on both ports, while they both run off the same site 
            [<img src="http://gallery.claireforlani.com/albums/meetjoeblack/aah.thumb.jpg" alt="Claire Forlani" border="0" />](http://gallery.claireforlani.com/meetjoeblack)  
            <small>Meanwhile on the other screen: <i>Claire Forlani </i>in &#8216;Meet Joe Black&#8217;. Mediocre movie, lousy acting by most of the crew, but mmmmm, that face.</small></li>
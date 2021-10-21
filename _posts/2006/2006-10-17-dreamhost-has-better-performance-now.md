---
id: 506
title: Dreamhost has better performance now
date: 2006-10-17T23:46:04+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/10/dreamhost-has-better-performance-now/
permalink: /2006/10/17/dreamhost-has-better-performance-now/
categories:
  - bandwidth
---
[Ine](http://mastuvu.typepad.com/monuments/2006/10/dreamhost.html) mentions that [Dreamhost](http://www.dreamhost.com/r.cgi?166410) has become a more reliable hoster. I am actually tracking Dreamhost performance, and I can only agree.

This is the current response time of a [WordPress](http://www.wordpress.org) blog on Dreamhost:  
[<img  src="http://static.flickr.com/81/272566589_0a85267c21_o.jpg" width="500" height="207" alt="Wordpress on Dreamhost: #1" />](http://www.flickr.com/photos/pforret/272566589/ "Photo Sharing")  
Wordpress is a database-powered PHP application, so this response time includes the MySQL queries and PHP overhead.

This is the very similar performance of a second blog on another Dreamhost server:  
[<img  src="http://static.flickr.com/98/272566590_f6364ee627_o.jpg" width="500" height="201" alt="Wordpress on Dreamhost: #2" />](http://www.flickr.com/photos/pforret/272566590/ "Photo Sharing")  
<!--more-->

  
The major improvement you see around Sept 21 is my installation of [WP-Cache](http://blog.forret.com/2006/09/wp-cache-speeds-up-your-wordpress/). In any case, the average response time is now just below 1 second. When I try to factor out the PHP/MySQL influence by measuring the mere download of a static file, the results are:  
[<img  src="http://static.flickr.com/90/272566592_82adf3d7c2_o.jpg" width="500" height="209" alt="static file on Dreamhost" />](http://www.flickr.com/photos/pforret/272566592/ "Photo Sharing")  
That is 350ms on average. In the bad days (back in September 2006) this could be above 1 second. 

[Dreamhost](http://www.dreamhost.com/r.cgi?166410) has been busy with a [filer migration](http://www.dreamhoststatus.com/2006/09/21/filer-moving) and [network upgrade](http://blog.dreamhost.com/2006/09/19/anatomy-of-a-disaster-part-2/). Fortunately the results are visible.
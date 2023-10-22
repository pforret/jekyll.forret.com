---
id: 181
title: 'De Standaard: down by popular demand'
date: 2005-09-15T09:16:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/09/15/de-standaard-down-by-popular-demand/
permalink: /2005/09/15/de-standaard-down-by-popular-demand/
categories:
  - Belgium
  - internet
---
[<img src="http://blog.forret.com/blog/uploaded_images/standaard_ol-712592.gif" border="0" alt="" />](http://blog.forret.com/blog/uploaded_images/standaard_ol-715507.gif)

[De Standaard](http://www.standaard.be) is one of the better (Flemish) newspapers in Belgium, and the pioneer of building an excellent web site around a &#8220;traditional&#8221; medium (even making money from it). That is why it is so surprising that after all these years, they still haven&#8217;t figured out how to handle traffic peaks. Nor how to customize web server error messages.

They must have posted something really interesting again this morning (&#8220;_Nieuw theoretisch rijexamen verrast_&#8220;? &#8220;_Belgen bouwen in China_&#8220;? I can see these thanks to [krantenkoppen.be](http://www.krantenkoppen.be)) because their site is unavailable:

> &#8220;The request cannot be processed at this time. The amount of traffic exceeds the Web site&#8217;s configured capacity.&#8221;

Three remarks on that:

  * &#8220;the Web site&#8217;s configured capacity&#8221;? Either add more servers (&#8216;scale out&#8217;) or make sure your server can handle more traffic (&#8216;scale up&#8217;). What kind of lousy error message is that? 
  * Did you read this part on the 500.13 error page: _&#8220;Open IIS Help, (&#8230;), and search for topics titled Monitoring and Tuning Web Application Performance, Performance Monitoring and Scalability Tools, and **About Custom Error Messages**.&#8221;_ Yes, I know it&#8217;s embarrassing but do read that part on [customising IIS error messages](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/iissdk/html/ee7a8c53-f9bc-4cd4-b954-e32066105cf1.asp). Create a custom page for all 500 errors that is worthy of a high-profile professional web site. 
  * The site of a newspaper is rather static. Let&#8217;s say there is a new element on the homepage every 15 min at maximum, and most &#8216;item&#8217; pages never change once they are created (apart from ads and promotions in the sidebar). This is content ideally suited for [caching](http://en.wikipedia.org/wiki/Proxy_server) with a [reverse proxy](http://en.wikipedia.org/wiki/Proxy_server#Reverse_proxies). Even if your server can&#8217;t handle 10.000 visitors per minute, a battery of &#8216;dumb&#8217; caches before your servers can do that easily. If you have no idea what I am talking about, call me.

The [Standaard Blog](http://standaard.typepad.com/en_nu_even_ernstig/) on the other hand is hosted on [Typepad](http://www.typepad.com), and they sure use caches (look for &#8220;`<a href="http://www.forret.com/projects/analyze/?url=http%3A%2F%2Fstandaard.typepad.com%2Fen_nu_even_ernstig%2F">X-Cache = HIT/MISS from www.sixapart.com</a>`&#8220;).

Technorati: <a href="http://technorati.com/tag/standaard" rel="tag">standaard</a> &#8211; <a href="http://technorati.com/tag/belgium" rel="tag">belgium</a> &#8211; <a href="http://technorati.com/tag/typepad" rel="tag">typepad</a> &#8211; <a href="http://technorati.com/tag/caching" rel="tag">caching</a> &#8211; <a href="http://technorati.com/tag/performance" rel="tag">performance</a>
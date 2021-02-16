---
id: 329
title: Bouncing email
date: 2006-05-14T20:52:45+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/05/bouncing-email/
permalink: /2006/05/14/bouncing-email/
categories:
  - internet
---
[<img  src="http://static.flickr.com/50/146354021_1c0f548dfe_m.jpg" style="float: right" width="171" height="240" alt="You've got mail" />](http://www.flickr.com/photos/pforret/146354021/ "Photo Sharing")  
If you have sent me an email in the last two days, you will likely have gotten a bounce like &#8220;`Undelivered Mail Returned to Sender`&#8220;. Please resend your message because your mail server is indeed right: my email addresses @forret.com were unavailable this Friday and Saturday.

The reason: I was too late for the renewal of my domain smoothouse.org so it expired, my Coditel broadband connection was down so I didn&#8217;t notice that my mails stopped coming in until Saturday. I did some emergency DNS adjustments, changed those, and then still did some other stuff, and so this is the situation 24 hours later:

  * my email addresses @forret.com are now served by Dreamhost and they should work. (when all DNS updates have propagated through this universe)
  * my DNS management for forret.com is now also at Dreamhost, which makes life a lot easier for me now (e.g. creating [barcamp.forret.com](http://barcamp.forret.com) was a piece of cake &#8211; with an external DNS that&#8217;s always a bit more tricky)
  * my web tools are now at [web.forret.com/tools](http://web.forret.com/tools/) instead of at www.forret.com. In short: the domain www.forret.com can not be hosted by someone else than Dreamhost, but my web tools have to run on Windows (ASP), which my Dreamhost account does not have. Hence: web.forret.com, which is my Windows hosting account. However, since www.forret.com now runs on Apache, I can do automatic redirects with mod-rewrite, so that \*should\* be transparent to users.
  * I&#8217;ve lost my domain smoothouse.org &#8211; must check with Hostbasket if I can get it back during the DNS holding period.
  * my Smoothouse content can now be found on [xampled.com/smoothouse](http://www.xampled.com/smoothouse/) (e.g. my collection of [house podcasts](http://www.xampled.com/smoothouse/podcasts.asp))
  * my [Smoothpod Mashup podcast](http://www.xampled.com/smoothpod/) has moved to [www.xampled.com/smoothpod](http://www.xampled.com/smoothpod/).  
    UPDATE : and it has now moved to [mashup.xampled.com](http://mashup.xampled.com)
  * The [Webjay wizard](http://web.forret.com/tools/webjay.asp) has moved to my [web tools](http://web.forret.com/tools/), where it belonged anyway.
  * my [HTTP header analyzer](http://web.forret.com/tools/analyze.aspx) has also moved to the [web tools](http://web.forret.com/tools/analyze.aspx), together with it&#8217;s companion the [Squid Cache policy checker](http://web.forret.com/tools/squid.asp). (I bet you don&#8217;t have one of those, right?)
  * I have at last been able to give my sister and father back their @forret.com address (long story). And I gave my mom a new one, for Mother&#8217;s Day!

So: please resend your messages, certainly if they were about [Barcamp Brussels](http://barcamp.forret.com).
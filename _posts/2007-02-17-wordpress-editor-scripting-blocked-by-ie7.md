---
id: 680
title: WordPress editor scripting blocked by IE7
date: 2007-02-17T18:47:08+01:00
author: Peter
layout: post
guid: http://blog.forret.com/2007/02/wordpress-editor-scripting-blocked-by-ie7/
permalink: /2007/02/17/wordpress-editor-scripting-blocked-by-ie7/
categories:
  - security
---
For those of you with WordPress blogs, does this look familiar?  
[<img  src="http://farm1.static.flickr.com/139/393088693_cf1a249f76.jpg" width="500" height="109" alt="WP Editor scripts on IE7: the problem" />](http://www.flickr.com/photos/pforret/393088693/ "Photo Sharing")

The new Internet Explorer 7 blocks a lot of (Javascript) scripting for security reasons, which means that clicking on &#8220;link&#8221; in the WordPress editor gives the warning message above. You have to select &#8220;Temporarily Allow Scripted Windows&#8221; to be able to use the WP editor buttons. But if you save the post and the editor window is refreshed, you have to do that whole procedure again. Security is nice, and we know why IE makes a point out of it, but it shouldn&#8217;t interfere with convenience too much.

Luckily there is a way to let IE switch the security warning off for URLs that are under your own control (like your blog, for instance):  
[<img  src="http://farm1.static.flickr.com/158/393088696_45cf041c92.jpg" width="500" height="438" alt="WP Editor scripts on IE7: the solution" />](http://www.flickr.com/photos/pforret/393088696/ "Photo Sharing")  
Add your own URL to the Trusted Sites (Options/Security/Trusted Sites) and you do not get the scripting warning anymore. Happy posting!
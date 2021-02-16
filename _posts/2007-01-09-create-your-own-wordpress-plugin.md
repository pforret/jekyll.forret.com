---
id: 616
title: Create your own WordPress plugin
date: 2007-01-09T20:18:16+01:00
author: Peter
layout: post
guid: http://blog.forret.com/2007/01/create-your-own-wordpress-plugin/
permalink: /2007/01/09/create-your-own-wordpress-plugin/
categories:
  - Wordpress
---
[<img loading="lazy" src="http://farm1.static.flickr.com/126/351892220_a44ce6173d.jpg" width="500" height="208" alt="wp-plugins" />](http://www.flickr.com/photos/pforret/351892220/ "Photo Sharing")  
Wordpress has a really nifty system for adding functionality: the [WP plugins](http://codex.wordpress.org/Plugins). There are a ton of them around, but if you have some knowledge of SQL and PHP you can make your own plugins! You of course have to know how to display stuff, how to add a configuration panel to the Options or Manage tab, &#8230; When I read the code of some well-developed plugins, I thought: it should be easy to come up with a WordPress plugin template generator. So that&#8217;s what I did: here&#8217;s the first (far from complete) version of the [WordPress Plugin Generator](http://web.forret.com/tools/wp-plugin.asp)!

Currently it supports the following features:

  1. return the result as 
      * REPLACE TAG: replace all occurences of `<!--myplugin_tag-->` by a certain text/html
      * AFTER/BEFORE POST: add after/before each post (e.g. for tags, DiggMe buttons, Adsense, &#8230;)
      * CALL FUNCTION: call the `myplugin_showhtml()` function (e.g. in sidebar.php)
      * BY PLUGIN PAGE: the result is displayed when the `wp-content/plugins/myplugin/myplugin.php` page is called (e.g. for results in XML or TXT format)
  2. add the result only to posts, pages, search and/or archive pages
  3. add a config page to the &#8220;Options&#8221; or the &#8220;Manage&#8221; panel  
    <small>(here I need to do some work to create a good way to generate the display code and the form processing &#8211; showing and changing parameters of your plugin)</small>
  4. add optional GPL license text

I of course try to use the guidelines published by [WordPress](http://codex.wordpress.org/Writing_a_Plugin) and [Installer](http://mattread.com/projects/wp-plugins/installer-the-plugin/). I&#8217;ll write something about that later.

<!--more-->

  
A first plugin that I made myself with the wizard is _pfmirror_. What does this (mini) plugin do? It grabs an external HTML page, replaces all relative links by absolute links (e.g. &#8220;`images/test.jpg`&#8221; becomes &#8220;`http://www.example.com/some/path/images/test.jpg`&#8220;) and parses only the part between <body> and </body> It then returns the remaining HTML. So I need to execute:  
`echo pfmirror_showhtml("http://www.example.com/some/path/page.html")` (either in a PHP file of the theme, or by using the RunPHP plugin, in any post page).  
Obvious improvements that I could do:  
&#8211; more flexible parsing (show only everything between pattern#1 and pattern #2)  
&#8211; disable JavaScripts (they mostly don&#8217;t work properly when transported anyway)  
But most of all, it was a proof of concept of the template generator.

Any suggestions for improving my [WP-plugin wizard](http://web.forret.com/tools/wp-plugin.asp)?
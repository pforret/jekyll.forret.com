---
id: 827
title: Test your karma early in the morning
date: 2007-07-26T10:55:29+02:00
author: Peter
layout: post
guid: /2007/07/test-your-karma-early-in-the-morning/
permalink: /2007/07/26/test-your-karma-early-in-the-morning/
categories:
  - Wordpress
---
The &#8220;[WordPress Automatic Upgrade plugin&#8221;](http://techie-buzz.com/wordpress-plugins/wordpress-automatic-upgrade-plugin.html)&#8220;: if it works flawlessly (like when I used it on [video.forret.com](http://video.forret.com)), an amazing tool! It upgrades your WordPress installation to the latest version, while taking a backup of files and database, and disables your plugins right before and re-enables them right after.

[<img  style="float: right" src="http://farm2.static.flickr.com/1396/871481719_ae510f35af_m.jpg" width="160" height="240" alt="Stilleven (2)" />](http://www.flickr.com/photos/pforret/871481719/ "Photo Sharing") However, when it doesn't work as expected (like yesterday morning here on [blog.forret.com]()), it can be painful. In my case: my [K2](http://getk2.com) template was broken after the upgrade. There is no &#8216;revert'/'rollback' function, so you just have to dive in the K2 PHP code and disable the odd line here and there. Once you're done, you realize that the new version of [WordPress](http://wordpress.org) now has Widgets pre-installed, and the K2 Sidebar modules you so carefully handcrafted are gone. So you have to frantically look for the right widgets to do rebuild your sidebar, like the [Flickr Badge Widget](http://www.bencoleman.co.uk/),the [Folding Pages Widget](http://navyroad.com/wordpress-plugins/nrs-folding-pages-widget/), the [Executable PHP widget and Google Adsense Widget](http://ottodestruct.com/). Then you nervously look for the right HTML code for your [Adhese](http://www.adhese.com) ads, and try to get the widgets in the right order. And only then you relax to drink your first coffee of the day (it was 6AM). 

Thanks for the tip, [Pascal](http://pascal.vanhecke.info) 😉
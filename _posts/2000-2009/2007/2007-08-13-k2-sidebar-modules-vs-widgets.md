---
id: 841
title: K2 Sidebar modules vs. widgets
date: 2007-08-13T15:37:13+02:00
author: Peter
layout: post
guid: /2007/08/k2-sidebar-modules-vs-widgets/
permalink: /2007/08/13/k2-sidebar-modules-vs-widgets/
categories:
  - Wordpress
---
I [upgraded to the latest version of WordPress](/2007/07/test-your-karma-early-in-the-morning/) recently, and in the process my [K2](http://getk2.com/) Sidebar modules were deleted because now WordPress has _&#8216;widgets'_ built in. Having used both systems for a while, I can only conclude: it's a big step backward.

#### K2 Sidebar modules

[<img  width="500" src="http://farm2.static.flickr.com/1392/1103843665_fcb8cefb67.jpg" alt="k2-sidebar" height="324" />](http://www.flickr.com/photos/pforret/1103843665/ "Photo Sharing")

The K2 theme comes with this plugin installed and it is the perfect sidebar framework:

  * it has an HTML, navigation, RSS, calendar &#8230; block and if you really need to do something very specific, there's always the PHP block.
  * per block you can decide on which type of pages it should be displayed. E.g. you can show the navigation only in the static pages, and your recent comments only in the blog section. You can even exclude the showing on individual pages (e.g.: if on one page you need an IFRAME of 800 pixels wide, you can disable all sidebar modules.)
  * the blocks show the name that you gave them: you don't have blocks named &#8216;Text 1', &#8216;Text 2' but e.g. &#8216;About' and &#8216;Adsense'. This is much clearer if you want to change the order afterwards.

Just compare this: the RSS block for K2 and Widgets:  
[<img  width="236" src="http://farm2.static.flickr.com/1306/1103843121_50826cd7ee.jpg" alt="k2-sidebar-feed" height="500" />](http://www.flickr.com/photos/pforret/1103843121/ "Photo Sharing") [<img  width="240" src="http://farm2.static.flickr.com/1130/1103848243_e722b84928_m.jpg" alt="wp_widgets_rss" height="127" />](http://www.flickr.com/photos/pforret/1103848243/ "Photo Sharing")

Which is why I dove into the WordPress forums to find a way to disable those simplistic widgets and get my original sidebar back. Here is the trick: the [disable-wordpress-widgets](http://schulte.mn/2007/05/04/disable-wordpress-widgets/) plugin (also on [code.google.com](http://code.google.com/p/kaytwo/issues/detail?id=284) &#8211; via [wordpress.org](http://wordpress.org/extend/plugins/disable-wordpress-widgets/)) disables the Widgets. I then installed the lastest stable version of [K2 (0.9.6)](http://getk2.com/download/) over my WordPress 2.2.1 and not only are the sidebar modules active again, the sidebar was recovered as it was (from the database, probably). Awesome! Throw out those widgets!
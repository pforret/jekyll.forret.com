---
id: 186
title: 'WizaRSS: a wizard player based on RSS'
date: 2005-09-28T14:41:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/09/28/wizarss-a-wizard-player-based-on-rss/
permalink: /2005/09/28/wizarss-a-wizard-player-based-on-rss/
categories:
  - RSS
---
I had an idea recently that I probably won't be able to work out, so I'm just gonna throw it here and see if anyone feels like putting the nuts and bolts together.

It's about step-by-step wizards (i.e. the _&#8220;Next-Next-Finish&#8221;_ idea). Please follow my thought process:  
(a) I've made a pretty popular wizard for [podcasting with Blogger and Smartcast](/blog/2004/10/how-to-podcast-with-blogger-and.html) one year ago;  
(b) I also have been following Jon Udell's efforts with [screencasting](http://weblog.infoworld.com/udell/2005/06/17.html) (and also more on [mastuvu.typepad.com](http://mastuvu.typepad.com/monuments/2005/09/screencast_scre.html)) and  
(c) I recently have made a project [based on photofeeds](http://photofeed.forret.com).

Well now, eventhough I am wary of [seeing everything as a nail just because I have the RSS hammer](/blog/2005/09/rss-is-hammer.html), I think there is a nice synergy possible.

Imagine a **generic wizard visualizer**. It takes as input an RSS feed and considers each of the RSS items to be a step in the wizard process. It then shows each step in a userfriendly way: either as a kind of slideshow, with &#8220;next&#8221; and &#8220;previous&#8221; button, or as a timeline, with zoom-in on a specific step if you click on it, or &#8230; All AJAX, CSS and multimedia wizardry is possible. That is purely a presentation-layer issue. Once the wizard content is made, the rest is make-up.

Some examples/remarks:

  * think of a **&#8220;[photofeed](http://photofeed.forret.com)&#8221; wizard**: an image is shown for each step, with some HTML text underneath.You could zoom in on the picture. I have made a demo of such a feed on [wizarss.blogspot.com](http://wizarss.blogspot.com/) and a stub of what such a generic wizard visualizer could look like: [WizaRSS stub](http://photofeed.forret.com/photofeed/wizarss_stub.php).
  * think of a **&#8220;podcast&#8221; wizard**: for each step, there is an audio clip of 10-60 seconds explaining in simple terms what should be done (with a small [Flash MP3 player in the page](/blog/2005/01/playing-mp3-with-embedded-flash-player.html)).
  * think of a **&#8220;screencast&#8221; wizard**: for each step the screencast is shown to make things more tangible.
  * another type of visualizer could convert the RSS to a SMIL or ASX multimedia playlist.
  * a good wizard player would have templates, or customizable CSS stylesheets
  * anyone could make a nice wizard with [Blogger](http://www.blogger.com) (and [Feedburner](http://www.feedburner.com) SmartCast). Like: recipees, how-to-repair-your-bicycle, bonsai-101, &#8230;
  * since RSS is reverse chronological, the last step is listed as most recent, so as the first item in the feed

All feedback is welcome!

Update: Pascal already has a [WizaRSS Powerpoint-like S5 presentation player](http://pascal.vanhecke.info/2005/09/28/visualising-rss-playing-with-wizarss-and-s5)!
---
id: 173
title: 'Google Desktop: buggy stuff'
date: 2005-08-28T22:35:34+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/08/28/google-desktop-buggy-stuff/
permalink: /2005/08/28/google-desktop-buggy-stuff/
categories:
  - Google
  - Search
---
![](http://www.pixagogo.com/S5vpfnjbBPdPlrVXfDWjtG47DijGDMnG5wW!9-EQetG8Ohp6lA2sTcEtilF2QSKltQCE5UPr7N-CVe4hIogp8WOh14xBv!ycls6LdKGo6B7xuqOk0jv8YBOVqUYsHYTQWU7HsULuFJ!be6qfTt03s4946aDP1H-um8/google-desktop-buggy.jpg)  
I regret having installed the [Google Desktop Beta](http://desktop.google.com/). I thought they would have ironed the biggest bugs, but my first experience is not reassuring.

  * I installed it on my P4 2.8GHz with about 100GB of data (lots of it CD and DVD copies &#8211; so files that are large where no indexing is needed). 
  * The indexing process has been running for more than 5 days. Every now and then the progress bar remains hanging (e.g. remains on 27% after 12 hours of running) although the process keeps running. Reboot necessary. 
  * the `GoogleDesktopIndex.exe` process runs continously at 50% CPU, which makes the computer slower, but also often at 100%, at which point the option left is to reboot. 
  * the &#8220;Sidebar&#8221; is very buggy, it remains &#8220;Loading&#8221; forever, cannot be stopped and does not update. I think it&#8217;s the &#8220;Images&#8221; component. When it crashes: reboot required. 
  * they&#8217;ve used ActiveX everywhere. Why not Python with [py2exe](http://starship.python.net/crew/theller/py2exe/)? Then the Sidebar would run on every platform instead of just on Windows, and it would be easier and safer to write plugins. 
  * the [Google Adsense](https://www.google.com/adsense/) plugin sounds like a good idea, but I did not get it working, the authentication failed every time. 

So I remain to be convinced about the Desktop searching thing. [Bye Bye Google Desktop](http://www.momathome.com/viewfromhome/2005/08/bye_bye_google_desktop_search.php).

What would be a good idea in the mean-time: an publishers&#8217; API for (read-only) access to the Google Adsense statistics. How about an RSS feed (an &#8216;AdStatFeed&#8217;)? A nice simple MRTG-like graph? An web-based version of [CSVAdStats](http://www.nix.fr/csvadstats.aspx)? How hard can that be?

Technorati: <a href="http://technorati.com/tag/google" rel="tag">Google</a> &#8211; <a href="http://technorati.com/tag/Desktop" rel="tag">Desktop</a> &#8211; <a href="http://technorati.com/tag/Adsense" rel="tag">Adsense</a>
---
id: 675
title: 'Yahoo! Pipes: Get-Remix-Deliver model'
date: 2007-02-16T00:07:15+01:00
author: Peter
layout: post
guid: http://blog.forret.com/2007/02/yahoo-pipes-get-remix-deliver-model/
permalink: /2007/02/16/yahoo-pipes-get-remix-deliver-model/
categories:
  - RSS
---
[Yahoo! Pipes](http://pipes.yahoo.com) is an RSS mashup application from Yahoo. It allows you to merge, sort, filter and combine RSS feeds. Since it is primarily a remix/mashup application, I&#8217;ve tried to list its features in my [Get-Mix-Deliver model](http://web.forret.com/tools/remix.asp):  
[<img  src="http://farm1.static.flickr.com/188/391351416_ec1584bd09.jpg" width="500" height="367" alt="Yahoo Pipes" />](http://www.flickr.com/photos/pforret/391351416/ "Photo Sharing")

It&#8217;s easy to get excited about Pipes. I like working with it, because the UI paradigm (flowchart-based) matches the way engineers think. I&#8217;ve been testing it out a bit and while it is a very slick version 1.0, there are a number of features missing, in my opinion, some of which are crucial:  
[<img  style="float: right" src="http://farm1.static.flickr.com/146/391516575_74a63514fb_m.jpg" width="173" height="240" alt="pipes-modules2" />](http://www.flickr.com/photos/pforret/391516575/ "Photo Sharing")

  * **RSS input only**: you can only use RSS feeds as input. There is not a way to add other types of input, nor something like [Feed43](http://www.feed43.com) to parse a webpage and convert it into RSS.
  * **More RSS Sources**: specifically for search results on e.g. IMDB (&#8216;official data&#8217;), Technorati (&#8216;aggregated user data&#8217;), &#8230;
  * **No regular expressions**: you can&#8217;t really manipulate the data in title or description fields. If I start from [IMDB&#8217;s &#8216;born on this day&#8217; feed](http://rss.imdb.com/daily/born/), all titles are like &#8220;Matt Groening (53)&#8221;. What if I want to lose the age, so I can do a search on Flickr with only the name?
  * **RSS output only**: it would be easy to add Javascript visualisation, or widget support. Oh, wait, a link with Yahoo Maps, that would be neat!
  * **Modular approach**: imagine the possibility to add custom made source modules, operator modules &#8230; That would make Yahoo Pipes a versatile toolbox. But maybe the [Brickhouse team](http://www.businessweek.com/technology/content/feb2007/tc20070209_179924.htm) under [Caterina Fake](http://www.caterina.net/archive/001033.html) might already be working on that.
---
id: 195
title: 'Jakob Nielsen: design mistake #5'
date: 2005-10-20T13:45:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/10/20/jakob-nielsen-design-mistake-5/
permalink: /2005/10/20/jakob-nielsen-design-mistake-5/
categories:
  - webdev
tags:
  - blog
  - design
  - webdesign
---
![](http://www.pixagogo.com/S5vpfnjbBPdPkNwJho!EsYCy3VKcssBFnOIZTCeMkbqROQfLuimLzN3bbhggPxmERc2ydQVDT8zX3SSbDbnrK5riXMJQTmM1vo8hLK52YxjVWppbsldbFJvUXgg9LVllWiqIdJSsbQkGiLpc!r6m-3eA__/jakob_nielsen.jpg)  
Jakob Nielsen has published his updated [Weblog Usability: The Top Ten Design Mistakes](http://www.useit.com/alertbox/weblogs.html). One that I recently have tried to fix (before Jakob published his article, honestly!) is #5: &#8220;Classic Hits are Buried&#8221;.

> Highlight a few evergreens in your navigation system and link directly to them. For example, my own list of almost 300 Alertbox columns starts by saying, &#8220;Read these first: Usability 101 and Top Ten Mistakes of Web Design.&#8221;  
> Also, remember to link to your past pieces in newer postings. Don&#8217;t assume that readers have been with you from the beginning; give them background and context in case they want to read more about your ideas.

As you can see in the sidebar on the right (if I haven&#8217;t changed my layout by the time you read this), _&#8220;This blog covers stuff like [&#8230;]&#8221;_ and then I have some links that show up when you click the [&#8230;] button. I list some of the more typical posts ([Podcasting with Blogger and Feedburner &#8211; Oct 2004](http://blog.forret.com/blog/2004/10/how-to-podcast-with-blogger-and.html) as well as [tango moves](http://blog.forret.com/blog/2005/02/tango-steps-and-twister.html)) and some ideas/projects I launched ([folksonomy](http://blog.forret.com/blog/2005/02/folksonomizer-generic-folksonomy.html), [photofeed](http://blog.forret.com/blog/2005/08/photofeed-image-podcasting.html)).

So what kind of links to your own posts could you make:

  * **&#8216;classic&#8217; posts**: posts that are typical for the subjects you address
  * **&#8216;remarkable&#8217; posts**: posts that are are maybe not typical, but that you are somehow proud of (in my case, &#8220;[Imperial time units](http://blog.forret.com/blog/2004/08/imperial-time-units-here-come-nunes.html)&#8221; comes to mind)
  * **&#8216;popular&#8217; posts**: the posts that people visit most, link most to, have most comments on, &#8230;

The first 2 are probably links you better indicate yourself, the last one could be based upon aggregated stats. Let&#8217;s say you want to make each list as an RSS feed, so you can display it through [PHP](http://www.rss2html.com/) or [Javascript](http://itde.vccs.edu/rss2js/build.php) on each blog page.

  * handpicked (&#8216;classic&#8217;, &#8216;remarkable&#8217;, &#8216;controversial&#8217;) posts: put them in del.icio.us or furl and use the RSS feed
  * &#8216;popular&#8217; posts: imagine a statcounter of somekind, that measures the #page hits and visitors, that also checks Technorati, Google Blog Search and Yahoo stats, that also uses the Feedburner item stats (if any) and the # of comments per post (don&#8217;t know where that could come from) and that aggregates these together according to your own wishes. The end result should be the Top 20 of your own blog posts, in RSS format.

Any ideas on this?

UPDATE: I created [an overview page for my blog](http://blog.forret.com/blog/overview.html), linked from the blog homepage.

Technorati: <a rel="tag" href="http://technorati.com/tag/blog">blog</a> &#8211; <a rel="tag" href="http://technorati.com/tag/stats">stats</a> &#8211; <a rel="tag" href="http://technorati.com/tag/design">design</a> &#8211; <a rel="statistics" href="http://technorati.com/tag/statistics">stats</a> &#8211; <a rel="tag" href="http://technorati.com/tag/nielsen">nielsen</a> &#8211; <a rel="tag" href="http://technorati.com/tag/usability">usability</a>
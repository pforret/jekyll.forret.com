---
id: 748
title: Metatale RSS widgets
date: 2007-04-17T14:03:22+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2007/04/metatale-rss-widgets/
permalink: /2007/04/17/metatale-rss-widgets/
categories:
  - Belgium
---
I continued to work a bit on _stuff one could do with the [Metatale](http://www.metatale.eu) data_. As a result, here are 2 RSS-based widgets for Metatale, that you can embed on your site:

### Top 100 in RSS format

[<img loading="lazy" style="float: right" src="http://farm1.static.flickr.com/188/462772341_4efe83d2d8.jpg" width="229" height="500" alt="metatale search" />](http://www.flickr.com/photos/pforret/462772341/ "Photo Sharing")  
The ATOM/RSS feed [MetataleTop100](http://feeds.feedburner.com/MetataleTop100) (through [Feedburner](http://www.feedburner.com)) now lists all 100 blogs in the [top 100 of Metatale](http://www.metatale.eu/top-100). You can use it in your RSS reader (it&#8217;s in my Bloglines), show it on your blog (like my [Metatale Flemish Top 20](http://blog.forret.com/projects/statistics/metatale-flemish-top-20) page) or recycle it with Yahoo! Pipes or whatever. It&#8217;s RSS, so it&#8217;s easy to process.

I&#8217;ve included in each blog description: its place in the Top 100, its Metatale influence indicator (a number between 0 and 25, plus a graphical representation of it), a _screenshot of the homepage_, a link to check Pagerank and incoming Technorati links and one for a more comprehensive blog dashboard.

### Search results in RSS format (a.k.a. _What&#8217;s my score?_)

I also have a way for you to show your own ranking on your blog. You can do a search for a keyword in the blog names (&#8216;blog.forret.com&#8217; or &#8216;forret&#8217; would show mine, &#8216;wordpress&#8217; will show all *.wordpress.com blogs like the image I&#8217;ve displayed here) and get the results in RSS. You can choose a &#8216;small&#8217; or &#8216;short&#8217; output format (without screenshot and links), because the screenshot is 270 pixels wide, and that might be too much of a good thing for some sidebars.  
Use the following wizard to create the URL of your custom RSS feed:

<fieldset>
  <legend>Metatale custom RSS</legend>
</fieldset>

For both applications: all suggestions are welcome!

UPDATE: because Clo asked me nicely: here&#8217;s a Javascript version of the widget:  
`<small><SCRIPT LANGUAGE="JavaScript" src="http://tools.forret.com/metatale-js.php?s=[search term]"></SCRIPT><br />
</small>`
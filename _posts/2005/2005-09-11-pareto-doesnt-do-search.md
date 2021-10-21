---
title: 'Pareto doesn&#8217;t do search'
date: 2005-09-11T14:47:00+02:00
author: Peter
layout: post
permalink: /2005/09/11/pareto-doesnt-do-search/
categories:
    - Google
  
tags:
    - search
    - technorati
---
I&#8217;m gonna talk about a post that is 6 months old, I know, but I recently re-read it and wanted to link it to Technorati&#8217;s recent traffic troubles.  
Joe Kraus from [JotSpot](http://www.jotspot.com) (and previously Excite) wrote an excellent article called &#8220;[The long tail of software. Millions of Markets of Dozens.](http://bnoopy.typepad.com/bnoopy/2005/03/the_long_tail_o.html)&#8220;. I&#8217;ll concentrate on the following segements:

> (about Excite) That means if you wrote each of the millions of queries on a slip of paper, put them all in a fish bowl and grabbed one at random, there was a high likelihood that this query was asked only once during the day. Of ten-plus million queries a day, the average search was nearly unique. The most interesting statistic however, was that while the top 10 searches were thousands of times more popular than the average search, these top-10 searches represented only 3% of our total volume. **97% of our traffic came from the &#8220;long tail&#8221;, queries asked a little over once a day**.

Now apply that information to [Technorati](http://www.technorati.com): it has been struggling for a while with the &#8220;Cosmos&#8221; function: what blogs link to specific pages. As [Dave Sifri says](http://www.sifry.com/alerts/archives/000338.html):

> However, Cosmos search (or URL search) is still being worked on, and is often timing out under the increased load. Unfortunately this is also one of the searches that bloggers find most compelling, as it helps you to all know who is linking to your blog, and it is the very first type of search that Technorati made available, so it is near and dear to our hearts. Everyone here also uses it every day, so it really sucks when it isn&#8217;t working right.

Even if &#8220;[search is hard](http://www.heynorton.org/blog/2005/08/search_is_hard.html)&#8220;, the average web user is spoiled by Google: a random search in 8 billion objects comes back in less than a second. That is the benchmark. Technorati has no problem doing that for its [tag search](http://www.technorati.com/tag/), but that is way easier. There are 2 million different tags, but I would expect more than 50% of traffic comes from a limited group of say 10.000 tags. Just put a cluster of reverse proxy caches in front of your tag search servers, keeping copies of each page for 15 minutes, and the number of actual search results to be generated drops dramatically.  
But search results on a random combination of words, several million times a day, within 17 million sites and 1.5 billion links in your database: &#8220;the average search is nearly unique&#8221;, that&#8217;s hard. You need an expensive Google-like architecture to cope with that. Unfortunately for Technorati, [Icerocket](http://blogs.icerocket.com/search?q=http%3A%2F%2Fblog.forret.com), [Feedster](http://feedster.com/links.php?q=blog.forret.com), [Pubsub](http://www.pubsub.com/site_stats.php?site=http%3A%2F%2Fblog.forret.com) and [Blogpulse](http://www.blogpulse.com/search?query=http%3A%2F%2Fblog.forret.com) are capable of doing it, either because they have less traffic or a better architecture. So some high-profile bloggers like [Kottke](http://www.kottke.org/05/08/so-long-technorati) and [Calacanis](http://calacanis.weblogsinc.com/entry/1234000280056812/) are jumping ship.

Technorati has already burned some credit, but could survive if it can perform to Google standards within weeks, not months. Or it will not be the weapon of choice for blogger&#8217;s vanity searches. And that&#8217;s how this blogging thing got started in the first place.  

---
title: 'Information overload: blog filtering'
date: 2005-01-04T17:38:51+01:00
author: Peter
layout: post
permalink: /2005/01/04/information-overload-blog-filtering/
categories:
  - Web2.0
tags:
  - blog
  - filtering
  - information
  - rss
  - web2.0
---
I recently stopped reading blogs with [SharpReader](http://www.sharpreader.net/). It's a great product, but I had over a hundred feeds that I was monitoring and that's just too much information coming in. No way to get through all that and still get your job done. I now started from scratch with [BlogLines](http://www.bloglines.com) and am trying to think twice before adding a new feed (currently at 10).

I remember the [IT Conversations/BloggerCon podcast](http://www.itconversations.com/shows/detail278.html) where Robert Scoble talks about the hours he spends each day reading 915(!) feeds. Ok, there are people who only post a couple of articles a week, but there's also blogs like the excellent [MetaFilter](http://www.metafilter.com/) that give you between 10 and 20 new stories every day. How much time does it take a person per day to make 1000 decisions like: _&#8220;Am I going to read this?&#8221;_, _&#8220;Should I click on this link?&#8221;_, _&#8220;Should I put this in my favourites/blog list/furl list/&#8230;?&#8221;_. 

![](http://www.pixagogo.com/S5CLnY1NL-yFyDmySSQsXgk!yudhxb8Ek0vZQfBsdgShVQ4eRV!8sGo!rdznPxjmD4T0A3Ik7V!VhpE7dFd9IwbxprI6kh8vBL/sieve2.jpg)  
One way to go is to let someone else do the filtering. You could stick to reading 10 blogs that compile the juicy bits. I've seen 3 kinds of these aggregated blogs:

  * **Repost**: Scoble has an [aggregator blog](http://www.kunal.org/scoble/) where he re-posts (copy/paste) interesting articles he came across while weeding through oceans of information. Inasfar as Robert's interests match yours, that is an option. 
  * **Excerpt**: [BoingBoing](http://boingboing.net/) and the above mentioned MetaFilter have a group of people posting interesting links embedded in small articles (5-10 lines) with the short content or some background info and leave it to you to decide if you want to click further. 
  * **Link blog**: [Jeremy Zawodny](http://jeremy.zawodny.com/linkblog/) has a link blog where he just posts links, hardly any explanation. You get a dozen posts per day with a title like &#8220;An Article Buried in Junk&#8221; and you then have to decide whether you want to click on it and read it. No background, no personal opinion like &#8220;Good point&#8221;/&#8221;Hilarious rant&#8221;/&#8221;Despicable proposition&#8221;/&#8230;, nada. As a filtering tool it does not work for me, but I can imagine that for Jeremy himself it works like a recording of his mouse wanderings, an [outboard brain](http://www.downtheavenue.com/2004/11/scoble_on_infor.html). _&#8220;What was that eBay story again I saw a couple of weeks ago? Oh, I put it on my linkblog! So I can [Google it](http://www.google.com/search?hl=en&q=site%3Azawodny.com+linkblog+ebay)!&#8221;_

I guess we'll have to wait for someone to combine bayesian or collaborative filtering with a feed aggregator, like [Wesner Moise](http://wesnerm.blogs.com/net_undocumented/2004/08/rss_reader_wish.html) suggests. How could this work?

  * **client-based**: If there were a tool like [Popfile](http://popfile.sourceforge.net/) for blogs (this would be an HTTP proxy that can interpret RSS/Atom feeds and mark the interesting posts by changing the title), it could &#8216;learn' what posts you find interesting and use its [bayesian filtering](http://en.wikipedia.org/wiki/Bayesian_filtering) to find similar articles. Popfile was made for spam detection, so maybe we have to look at spam-oriented [collaborative filtering](http://en.wikipedia.org/wiki/Collaborative_filtering) efforts like [Razor](http://razor.sourceforge.net/) to get this on our desktop. 
  * **server-based**: if you read your feeds through a web interface, and the actual content is on a central server, it is much easier to enable filtering. I think BlogLines would be an excellent candidate for this. They already suggest new feeds to add, based on the ones you're already subscribed to. They just need to dive a level deeper and work on the article level. And the user should have something like a [&#8211;|-|0|+|++] quotation toolbar under each article. [Mark Fletcher](http://www.wingedpig.com/), I'm counting on you!

Let's see how long it takes before I can say &#8220;Told you so&#8221;!
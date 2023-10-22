---
id: 260
title: 'Edgeio: edge aggregator'
date: 2006-02-27T18:46:00+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2006/02/27/edgeio-edge-aggregator/
permalink: /2006/02/27/edgeio-edge-aggregator/
categories:
  - advertising
  - Web2.0
---
<img src="http://www.edgeio.com/img/img-logotop.gif" border="0" />[Michael Arrington](http://www.techcrunch.com/2006/02/27/edgeio-launches/) has just launched his new baby: [Edgeio](http://www.edgeio.com), a classifieds aggregator. Edgeio will spider and index anyone&#8217;s feed and aggregate the posts tagged with &#8220;listing&#8221;. It then clusters the other tags in order to attach the post to the right classifieds category. The revolutionary thing here is that Edgeio does not require you to post your offer on their own site, they go and take it from yours. Edgeio clearly states that they start with classifieds as an example, a proof of concept for a concept that is much broader than that (that sounds like an echo from the [Google Base](http://base.google.com/) launch).  
As I understand it from their specs, they use the standard RSS `<category>listing</category>` categories from the [RSS spec](http://blogs.law.harvard.edu/tech/rss#ltcategorygtSubelementOfLtitemgt), no microformats (see further).

### Pioneer?

The pioneers of this type of aggregation are [Technorati](http://www.technorati.com/tags/) (specifically [Tantek Çelik](http://tantek.com)): they have been using the [_rel=tag_ microformat](http://developers.technorati.com/wiki/RelTag) `<a href="http://technorati.com/tag/music" rel="tag">music</a>` (instructions for [laymen](http://technorati.com/help/tags.html) and [experts](http://microformats.org/wiki/rel-tag)) since the beginning of 2005.  
The people at Technorati also have created &#8220;Most Popular&#8221; pages based on the same principle:

  * [Popular News](http://www.technorati.com/pop/news/): &#8220;_The news stories people are talking about right now, ordered by new links to news sites in the last 48 hours._&#8221; 
  * [Popular Movies](http://www.technorati.com/pop/movies/): &#8220;_The movies people are talking about right now, ordered by new links to the [Internet Movie Database](http://www.imdb.com) in the last 48 hours._&#8221; 
  * [Popular Books](http://www.technorati.com/pop/books/): &#8220;_The books people are talking about right now, ordered by new links to [Amazon](http://www.amazon.com) in the last 48 hours._&#8221; 
  * [Popular Blogs](http://www.technorati.com/pop/blogs/): &#8220;_The biggest blogs in the blogosphere, as measured by unique links in the last six months._&#8220;

The basic concept is: find a link type that identifies a topic/resource (e.g. <http://www.imdb.com/title/tt0388795/> for the movie &#8220;Brokeback Mountain&#8221;) and aggregate all blog posts that have such a link. Whereas for books it makes sense to use Amazon as principal link source for books, it is more difficult to find a good one for music CDs (Amazon? iTunes? CDNow? CDBaby?), TV shows, political candidates, theatre plays, &#8230;

### Competition?

  * I think [Technorati](http://www.technorati.com), if it wanted to, could create a Edgeio-like spin-off in under a week. One small difference is that Technorati spiders sites (all HTML), not just feeds (post contents + metadata). 
  * [Google Blog Search](http://blogsearch.google.com/) certainly has the horsepower, but little experience in microformats. Then again, they have the worlds&#8217; biggest war chest, they could buy talent and resources. And the PageRank reputation ranking could come in handy. 
  * The &#8216;smaller&#8217; blog search players: [Feedster](http://www.feedster.com), [Ask/Bloglines](http://www.bloglines.com/), [IceRocket](http://blogs.icerocket.com/), &#8230; already have the content, but would still have to develop the service. 
  * [Feedburner](http://www.feedburner.com) could move in that direction too, but then only for their own burned feeds. Or they could sell a service to companies like Edgeio to bulk download changed feeds from all Feedburner feeds in one go. 

### Edge aggregator

The direction Edgeio and/or Technorati could evolve to, is a &#8220;generic edge aggregator&#8221;. In the end we don&#8217;t want 5000 different services all scraping our blog feeds for each little niche application. The ideal would be a handful of aggregators that provide APIs to data and aggregation services, either paid, or monetized through contextual advertising. Image a hypothetical &#8216;edge aggregation&#8217; provider &#8220;_**GoogRatiO**_&#8220;.

  * GoogRatiO spiders and indexes ALL feeds of all blogs. Oh heck, it even keeps a cached copy of each post. 
  * GoogRatiO allows anyone to set up a new project on a URL myproject.googratio.com. In the project settings, you can specify which URLs should be tracked, the importance of recency, frequency and reputation, and it would automatically show a hitparade of the top 10/50/100. E.g. the dance music site [Juno](http://www.juno.co.uk/) could set up juno.googratio.com that tracks all [http://www.juno.co.uk/artists/&#8230;/](http://www.juno.co.uk/artists/Outlines/) links in blog posts of the last month and shows an hourly updated Buzz chart of the top 20. GoogRatiO places contextual advertising on each page. 
  * GoogRatiO has an API that allows a third party to use its database. It includes functions like `Get_all_posts_for_URL_base("http://juno.co.uk/artists")` and `Get_aggregated_buzz_for_URL_base("...")`. Below 1000 requests/day GoogRatiO is free. Above that: subscriber fee. 
  * GoogRatiO also calculates a &#8216;reputation&#8217; for each blog feed. This is needed to deal with splogs and other scam artists. So each link does not weigh the same. Compare it to Technorati&#8217;s &#8220;blog authority&#8221; or Google&#8217;s &#8220;PageRank&#8221;. For a company like Juno, a link from the [Rollingstone blog](http://www.rollingstone.com/news) is worth more than one from a Blogspot site a 14-year old fan just set up. 
  * GoogRatiO will links blogs to actual sales (with money being paid and all). So it could come up with some inventive ways of redistributing affiliate fees

Imagine the ease with which applications like &#8220;Most Popular [Youtube video](http://www.youtube.com)&#8220;, &#8220;Most popular [De Standaard newspaper](http://www.standaard.be) article&#8221;, &#8230; could be created. The [Long Tail](http://www.thelongtail.com/) at work!

### Edgeio Buzz Timeline

As a professional reporter on Web 2.0 projects, Mike knows exactly how to plan the buzz for his new project:  
[<img  src="http://static.flickr.com/35/105291570_293f817809.jpg" width="500" height="338" alt="Edgeio Buzz" />](http://www.flickr.com/photos/pforret/105291570/ "Photo Sharing")

  * 2005-10-07: Teaser: &#8220;_Edgeio will give you the ability to do new and (we think) really exciting things with your blog_&#8221; &#8211; [Techcrunch](http://www.techcrunch.com/2005/10/07/edgeio-launching-soon/) 
  * 2006-02-02: SDForum announcement &#8220;_All Your Classifieds Belong To Us_&#8221; &#8211; [Jeff Clavier](http://blog.softtechvc.com/2006/02/sdforum_search_.html) 
  * 2006-02-09: &#8220;_Teare spilled a lot of beans tonight at an SDForum online-classifieds event at the GooglePlex_&#8221; &#8211; [BusinessWeek](http://blogs.businessweek.com/the_thread/techbeat/archives/2006/02/edgeio_edges_ou.html), [Dave Winer](http://www.scripting.com/2006/02/09.html#When:7:21:14AM), [Scobleizer](http://scobleizer.wordpress.com/2006/02/09/edgeio-opens-new-era-in-blogging/) 
  * 2006-02-11: &#8220;_We will be focusing on classified listings of any type to start_&#8221; &#8211; 1st post on [Edgeio blog](http://blog.edgeio.com/?p=4) 
  * 2006-02-12: &#8220;_Mike Arrington called me today and gave me a demo_ &#8221; &#8211; [Mashable](http://mashable.com/2006/02/12/edgeio-mikes-little-ebay-killer/) (Feb 12) 
  * 2006-02-18: &#8220;_I was given a personal tour_&#8221; @ TechCrunch NakedConversations Party &#8211; [Dan Farber @ ZDnet](http://blogs.zdnet.com/BTL/index.php?p=2609) (Feb 18) 
  * 2006-02-20: Buzz acceleration &#8211; [Buzzmachine](http://www.buzzmachine.com/index.php/2006/02/20/edgeio-and-the-distributed-world/), [SiliconBeat](http://www.siliconbeat.com/entries/2006/02/21/edgeio_a_web_20_answer_to_craigslist.html), [A VC](http://avc.blogs.com/a_vc/2006/02/edgeio_and_crai_1.html) 
  * 2006-02-27: Official launch: [Techcrunch](http://www.techcrunch.com/2006/02/27/edgeio-launches/), helped by [Om Malik](http://gigaom.com/2006/02/27/edgeio-launches-finally/), [Read/Write Web](http://www.readwriteweb.com/archives/edgeio_launches.php), [WeBreakStuff](http://webreakstuff.com/blog/2006/02/edgeio-launches/)

(There are obviously clear advantages in finding seed investors/business consultants/software developers/media buddies that are also A-list bloggers.)

This is certainly a project to follow!  
PS: thanks to [Bart](http://www.netlash.com) and [Francois](http://www.shoob.com/fr/blog/archives/microformat/les_microformats_bientot_integres_dans_votre_blog.html) for bringing Edgeio to my attention.

Technorati: <a href="http://technorati.com/tag/blog" rel="tag">blog</a> &#8211; <a href="http://technorati.com/tag/feed" rel="tag">feed</a> &#8211; <a href="http://technorati.com/tag/rss" rel="tag">rss</a> &#8211; <a href="http://technorati.com/tag/aggregator" rel="tag">aggregator</a> &#8211; <a href="http://technorati.com/tag/edgeio" rel="tag">edgeio</a> &#8211; <a href="http://technorati.com/tag/technorati" rel="tag">technorati</a> &#8211; <a href="http://technorati.com/tag/google" rel="tag">google</a> &#8211; <a href="http://technorati.com/tag/microformats" rel="tag">microformats</a>
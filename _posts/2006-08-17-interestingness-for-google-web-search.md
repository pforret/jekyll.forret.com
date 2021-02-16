---
id: 404
title: '&#8220;Interestingness&#8221; for Google web search'
date: 2006-08-17T14:48:45+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/08/interestingness-for-google-web-search/
permalink: /2006/08/17/interestingness-for-google-web-search/
categories:
  - Google
---
### Interesting Flickr

Last year, when Flickr wanted to create a ranking system for its pictures, they developed an algorithm for &#8220;interestingness&#8221;. 

<div style="float: right; font-size: .8em">
  <a href="http://www.flickr.com/photos/tkpo/215843071/"><img src="http://static.flickr.com/91/215843071_2c025592a5_m.jpg" alt="Sound of cause" /></a><br /> Flickr photo by <a href="http://www.flickr.com/photos/tkpo/">tkproject2004</a>
</div>

> There are lots of things that make a photo &#8216;interesting&#8217; (or not) in the Flickr. Where the clickthroughs are coming from; who comments on it and when; who marks it as a favorite; its tags and many more things which are constantly changing. Interestingness changes over time, as more and more fantastic photos and stories are added to Flickr.  
> from [About Interestingness](http://www.flickr.com/explore/interesting/)

Taking into account views, comments, notes, favorites and user reputations, it is an advanced [wisdom-of-the-crowds](http://en.wikipedia.org/wiki/The_wisdom_of_crowds) [long-tail](http://longtail.typepad.com/the_long_tail/) recommendation engine. The exact formula is unknown and the indivual &#8216;interestingness&#8217; score of a photo cannot be displayed. Just like with [Google PageRank](http://en.wikipedia.org/wiki/Pagerank), people try to guess how it works internally.  
<!--more-->

> I believe interestingness works by a combination of the following things:  
> 1) (&#8230;) If there are two pictures which have the same number of favorites the one that has been less seen seems to be more interesting. (&#8230;)  
> 2) Favorites seem to have more weight than comments  
> 3) (&#8230;) a person who is known by the system to create interesting content is given greater power to judge content as interesting.  
> comment by [Alex Andronov](http://www.gamboling.co.uk/) on [Flickr and Interestingness](http://radar.oreilly.com/archives/2006/08/flickr_and_interestingness_1.html)

### Could Google do that too?

Where Google only takes into account links between pages &#8211; and one link is one &#8216;vote&#8217; of a certain weight &#8211; Flickr uses multiple sources of interaction data. The reason is, obviously, because they have it. All &#8216;view&#8217;, &#8216;note&#8217;, &#8216;comment&#8217; and &#8216;favorite&#8217; votes go through their website. Google does not have this luxury. So where could they get more data from to build a _PageInterest_ ranking?

  * **VIEWS**: how could Google know which pages are viewed? 
      1. They could use the [Alexa](http://www.alexa.com) data (although, maybe Amazon won&#8217;t give it).
      2. They could use the data coming in from their own Google Toolbar (to show the Pagerank for each page, a query is sent to the Google Pagerank servers with the URL). 
      3. They could use the data coming in from their Google Analytics clients (there aren&#8217;t so many of them, granted). 
      4. They could use the Adsense impressions (a lot of sites have those).
    
    All these methods sound kind of &#8216;Big Brother&#8217;, don&#8217;t they?

  * **COMMENTS/NOTES**: how can Google know on which URLs people react? 
      1. An obvious source are the blogs. A link from a blog could be considered a &#8216;comment&#8217;. Strictly speaking they already use this data to calculate Pagerank.
      2. They could look for URLs in Gmail. Which would incite spammers to start sending bogus mails between Gmail accounts. Bad idea.
      3. Count # of comments on blog posts? Nah. Authors would start spamming their own blog posts.
      4. [Digg](http://www.digg.com) data? Although the focus of Digg is now still limited to technology, in the future maybe. [Stumbleupon](http://www.stumbleupon.com/)?
    
    So this turns out to be a hard part. </li> 
    
      * **FAVOURITES**: how could Google know what URLs are preferred &#8211; or stored for posteriority &#8211; by surfers? 
          1. [del.icio.us](http://del.icio.us) would be a great source of info, or [ma.gnolia](http://ma.gnolia.com/)
          2. a bookmark backup/sync provider, like [Google Bookmarks](http://www.google.com/bookmarks/).</ul> 
    
    Looks like both Yahoo and Google have a lot of the necessary data sources to create an &#8220;interestingness&#8221; rating for web pages. 
    
    ### Interesting movies
    
    Another place where such an index would come in handy is [Youtube](http://www.youtube.com): they now have a &#8220;most recent&#8221;, &#8220;[most viewed](http://www.youtube.com/browse?s=mp)&#8220;, &#8220;top rated&#8221;, &#8220;most discussed&#8221; &#8230;, but if they could combine all those into a single &#8220;most interesting&#8221; listing, and also sort their search results on interestingness, that would a really neat feature.
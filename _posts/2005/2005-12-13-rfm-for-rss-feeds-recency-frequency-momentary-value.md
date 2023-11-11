---
id: 225
title: 'RFM for RSS feeds: Recency, Frequency, Momentary Value'
date: 2005-12-13T08:14:00+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/12/13/rfm-for-rss-feeds-recency-frequency-momentary-value/
permalink: /2005/12/13/rfm-for-rss-feeds-recency-frequency-momentary-value/
categories:
  - podcast
---
I've been throwing round an idea in my head for a while: how the [RFM method](http://en.wikipedia.org/wiki/RFM) for analyzing and prediction customer behaviour could be applied to RSS feeds (blogs, podcasts, &#8230;).

### Recency, Frequency, Monetary Value &#8211; customer segmentation

What does RFM do: it analyses 3 parameters for each customer:

  * date of last purchase (recency)
  * \# purchases per month/quarter (frequency)
  * average amount of money spent per purchase (monetary value)

It then does a cluster analysis of the numbers (or in the simple version: a marketing guy decides based on gut feeling) and defines boundaries for each parameter, in order to split them up into categories.

Example:
:   **Recency**: R1 is everyone who purchased in the last 2 months, R2 is everyone who bought in the last year and R3 is the rest. 
:   **Frequency**: F1 is every customer that purchased on average 3 or more times per quarter, F2 purchased at least 1 time per quarter and F3 is the rest.
:   **Monetary Value**: M1 are those who purchased more than �500 per visit and M2 are the rest.

In this scenario you have split up your heterogeneous customer group into 18 (3x3x2) more or less homogeneous subgroups that you can address in different ways. Your supercustomers R1-F1-M1 don't need the same approach as the R3-F2-M1 (the big spenders that haven't been around to your shop in the last year). And you hope you can predict the behaviour of each customer by analyzing his past behaviour.  
_(Side note: I learned this stuff while working in Sopres for [Stefaan Vermeiren](http://www.internetjournalistiek.be/dossiers/detail_ebanking.php?nieuwsid=138), who's now teaching [the Kiwis to do online banking](http://www.rabobank.co.nz/))_

### RFM for RSS &#8211; feed segmentation

 

Now how would this work for RSS feeds?  
[<img  height="300" alt="RFM analysis for RSS feeds" src="http://static.flickr.com/34/73163154_e921c90b51.jpg" width="500" />](http://www.flickr.com/photos/pforret/73163154/ "Photo Sharing")

  * **Recency**: date of last post
  * **Frequency**: average # posts per month, or mean-time-between-posts (important is that you only take into account the period from the first to the last post: if the feed contains 1 item per week but the last one was 1 year ago, the frequency is still 1/week i.e. around 4/month)
  * **Momentary Value**: (_I know &#8216;momentary' is not a great term, just couldn't come up with a better 4-syllable alternative for &#8216;monetary' yet_) this is the most creative part: you can count the # of words, # of links, # images, filesize of the podcast audio or the video file, &#8230;

What can you do with this kind of statistic? Well, I see some applications:

  * **is a blog &#8216;alive'**? when do you decide if a blog is no longer active: it will be a combination of recency and frequency. If someone posted 1/week and there has not been any activity for 2 months: probably (momentary) dead. If someone posts 1/quarter and no activity for 2 months: perfectly normal. In statistic terms: calculate mean-time-between-posts MTBP and [standard deviation](http://mathworld.wolfram.com/StandardDeviation.html) STDEV. If the last post was MTBP days ago, there is a 50% chance that the feed is no longer updated. If it is (MTBP + STDEV) days ago, then the chance is 84%. (MTBP + 2 * STDEV): 97%, etc &#8230;
  * **what kind of blog is it**? if average # words/post is low, and # links per post is around 1 (and frequency is 1/day): it's probably a _linkblog_ (like e.g. [bnox](http://babynox.blogspot.com/)). If the #words/post is high, the MTBP is 1 month with a very low STDEV, it is probably a _monthly newsletter_.
  * **do I have time for this blog**? Now you subscribe to a blog without an idea of how often the author posts, and how long the articles are. With an RFM analysis, the blog could be marked as &#8216;low traffic' (2 posts of 500 words per month) or &#8216;high maintenance' (60 posts of 300 words per month).
  * **how much data does this podcast deliver**? There is a big difference between a show like [DailySourcecode](http://www.dailysourcecode.com) (about 20 podcasts of 40MB per month: 800MB/month) or [IT Conversations](http://www.itconversations.com/index.html) (2 posts/day of 14 MB each: 840MB/month) and a humble effort like my [Mash-up podcast](http://mashup.xampled.com) (2 to 5 posts per year of 4,5MB: 1,5 MB/month). For a mobile device, where storage and bandwidth aren't so readily available (nor cheap), this is an important distinction.

This RFM analysis could be done by a company like [Technorati](http://www.technorati.com), [Bloglines](http://www.bloglines.com) or [Feedburner](http://www.feedburner.com), and they could combine it with language, location, topic and popularity stats to create an excellent segmentation of blogs. Or if someone feels tempted to set it up?
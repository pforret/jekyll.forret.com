---
title: 'Let’s get rid of podkeyword.com'
date: 2005-12-02T19:04:17+01:00
author: Peter
layout: post
permalink: /2005/12/02/lets-get-rid-of-podkeywordcom/
categories:
  - podcast
---
Bad wake-up call: [theregister.co.uk](http://www.theregister.co.uk/2005/12/02/podjacking/) reports on [Erik Marcus](http://www.vegan.com/), a podcaster who has had his podcast feed hijacked by Podkeyword.com (no link, you know why). Why am I concerned? Guess under what name my [Smoothpod Mashup podcast](http://www.smoothouse.org/smoothpod/) is registered in iTunes?

### What is podcast hijacking

> (&#8230;) it merely involves finding a target podcast, and creating a new unique URL for it on a website you control. You then point your URL to the RSS feed of the target podcast. Next, you do what it takes to make sure that as new podcast search engines come to market, the page each engine creates for your target podcast points to your URL instead of the podcast creator’s official URL. ([Colette Vogele](http://cyberlaw.stanford.edu/blogs/vogele/archives/003636.shtml))  
> So years can go by and then the hijacker strikes: At some point, [the hijacker] can then spring out of the woodwork and demand payment from [the] target [podcaster].” The podcaster is “supremely vulnerable”, because the hijacker can at any moment change URL pointer to any other show of the hijacker’s desire and the target podcaster’s audience will “vanish.” ([corante](http://www.corante.com/podcasting/2005/12/01/rss_hijackingpodjacking.php))

So someone provides a mirror service for your podcast feed, gets it registered with major podcast directories and search engines and can then choose whether to just mirror your feed, alter it (e.g. insert advertising), or replace it by whatever he feels like. That, in short, is the businessplan of podkeyword.

### Who is behind podkeyword?

Some research shows that a George Lambert from Nashua (NH) is the owner of podkeyword.com (registered in Oct 2004). He also has Goldenware Travel Technologies (goldenware.com), providing airline timetable services (so he's used to repackaging other people's data). Another of his projects is cashcowmarketingplan.com, a spam-infested blog on _&#8220;getting rich quick on the Internet&#8221;_. This is worrying!

### Let's get rid of podkeyword

Here is what has to be done:

by every podcaster
:   check if you are affected: search for your podcast to see if it has been hijacked:  
    on [iTunes](http://phobos.apple.com/WebObjects/MZStore.woa/wa/viewGenre?id=26): subscribe to your own feed because you won't be able to see the actual feed URL unless you're subcribed. If it's a podkeyword URL, click the &#8220;Report a concern&#8221; button and tell Apple this is a wrong feed URL, give them the right one.  
    on [Yahoo](http://podcasts.yahoo.com/): search for it and if both your real feed and the podkeyword feed are present (I found 2 podkeyword feeds for my own podcast), give the hijacked ones a bad review (give it 1 star and write a review about the hijack) 

by every podcast directory/search engine (iTunes, Yahoo, you listening?) 
:   restore hijacked feeds (Remark: the following is NOT real code, just some pseudo code to clearly explain what should be done)</p> 
    
    <pre>for $victimFeedURL in (*.podkeyword.com feeds){
# get the content of the feed
$victimFeedXML=getHTTP($victimFeedURL);
#every feed contains the URL of the homepage
$victimSiteURL=ParseRSS($victimFeedXML,"channel.link");
#get the HTML of the homepage
$victimSiteHTML=getHTTP($victimsiteURL);
# get the URL of the feed the author has specified
$victimRealFeed=parseHTML($victimSiteHTML,
"head.link('application/rss+xml')");
if($victimRealFeed  "" AND $victimRealFeed  $victimFeedURL){
#replace *.podkeyword.com by real feed URL
$victimFeedURL=$victimRealFeed;
}
}</pre>

by [Feedburner](http://www.feedburner.com) (since they are an important podcast feed provider) 
:   detect the feeds that are being queried by podkeyword (I don't see them showing up as a separate UserAgent in my Feedburner stats, but [Eric Lunt](http://www.burningdoor.com/eric/) and his gang won't have too much trouble finding them anyway) and (a) warn the feed owners that they might be hijacked, (b) offer the feed owners the option to include an extra post in their feed to alert their subscribers to switch to the real feed.

### Doesn't Feedburner do the same kind of thing?

**Not at all**. Feedburner also mirrors and alters RSS feeds but there are some really big differences:

  1. Feedburner is not evil. That is my opinion and I might be wrong, but I've had contact with Feedburner on several occasions and they seem to be a bunch of intelligent and down-to-earth geeks. Plus they have found a way to [make money with Feedburner](http://www.feedburner.com/fb/a/publishers/commercial) without taking advantage of people.
  2. Feedburner has added value: they convert a feed to a valid podcast feed, they can splice different feeds together, they provide essential stats.They deserve their place as a middleman.
  3. Most importantly: **I have voluntarily chosen Feedburner as my service provider**! I configured it myself and I added the Feedburner RSS feed link to my blog's HTML template. On the other hand, I didn't contact podkeyword, I have never asked them to do anything for me.

Technorati: <a rel="tag" href="http://technorati.com/tag/podcast">podcast</a> &#8211; <a rel="tag" href="http://technorati.com/tag/hijack">hijack</a> &#8211; <a rel="tag" href="http://technorati.com/tag/itunes">itunes</a> &#8211; <a rel="tag" href="http://technorati.com/tag/yahoo">yahoo</a> &#8211; <a rel="tag" href="http://technorati.com/tag/feedburner">feedburner</a>
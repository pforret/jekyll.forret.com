---
id: 88
title: Setting up a new Blogger site
date: 2004-12-07T01:23:10+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/12/07/setting-up-a-new-blogger-site/
permalink: /2004/12/07/setting-up-a-new-blogger-site/
categories:
  - Google
---
![](http://www.pixagogo.com/S55bfzQn-9Laj342Ysd8!wxmXGCojZbm8v4rMDYivuSo!6vjCaHw92Cyfg39Keu0L9eD8T6x-lcCL8xqE95jB6jSKpLgQwmHko/blogger.jpg)  
So you want to blog? [Blogger](http://www.blogger.com) is by far the fastest and cheapest way to go. Here&#8217;s how to set up a full-fledged new blog in 10 steps (for a step-by-step tutorial with screenshots on how to do the basics, i.e. step 1 and 2, check out [preetamrai.com](http://preetamrai.com/webtopics/wiki_blog/02blog.htm) or [casweb.ou.edu](http://casweb.ou.edu/olr/technology/webpub/blogger/starting.htm)):

  1. **Pick a good blog name**  
    make sure the name is distinctive and/or representative. If you want to make a blog about football, you could call it &#8216;Football News&#8217;, but there are more than 80 million Google hits on &#8216;football&#8217;, and 1,4 million for &#8216;football-news&#8217;. Chances you ever end up in the first page is zero. If you choose &#8216;Funky Football&#8217;, there are only 550 hits in Google now. Watch out for words that are difficult to spell (&#8216;phootbal&#8217; has only 7 hits, but chances someone gets it right the first time he hears it are nil). 
  2. **Pick a good blogspot domain-name**  
    If you have some webspace with FTP access and flexible domainname management to your disposal, go ahead and publish on &#8216;whatever.mydomain.com&#8217;. But if you prefer a no-brainer, go for the &#8216;[whatever].blogspot.com&#8217; hosting. Make sure the domain-name is also distinctive and/or representative. &#8216;football.blogspot.com&#8217; might be free (it&#8217;s not, actually) but way too popular in Google. If you choose &#8216;funkyfootball.blogspot.com&#8217; (still free, go for it!) &#8211; there are only 103 hits for &#8216;funkyfootball&#8217; in Google now. There are actually no hits for &#8216;cxqqyh885pk&#8217; in Google, but honestly, who would remember a blog URL like &#8216;cxqqyh885pk.blogspot.com&#8217;? 
  3. **Make an RSS feed**  
    Google does **not** have an RSS feed, only Atom (not compatible). Your Atom feed will be published on [whatever].blogspot.com/atom.xml. So you will want to convert this Atom feed with [Feedburner](http://www.feedburner.com) and its &#8216;SmartFeed&#8217; option (free). Choose the feed name as http://feeds.feedburner.com/[blogname] or something close (if the name you like is already taken). If you want to make a Podcast, [use the Smartcast option](http://www.forret.com/blog/2004/10/how-to-podcast-with-blogger-and.html). 
  4. **Get a page counter**  
    Get it from a service like [NedStatBasic](http://www.nedstatbasic.net/) or [BelStat](http://www.belstat.be/) (free). To be sure, take both (they each have their own PROs and CONs). Copy/paste the HTML for each counter into a text document you save on your PC, so you have it handy when you start editing your HTML template (see 9.). 
  5. **Updating content: music**  
    to have easily updateable music playlists in your blog, use [Webjay](http://webjay.org) (free). You can insert a playlist into your blog by adding some JavaScript to its HTML (see 9.), and you can then edit the actual playlist using Webjay. 
  6. **Updating content: photos**  
    if you are serious about using nice, fast picture albums in your blog, use [Flickr](http://www.flickr.com/) (free), [Smugmug](http://www.smugmug.com/) ($30/year) or [Pixagogo](http://www.pixagogo.com) ($50/year). If you have a .blogspot.com domain, you cannot host your pictures on blogspot.com, you need an external service. They&#8217;re all different, pick the one you like most. You want:  
    a) a URL to each of your albums (to be used in a <a href=&#8230;> tag),  
    b) a URL for an individual picture (to be used in a <img src=&#8230;> tag)  
    (disclaimer: I am one of the founders of [HyperTrust](http://www.hypertrust.com), that runs Pixagogo). 
  7. **Updating content: links**  
    to insert a blogroll and/or link-list, use the services of [del.icio.us](http://del.icio.us/) (free), [Furl](http://www.furl.net/) (free) or [BlogRolling](http://www.blogrolling.com/) (free). They allow inserting lists of links (your blog buddies, other football sites, &#8230;) via JavaScript. 
  8. **Decide on your copyright license**  
    if the stuff you will publish might at some point be somewhat creative (you post the storyline for a new movie, a recipe for [duck-a-la-banana](http://www.whysanity.net/monos/fwaf.htm), a new name for a egg-shaped chair, &#8230;) decide on the license you want to apply on the content of the blog. Check [Creative Commons](http://creativecommons.org/) for more details on the options you have. 
  9. **Edit the blog HTML template**  
    If you&#8217;re not familiar with HTML, you might wanna ask a friend who is. You edit the template [through the Blogger &#8216;Template&#8217; tab](http://casweb.ou.edu/olr/technology/webpub/blogger/templates.htm). You need to add the Feedburner feed chicklet, the web counter HTML, JavaScript/HTML for the music/photos/links and the Creative Commons license. You might want to decide to change/delete your Blogger Profile, add a disclaimer on the bottom, change the color of your bullets, &#8230; 
 10. **Get a publishing client**  
    for most platforms, you can get a Blogger client that allows you to create your post locally on your PC, and then publish it when it&#8217;s ready. Advantages: you do not need to be on-line to write your blog posts, only to publish them, and you do not lose your article if your network or the Blogger server crashes. On Windows, use [w.bloggar](http://www.wbloggar.com/).
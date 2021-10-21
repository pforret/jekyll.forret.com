---
id: 103
title: 'Podcast for business: authenticated podcatching'
date: 2005-01-09T01:01:26+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/01/09/podcast-for-business-authenticated-podcatching/
permalink: /2005/01/09/podcast-for-business-authenticated-podcatching/
categories:
  - podcast
---
![](http://www.pixagogo.com/S5!bRz4QtUrC917OHDOel9wq5YqVCGa1SnazhoU9DsdeKaGOVWcUIkocx1d5N4Mfp!Y-11wnrk!EaJivdhrNforUS28TyisOzCXRlzOSjTJhM_/iPod_hand.jpg)  
Podcasting is still in its infancy. A lot of podcasts programs are about podcasters podcasting, on how they do it and why it&#8217;s so great. This is rather normal, since it is still new, and on the producing side a lot of (technical) issues still need to be addressed. I also hear the occasional _&#8220;It&#8217;s 9AM. It&#8217;s raining. I haven&#8217;t got a clue what to say next.&#8221;_ podcast. But shows like [IT Conversations](http://www.itconversations.com), [BBC&#8217;s &#8220;In Our Time&#8221;](http://www.bbc.co.uk/radio4/history/inourtime/mp3_podcast.shtml) and [The Dawn and Drew Show](http://www.dawnanddrew.com/) show where the possibilities lie. This is high value content. It is clear that at some point people will start making money with podcasting. 

Adam Curry dreams about [a public figure like Howard Stern joining the podcast movement](http://www.curry.com/2004/12/30#a447). I agree with him that this is a good example of how podcasting could be the mechanism for a paid subscription model. Paid subscription also means: you only listen if you pay, so subscribers will need to prove their membership, i.e. authenticated podcatching.

Since podcasting is based on downloading files over HTTP, you actually don&#8217;t need to add much to the current scheme to enable authentication. Virtually all HTTP servers have username/password authentication support (HTTPS with certificates would be overkill), so I can see 2 models emerging:

open feed, protected audio</p> 
:   anyone has access to the RSS feed, but you need a username/password to download the files.</p> 
    
    protected feed and audio</p> 
    
    :   you need a username/password for the feed and for the audio files

My guess is that the first model will be the most common:

  * the publicly available RSS feed gives information on the podcast, shows up in blog search engines and as such serves as publicity. 
  * you only need authentication for the audio files. These may in many cases be hosted on a different server than the feed. With podcast service providers like [libsyn.org](http://www.libsyn.com) emerging, authentication might be a problem a podcaster can also outsource. 
  * protecting the feed too might be a solution in cases where there&#8217;s confidential information in it. 
  * in any case, this means that podcasters like [iPodder](http://ipodder.sourceforge.net/) or [Doppler](http://www.dopplerradio.net/) will have to build in username/password support for file download. No rocket science, just something straightforward that needs to be done.

A predictable problem will be that, since MP3 files do not have DRM (Digital Rights Management) built in (the files can easily be copied), they might get passed on from 1 paying subscriber to X non-paying listeners. In that case, if this 1 subscriber sets up an &#8216;illegal&#8217; unauthenticated podcast feed, there are ways to put watermarks in MP3 files to pinpoint after some time who that cheater is. Also, Windows Media and Real Audio do have DRM capabilities, so as long as the ownership check happens during playback, and not during download, podcasting with these type of files could work too. 

There is no need to get out the Fort Knox methods yet. Security should be enough to make misuse difficult, but no so strict that it becomes too cumbersome to actually use the podcast. Just adding a username and password when you subscribe to the RSS feed in your podcatcher will get us a long way.
---
id: 353
title: 'Google and Perfect10: DMCA at its best'
date: 2006-06-24T19:57:26+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/06/google-and-perfect10-dmca-at-its-best/
permalink: /2006/06/24/google-and-perfect10-dmca-at-its-best/
categories:
  - copyright
  - Google
---
While searching for something really innocent on Google (honestly!), I got the following warning:  
[<img loading="lazy" src="http://static.flickr.com/66/173874573_fcb4373669.jpg" width="500" height="92" alt="Google DMCA warning: OMG" />](http://www.flickr.com/photos/pforret/173874573/ "Photo Sharing")

The [Digital Millenium Copyright Act](http://en.wikipedia.org/wiki/Digital_Millennium_Copyright_Act) (&#8220;DMCA&#8221; &#8211; 1998) _criminalizes production and dissemination of technology that can circumvent measures taken to protect copyright, not merely infringement of copyright itself, and heightens the penalties for copyright infringement on the Internet_. OMG, what kind of illegal practices had Google just protected me from? Clicking the ChillingEffects link shows the DMCA complaint in question: the Perfect 10

[<img loading="lazy" src="http://static.flickr.com/67/173874574_06690af5a3.jpg" width="500" height="375" alt="Google DMCA explanation: WTF" />](http://www.flickr.com/photos/pforret/173874574/ "Photo Sharing")  
<!--more-->

  
&#8220;Bonkable Beauties&#8221;? So it&#8217;s about an &#8216;adult entertainment&#8217; company (Perfect 10, Inc) that objects to finding its content in Google&#8217;s index? Apart from the technical measures they could take instead of sueing (see below), it seems like such a hilarious courtcase. Seth Finkelstein points out some good prose in the legal documentation:

> The P10 photographs consistently reflect professional, skillful, and sometimes tasteful artistry. That they are of scantily-clothed or nude women is of no consequence; such images have been popular subjects for artists since before the time of &#8220;Venus de Milo.&#8221; (&#8230;)  
> First, contrary to P10&#8217;s contention, photographs of nude women can, like photographs of the American West, vary greatly.  
> [sethf.com/infothought/](http://www.sethf.com/infothought/blog/archives/000977.html)

If you take a look at the complaints Google has had under the [DMCA](http://www.google.com/dmca.html) at [chillingeffects.org](http://www.chillingeffects.org/dmca512/keyword.cgi?KeywordID=2), you see that a lot of them concern owners of adult material: Playboy, Perfect10, Rabuck Agency. They are joined by Born-Again Christians, photographers and mostly people who saw their own content being copied or linked elsewhere. I&#8217;ve always had an instinctive disliking for the DMCA. Any law of this kind would have been written by people who can afford lawyers and lobbyists, and as we also see with its cousin, the [DTCS (Digital Transition Content Security)](http://blog.forret.com/2005/12/thought-dmca-was-bad-heres-dtcs/), they&#8217;re mainly tools to protect the media moguls. 

The outcome of the law suit came as some sort of surprise:

> Case #2 is Perfect 10 v. Google, in which a district court said that Google’s display of scaled-down thumbnail versions of Perfect 10’s copyrighted photos in its Google Image Search results page wasn’t fair use, reaching the opposite conclusion from the Ninth Circuit in Kelly v. Arriba Soft on similar facts. Perfect 10’s claim succeeded where Kelly’s failed, the court reasoned, because during the course of the litigation Perfect 10 had contrived to create a “market” for the sale of thumbnails through licensing them to a single cell-phone provider. (And wouldn’t you like to know who paid whom in that exchange!)  
> from [blogs.law.harvard.edu/infolaw/](http://blogs.law.harvard.edu/infolaw/2006/05/22/fair-use-and-market-effects-which-potential-markets-count/)

If you don&#8217;t want your content showing up in Google Search or Google Images, there are enough methods to take care of that without taking the legal route: a restrictive [robots.txt](http://www.robotstxt.org/wc/robots.html) file to prevent them from being crawled, using Javascript to show images &#8211; so that Google&#8217;s spiders don&#8217;t pick them up, using hotlinking protection &#8211; so only requests within pages of the same site go through. Some research at &#8211; couldn&#8217;t resist, with a name like that &#8211; bonkablebeauties.com shows that: no `robots.txt` file exists, each page has `<META content=index,nofollow,noarchive name=robots>` in the HTML headers, and the larger (non-member, non-nude) images are shown through Javascript (e.g. show random of 5 images). This means that: 

  * Google crawlers stop at the BB homepage (don&#8217;t index individual pages)
  * but: the text index ([pure text page](http://www.bonkablebeauties.com/females/), one click away from any damaging material) is also indexed, and it points to all individual BB pages
  * individual BB pages can also appear in Google when linked to from other sites
  * individual BB pages won&#8217;t have a &#8216;cached&#8217; version (thx to `noarchive`) 
  * there are [no results](http://images.google.be/images?q=site%3Abonkablebeauties.com) in Google Images.

Sounds like a viable policy for a company like Perfect10. A `robots.txt` file could block the Google spiders altogether, but then one wouldn&#8217;t be found at all in Google, would one? (Talk about biting the hand that feeds it.) I don&#8217;t know how often the word &#8216;bonkable&#8217; is used in English day-to-day speech, but BB surely [ranks #1](http://www.google.com/search?q=bonkable). Funny word that, sounds a bit like a title: &#8220;Let me introduce everyone: governor White, constable o&#8217;Connell and bonkable Jeffries. Please proceed, Ms Jeffries&#8221;
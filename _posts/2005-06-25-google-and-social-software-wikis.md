---
id: 157
title: 'Google and social software: wiki&#8217;s'
date: 2005-06-25T01:56:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/06/25/google-and-social-software-wikis/
permalink: /2005/06/25/google-and-social-software-wikis/
categories:
  - Google
  - Web2.0
---
![](http://www.pixagogo.com/S5vpfnjbBPdPmIPwfna5rAhGAFBPfTqg!3NszlfLcc-t!UqUuJc!ynXsouEz0nNaZbfBpDkJcFeaudsWKYenw-871sUYT3NeCTIOKrxTrfxNJ5pwUdn5C8mjy-LayZCY9csXuVddj3uMjbT4d!8bWORA__/tango_sepia.jpg)  
**Moving my tango site**  
I am currently considering converting [tango.forret.com](http://tango.forret.com) into a wiki-style site. It is a hobby site with [tango steps](http://tango.forret.com/tango/steps/), tango terms ([glossary](http://tango.forret.com/tango/glossary/)) and other tango-related stuff. I have by now developed some wiki-like functions in ASP, and it would probably be better to just go with an existing, full featured (PHP or Perl based) wiki system. 

**What is a wiki?**

> A wiki enables documents to be written collectively (co-authoring) in a simple markup language using a web browser.  
> (from [wikipedia.org](http://en.wikipedia.org/wiki/Wiki))

It is a social software that allows the building of highly interconnected websites of free-form knowledge, easily edited by whoever has access to it.  
My choice for the &#8216;wiki&#8217; kind of [social software](http://en.wikipedia.org/wiki/Social_software) is motivated by:

  * the information does not need a chronological organisation. Moreover, each topic wil evolve in time so it would actually be bad to link them to certain dates. So this makes a [blog](http://en.wikipedia.org/wiki/Weblog) (key feature: reverse chronological) not a good option. 
  * the information is not conversation-like: it will be a few-to-many medium (certainly now &#8211; currently I am the only author) and I am not responding to specific questions or threads. This kind of rules out an [Internet forum](http://en.wikipedia.org/wiki/Internet_Forum) software (like [phpBB](http://www.phpbb.com)). 
  * what I like about a [wiki](http://en.wikipedia.org/wiki/Wiki) is the strong **interconnection** of pages (a description of a tango term like &#8216;[milonga](http://tango.forret.com/tango/glossary/?term=Milonga)&#8216; will typically refer to other terms, whose explanation is only one click away), the **easy editing** within the browser and easy **co-authorship** with version control.

**Wiki farms**  
In order to play around, I wanted to check if there is a counterpart of blogger.com for wiki&#8217;s: big, free, reliable and flexible (layout wise). A good starting point was [WikiFarms (c2.com)](http://c2.com/cgi/wiki?WikiFarms):

  * [seedwiki.com](http://www.seedwiki.com) ([582 pages in Google](http://www.google.com/search?q=site%3Aseedwiki.com)) has a WYSIWYG editor, but the free version is limited to 50 pages. Very slick layout. 
  * [schtuff.com](http://www.schtuff.com) ([3750 pages in Google](http://www.google.com/search?q=site%3Aschtuff%2Ecom)) has a neat interface (uses Javascript-based editor), and adds Google Adsense publicity to each page. 
  * [memebot.com](http://www.memebot.com) ([3740 pages in Google](http://www.google.com/search?q=site%3Amemebot%2Ecom)) offers lots of functionality for free with no ads. 
  * [wikispaces.org](http://www.wikispaces.org/) ([30600 pages in Google](http://www.google.com/search?q=site%3Awikispaces%2Eorg)) has a sober layout, good functionality (each page can be tagged) and also uses Google ads. 
  * [jot.com (JotSpot)](http://www.jot.com) ([44600 pages in Google](http://www.google.com/search?q=site%3Ajot.com)) is a wiki system with application modules inside: an RSS-reader, a bug tracker, an event calendar, &#8230; Their founder Joe Kraus gave a [speech on itconversations.com](http://www.itconversations.com/shows/detail308.html).

They might be good for some projects, but eventually I will want to host my tango site on my own server, which in my hoster&#8217;s case means it will be based on either [Tikiwiki](http://tikiwiki.org/) or [PhpWiki](http://phpwiki.sourceforge.net/).

**Wiki&#8217;s and Google**  
Just like [Google likes blogs a lot](http://blogbusinessworld.blogspot.com/2005/05/blogstheme-relevant-content-and-links.html), Google likes wiki webs a lot (meaning: they get ranked high in Google searches):

  * They are very topical and have good keyword density (i.e. a page on &#8216;megapixel&#8217; will explain the term using most of its synonyms and related concepts like resolution, CCD, RGB, &#8230;) 
  * They are all very well internally connected (they link to one another, they might have pages with links to &#8216;Recent changes&#8217;, &#8216;Most visited pages&#8217; &#8230;) 
  * they have very relevant URL names (a link [nl.wikipedia.org/wiki/Megapixel](http://nl.wikipedia.org/wiki/Megapixel) will give better results in Google for a search on &#8220;megapixel&#8221; than something like <u>www.example.com/wiki/page.php?id=1445</u>) 
  * they have relevant page titles (typically the topic of the page shows up in the title: &#8220;Megapixel &#8211; Wikipedia NL&#8221;)

Just like Google bought [Blogger](http://www.blogger.com) at some point, they are now looking [into supporting Wikipedia](http://dangillmor.typepad.com/dan_gillmor_on_grassroots/2005/02/google_wikipedi.html) (more than 11 million hits in Google &#8211; Pagerank 9). I&#8217;ve read that, because Wikipedia is not a real company, and as such Google can&#8217;t buy them, they are looking at buying [answers .com](http://www.answers.com), who get part of their input from Wikipedia. Google has a history of [trying to buy powerful content providers](http://www.kuro5hin.org/story/2005/6/12/143721/743), so if one of the Wiki hosters becomes really popular, like JotSpot or Wikispaces, and is as such responsible for hundreds of thousands of pages, they might become a candidate for acquisition too.

Technorati: <a href="http://technorati.com/tag/wiki" rel="tag">wiki</a> &#8211; <a href="http://technorati.com/tag/google" rel="tag">google</a>
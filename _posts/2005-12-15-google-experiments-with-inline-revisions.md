---
id: 227
title: Google experiments with inline revisions
date: 2005-12-15T09:50:00+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/12/15/google-experiments-with-inline-revisions/
permalink: /2005/12/15/google-experiments-with-inline-revisions/
categories:
  - Google
---
I don&#8217;t recall having seen this before: within the SERP (Search Engine Result Page) of a keyword X, Google puts the top 3 results for a keyword Y.  
[<img loading="lazy" src="http://static.flickr.com/35/73745193_476107fe52.jpg" width="424" height="500" alt="Google alternate results" />](http://www.flickr.com/photos/pforret/73745193/ "Photo Sharing")  
The exact details:

  * I did a search for &#8220;[FYD](http://www.google.com/search?q=FYD)&#8221; on google.com (I won&#8217;t tell you why, but I think [Ine](http://www.monuments.nu) might have an idea) 
  * I got results for FYD (&#8220;Results 1 &#8211; 10 of about 280,000 for FYD&#8221;) 
  * just behind the 3 first results, Google inserts a block with the 3 first results for &#8220;FTD&#8221; (4.150.000 results). 
  * Google does not suggest that I made a typo by stating something like &#8220;Did you mean &#8216;FTD&#8217;?&#8221; 
  * There is a title line &#8220;See results for: [ftd](http://www.google.com/search?q=ftd&sa=N&revid=240017845&qpos=0&oi=revisions_inline)&#8221; with the addition of `oi=revisions_inline` in the query string. So I guess they call it &#8220;inline revisions&#8221;. 
  * the first three results for &#8220;FTD&#8221; are all homepages of domains with FTD in them: ftd.com, ftdi.com, ftd.de . That might be a coincidence, since these are the actual first 3 results for &#8220;ftd&#8221;. 
  * Knowing how Google generally works, this seems like an organic search feature. I don&#8217;t think either of those 3 &#8220;ftd&#8221; domains paid for having the revision. 
  * Google tracks click-through on these revisions: they first send the visitor to [http://www.google.com/url?q=http://www.ftd.com/](http://www.google.com/url?sa=X&revid=889895241&qpos=0&upos=0&oi=revisions_inline&q=http://www.ftd.com/) with the parameters: sa=X & revid=889895241 (changes with every query refresh) & qpos=0 & upos=0 (position of result: 0/1/2) & oi=revisions_inline 
  * I don&#8217;t get these revisions when I search on google.be. I don&#8217;t get them when I use an extra keyword in my search. But I can reproduce the results for &#8220;FYD&#8221; from another location. 
  * Some other queries that have these inline revisions: [PDZ](http://www.google.com/search?hl=en&lr=&q=PDZ&btnG=Search) (See results for: perfect dark zero), [ADZ](http://www.google.com/search?hl=en&lr=&q=ADZ&btnG=Search) (See results for: adze), [UGE](http://www.google.com/search?hl=en&lr=&q=UGE&btnG=Search) (See results for: universal game editor).  
    So it&#8217;s not just about typos, also for &#8216;lesser known&#8217; acronyms. 

UPDATE: penalty points for doing sloppy research: Google was already testing this out in August. Here&#8217;s an [article on seo-consulting.de (German)](http://www.seo-consulting.de/pages/news-467-Google-Revisions-Inline---bessere-Ergebnisse.php) (the search term was &#8216;[COLA](http://www.google.com/search?q=COLA)&#8216;, I also get the revisions for that) and one on [fuzzyfreaky.typepad.com](http://fuzzyfreaky.typepad.com/connect2400/2005/08/inline_related_.html) and it was mentioned again in October on [forums.digitalpoint.com](http://forums.digitalpoint.com/archive/index.php/google-revisions-inline/t-32894.html). The feature was announced on August 19 by [Googler Matt Cutts](http://www.mattcutts.com/blog/ui-fun-better-queries/). Scusi.

Technorati: <a href="http://technorati.com/tag/google" rel="tag">google</a> &#8211; <a href="http://technorati.com/tag/serp" rel="tag">serp</a> &#8211; <a href="http://technorati.com/tag/search" rel="tag">search</a> &#8211; <a href="http://technorati.com/tag/seo" rel="tag">seo</a> &#8211; <a href="http://technorati.com/tag/inline" rel="tag">inline</a> &#8211; <a href="http://technorati.com/tag/revisions" rel="tag">revisions</a>
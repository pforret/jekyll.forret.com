---
id: 206
title: Avoiding wiki spam in Mediawiki
date: 2005-11-01T16:56:00+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/11/01/avoiding-wiki-spam-in-mediawiki/
permalink: /2005/11/01/avoiding-wiki-spam-in-mediawiki/
categories:
  - spam
---
![](http://us3.pixagogo.com/S5!bRz4QtUrC-Sj1TAgtTFlZ3VSXZ5qqc0FV6wgVX5lDajmLu4v3nJX84k8JhevEGlMHjJmK9SHIZi4FQhr2D67Qy9JqYmGCgFkGIWwopmHqE_/spamsepia.jpg)  
The great thing about Wiki's is that everyone can edit them. The problem is that this attracts a new strain of spam morons: the [wiki spammers](http://news.netcraft.com/archives/2004/06/04/wikis_the_next_frontier_for_spammers.html). My [Tango Wiki](http://tango.smoothouse.com/wiki/) has gotten spammed several times per day since I launched it. A page gets changed to a list of URLs for various drugs, mostly _&#8216;male performance related'_, let's say.

A sample of the IP addresses of the offenders (basically all over the place):

  * 67.86.88.200 (optonline.net &#8211; Brooklyn, USA) 
  * 80.58.4.46 (rima-tde.net &#8211; Madrid, Spain) 
  * 80.58.50.107 (rima-tde.net &#8211; Madrid, Spain) 
  * 81.56.56.80 (proxad.net &#8211; Paris, France) 
  * 81.138.240.12 (btopenworld.com &#8211; Watford, UK) 
  * 82.131.14.62 (starman.ee &#8211; Saue, Estonia) 
  * 82.92.4.145 (xs4all.nl &#8211; Amsterdam, Netherlands) 
  * 140.116.39.112 (ncku.edu.tw &#8211; Taipei, Taiwan) 
  * 195.175.37.7 (ttnet.net.tr &#8211; Istanbul, Turkey) 
  * 195.175.37.70 (ttnet.net.tr &#8211; Istanbul, Turkey) 
  * 196.7.0.160 (alter.net &#8211; Cape Town, South Africa) 
  * 210.55.18.80 (global-gateway.net.nz &#8211; Auckland, New-Zealand) 
  * 212.138.47.21 (isu.net.sa &#8211; Riyadh, Saudi-Arabia) 
  * 212.190.198.36 (uunet.be &#8211; Belgium)

They try to hide the spam by putting it inside a `<div style="height: 1px">` ([CSS hidden spam](http://wiki.chongqed.org/CSSHiddenSpam)) so they are not visible to visitors, but get picked up by Google anyway. The goal, just as with [splogs](http://en.wikipedia.org/wiki/Splog), is to create Google juice, not to get read or clicked on.

The ways to fight this abuse are based on the following techniques:

  * editor whitelist: only certain IP addresses, or only logged-in users, can edit the pages</p> 
      * editor blacklist: certain IP addresses are blocked (e.g. those of anonymous proxies &#8211; often used by spammers) 
          * spam word detection: when the text contains certain words, the edit is not accepted 
              * spam link detection: when outgoing links contain certain words, the edit is not accepted 
                  * rel=nofollow: makes the outgoing links valueless for Google</ul> 
                    A lot of valuable information on fighting wiki spam can be found on: [chongqed.org](http://chongqed.org/) and on [meta.wikimedia.org](http://meta.wikimedia.org/wiki/Anti-spam_Features). What I have already done on my [MediaWiki](http://www.mediawiki.org/wiki/MediaWiki) installation is to add the following to `LocalSettings.php`:
                    
                    <pre>$wgShowIPinHeader = false;  # so no information on IP addresses can be added
$wgSpamRegex="/&lt;div/";   # so the hidden CSS trick does not work
$wgWhitelistEdit = true;    # so only logged-in users can edit
</pre>
                    
                    Technorati: <a href="http://technorati.com/tag/wiki" rel="tag">wiki</a> &#8211; <a href="http://technorati.com/tag/spam" rel="tag">spam</a> &#8211; <a href="http://technorati.com/tag/chongqed" rel="tag">chongqed</a>
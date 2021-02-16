---
id: 73
title: How to Podcast with Blogger and SmartCast
date: 2004-10-30T02:37:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/10/30/how-to-podcast-with-blogger-and-smartcast/
permalink: /2004/10/30/how-to-podcast-with-blogger-and-smartcast/
categories:
  - podcast
---
This is a step-by-step manual on how to create your own [Podcast](http://www.ipodder.org/whatIsPodcasting) feed with Blogger and [Feedburner SmartCast](http://www.burningdoor.com/feedburner/archives/000812.html).  
**PRECONDITIONS**:  
A. you have already created the MP3 files (see [podcastingnews.com](http://www.podcastingnews.com/topics/Podcasting_Software.html) on software for this)  
B. you already have hosting for the MP3 files, i.e. the Mp3 files already have their URL that anyone can access (see [podcast hosting](http://blog.forret.com/blog/2005/04/podcast-hosting-cheap-or-free.html) on hosting providers).

  1. Create a new blog in Blogger: [your_podcast].blogpost.com
  2. Go to the Settings/Formatting page of your new blog  
<img width="450" src="http://www.pixagogo.com/S5nS9NzlYO3UwVLyYGarC25-BGMnEpXtKvIOt!Z8!Wn59XSbUxRR6WP4twNK85P4i!ojvo8ulAgj8uYf2g8vZd0kGCszvnbZb5ARKJUZnj!wc_/formatting.jpg" /> 
  3. Set &#8216;Show Link Field&#8217; to Yes  
![](http://www.pixagogo.com/S5!bRz4QtUrC846BhYuKXPSMy4uKobJZJU2R!tVoCd1gKtunrR6FhouFbOalVdT6daE5dwHROtq4vWE!f71S!89vUJ26JE5z2Ls8TFIocWblw_/linkfield.jpg) 
  4. create a new Post, and put the MP3 file you want to podcast in the &#8216;Link&#8217; field.  
<img src="http://www.pixagogo.com/S5LaMqXOKRm-0!V7Xj5bLLFNPkhsB4T9LFap3JNWXsHO6gKPdaMFweSs4!xCz3jFBifNdmfSA175LOqyP0sht-j6nYJtXSQI0TLD1TK-GSC28_/blogpost.jpg" width="450" /> 
  5. Publish the post, and check the blog (the title of your post will be clickable and point to the MP3 file)  
<img src="http://www.pixagogo.com/S5LaMqXOKRm-3ak0J4fR6JMVjKRZeCrcbNfPnjSZgGlwdLgybxaapznjHlh4oLIo2QDoTwVHzB!rSS0GGyqfqKWb-k24yniw-RvSYzxKGkXpw_/blogview.jpg" width="450" /> 
  6. At [www.feedburner.com](http://www.feedburner.com), burn the http://[your_podcast].blogpost.com/atom.xml  
<img src="http://www.pixagogo.com/S55bfzQn-9LagkMX8MdLF5EbzTbR1FTiXT6KQzFfWkYQbzKrlxGJzyfe5dNVBSUBgGnZnsSeQXILFH5Nq!nd5JwcAxnLoT1Cr7-8HWLg6hkSg_/fb_new2.jpg" width="450" /> 
  7. Enable the &#8216;SmartCast&#8217; option for this feed:  
<img src="http://www.pixagogo.com/S5x1XAKjWvM-T1sDs!l!bibgmgkpkGUVbD1Ap9rjcHrnGm-Q46Ai528zJpBW0WF8Xqh7VPRm2O5rdYC0uPa5oD76tcV3GV6!o8/fb_sc.jpg" width="450" /> 
  8. Verify your feed on [feedvalidator.org](http://feedvalidator.org/) (just to be sure &#8211; the result should be &#8220;This is a valid RSS feed&#8221;). 
  9. Enter the Feedburner RSS feed into your Podcast aggregator (here: [Doppler](http://www.dopplerradio.net))  
<img src="http://www.pixagogo.com/S55bfzQn-9Lag!vS3QiZqAUM!1xoDVLMyQ2xrlc8hOlKGpxzSaAhGFuI6KtEikYL1p7JvfR92TpbnnuGwPKHpRNQid1YRg7LnM8i8Aq1uc0d4_/doppler.jpg" width="450" /> 
 10. Let the Podcast aggregator update (in Doppler: push &#8220;Retrieve Now&#8221;): your MP3 file should download  
<img src="http://www.pixagogo.com/S5rgQ7KLjNs2eVIXH2MzOVB3nkArS0kaSCBPrZ-HowEVAtoGWHJaID1a-bINlAZUqQALQRaKbSxlmtxrUPZVSfexu8DdnGJLF7/doppler_dl.jpg" width="450" /> 
 11. configure your aggregator to introduce the downloaded files into iTunes, Windows Media Player or whatever application you use

Good luck!
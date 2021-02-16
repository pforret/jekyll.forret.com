---
id: 1193
title: Fix for error -15000 Remote speakers on iTunes / Windows 7
date: 2010-10-22T21:09:10+02:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1193
permalink: /2010/10/22/fix-for-error-15000-remote-speakers-on-itunes-windows-7/
categories:
  - Apple
tags:
  - airport
  - airtunes
  - itunes
---
So, just to be clear: this is not about iTunes on MacOSX, it&#8217;s only about iTunes 10 on Windows 7. It might work on Windows Vista, but I have no PC with Vista to test. It might help on versions earlier than iTunes 10 (I read the version 8 already had the problem), but I haven&#8217;t tested that.

<p style="text-align: center;">
  <a href="http://blog2.forret.com/wp-content/uploads/2010/10/error150001.jpg"><img loading="lazy" class="size-full wp-image-1198 aligncenter" title="error15000" src="http://blog2.forret.com/wp-content/uploads/2010/10/error150001.jpg" alt="" width="391" height="131" srcset="https://blog.forret.com/wp-content/uploads/2010/10/error150001.jpg 391w, https://blog.forret.com/wp-content/uploads/2010/10/error150001-300x100.jpg 300w" sizes="(max-width: 391px) 100vw, 391px" /></a>
</p>

The problem is the following: while it used to be possible (in older versions of iTunes), your iTunes  might **not stream the music** to an Airport Express / Apple TV (the feature they call &#8216;_Airtunes_&#8216;), and every time you try, iTunes will come back with an error &#8216;_An error occurred connecting to the remote speaker (&#8230;). An unknown error occurred (-15000)._&#8216;. What is happening is that the Windows Firewall is blocking the UDP connections for Airtunes (ports 6001-6003 if you&#8217;re asking). For some reason the old firewall rules for iTunes don&#8217;t work with the new version.

How to fix this: only if you&#8217;re not afraid of diving into your PC&#8217;s configuration. If you&#8217;re a novice or feel unsure, ask someone more knowledgeable to do it for you. Check if the person knows what a firewall is used for. &#8220;Security&#8221; is a too general answer.

<!--more-->

  * Go to the control panel for Windows Firewall (Start  / Control Panel / Security / Windows Firewall)[<img class="size-full wp-image-1197 alignnone" title="firewall4" src="http://blog2.forret.com/wp-content/uploads/2010/10/firewall41.jpg" alt="" width="450" srcset="https://blog.forret.com/wp-content/uploads/2010/10/firewall41.jpg 835w, https://blog.forret.com/wp-content/uploads/2010/10/firewall41-300x181.jpg 300w" sizes="(max-width: 835px) 100vw, 835px" />](http://blog2.forret.com/wp-content/uploads/2010/10/firewall41.jpg)
  * [](http://blog2.forret.com/wp-content/uploads/2010/10/firewall41.jpg)Go to the &#8216;Advanced settings&#8217; and look for the &#8216;Inbound Rules&#8217; (I know, for me iTunes _sending music_ to somewhere else sounds like outbound, but still, it&#8217;s the inbound you need).  
    [<img class="size-full wp-image-1196 alignnone" title="Windows Firewall: Inbound rules" src="http://blog2.forret.com/wp-content/uploads/2010/10/firewall31.jpg" alt="" width="450" srcset="https://blog.forret.com/wp-content/uploads/2010/10/firewall31.jpg 904w, https://blog.forret.com/wp-content/uploads/2010/10/firewall31-300x160.jpg 300w" sizes="(max-width: 904px) 100vw, 904px" />](http://blog2.forret.com/wp-content/uploads/2010/10/firewall31.jpg)
  * [](http://blog2.forret.com/wp-content/uploads/2010/10/firewall31.jpg)Look for a rule called &#8220;iTunes&#8221; (there might be several) and see if it talks about **UDP ports**, not TCP. The &#8216;Protocols and Ports&#8217; page should look like this:  
    [<img loading="lazy" class="size-full wp-image-1195 alignnone" title="UDP ports for iTunes" src="http://blog2.forret.com/wp-content/uploads/2010/10/firewall21.jpg" alt="" width="447" height="587" srcset="https://blog.forret.com/wp-content/uploads/2010/10/firewall21.jpg 447w, https://blog.forret.com/wp-content/uploads/2010/10/firewall21-228x300.jpg 228w" sizes="(max-width: 447px) 100vw, 447px" />](http://blog2.forret.com/wp-content/uploads/2010/10/firewall21.jpg)
  * [](http://blog2.forret.com/wp-content/uploads/2010/10/firewall21.jpg)Now go to the &#8216;Advanced&#8217; tab. Your rule will specify only &#8216;Public&#8217; under the profiles. Also check the &#8216;Private&#8217; profile. Don&#8217;t touch the rest.  
    [<img loading="lazy" class="alignnone size-full wp-image-1194" title="Private and public" src="http://blog2.forret.com/wp-content/uploads/2010/10/firewall11.png" alt="" width="447" height="587" srcset="https://blog.forret.com/wp-content/uploads/2010/10/firewall11.png 447w, https://blog.forret.com/wp-content/uploads/2010/10/firewall11-228x300.png 228w" sizes="(max-width: 447px) 100vw, 447px" />](http://blog2.forret.com/wp-content/uploads/2010/10/firewall11.png)
  * [](http://blog2.forret.com/wp-content/uploads/2010/10/firewall11.png)Close all your tabs and windows for the Firewall.
  * Try to connect to the speakers in iTunes. It should work.  
    [<img loading="lazy" class="alignnone size-full wp-image-1199" title="remote" src="http://blog2.forret.com/wp-content/uploads/2010/10/remote1.jpg" alt="" width="324" height="234" srcset="https://blog.forret.com/wp-content/uploads/2010/10/remote1.jpg 324w, https://blog.forret.com/wp-content/uploads/2010/10/remote1-300x216.jpg 300w" sizes="(max-width: 324px) 100vw, 324px" />](http://blog2.forret.com/wp-content/uploads/2010/10/remote1.jpg)

How did I find this? I was unnerved enough to look for a while and I checked how the demo version of [Airfoil](http://www.rogueamoeba.com/airfoil/) (in short: stream **any** audio to your Airport Express/AppleTV, not just from iTunes, costs 25$) deals [with the Windows firewall](http://www.rogueamoeba.com/support/knowledgebase/?showArticle=AirfoilFirewallsWindows).

Hope this helps some people like those [writing](http://discussions.apple.com/thread.jspa?messageID=12361783&#12361783) [on](http://discussions.apple.com/thread.jspa?threadID=1726662) [various](http://forums.comodo.com/empty-t61384.0.html) [forums](http://discussions.info.apple.com/thread.jspa?threadID=2594217&tstart=75).

So, now that I have the music from my laptop playing in my kitchen again, I can continue making my soup. Broccoli, thank for asking.
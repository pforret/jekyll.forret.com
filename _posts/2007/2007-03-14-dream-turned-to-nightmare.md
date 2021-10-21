---
title: Dream turned to nightmare
layout: post
permalink: /2007/03/14/dream-turned-to-nightmare/
image: /wp-content/uploads/2007/03/dream.jpg
categories:
    - wordpress

tags:
    - hosting
    - dreamhost
    - openminds
    - blog

---
You might have noticed the last couple of days that my blog (and some other of the dozen sites I run) was not always available. You might have experienced time-outs and Error 500 messages. I apologize for that. Let me give you a brief overview of what I went through between last Friday and now.


{% include img.html
src="/wp-content/uploads/2007/03/dream.jpg"
description="Dreamhost -> OpenMinds"
%}

My (former) hosting company [Dreamhost](http://www.dreamhost.com) began having intermittent problems one week ago. Some of my sites would go down and then up again. The Dreamhost Status blog talked about &#8220;[Sporadic brief network outages](http://www.dreamhoststatus.com/2007/03/06/sporadic-brief-network-outages/)&#8221; and promised to fix them, so I waited. Then, by the end of last week, suddenly all my blogs started going down with the &#8220;Error 500: Internal Server Error&#8221; message. I got emails from friends to warn me, but thanks to my [Montastic](http://www.montastic.com/) account, I had a pretty good idea of when they went down, and up again, and down &#8230; A friggin&#8217; Christmas tree!  

  
I sent mails to the Dreamhost support service, some of which were answered within the advertised 24 hours (but not all), but none of them any helpful. &#8220;I just checked and the blog/site is working correctly&#8221; (I&#8217;m sure it was, in between downtimes), &#8220;The machine was just restarted so all the apaches were still loading&#8221; (the restart didn&#8217;t help), &#8220;Is it possible a script in your code that&#8217;s taking longer than it should?&#8221; (how about you tell me?) &#8220;possibly people are hotlinking your pictures so it&#8217;s causing your site to go slow?&#8221; (No, all my pictures come from [Flickr](http://www.flickr.com)). &#8220;It appears some of the scripts on your site are being killed by our process watcher program&#8221; (no kidding!? which ones? what site?). 

After 4 days of asynchronous communication it became clear that: 1) the problems weren&#8217;t going away, 2) Dreamhost was not able to tell me why they were crippling my server, 3) after reading dozens of articles on the Dreamhost wiki, disabling most of my sites, disabling scripts, I had no idea what I could do about it. Personally, I think another customer/process on the shared hosting was gobbling up the CPU/memory and left nothing for the rest of us. Even a simple SSH terminal session would time out, leaving only FTP and phpMyAdmin for basic management.

Thoroughly fed up with the lack of support, I decided to bite the bullet and migrate the hell out of there. I contacted [OpenMinds](http://www.openminds.be) in Gent, who I know through [Barcamp](http://barcamp.forret.com) and also highly regarded by [Bart](http://www.netlash.com). They gave me a good offer for the busy multi-blogger that I am, and I started migrating yesterday. Currently, [blog.forret.com](http://blog.forret.com), [barcamp.forret.com](http://barcamp.forret.com) and [brusselstangofestival.forret.com](http://brusselstangofestival.forret.com) (a placeholder for the [Brussels Tango Festival blog](http://blog.brusselstangofestival.be)) are up and running again.

Unfortunately, being stressed and hurried makes you do things without thinking them through. In order to be able to point blog.forret.com to the new hosting account, I had to delete the &#8216;blog&#8217; subdomain from my Dreamhost account. On the mySQL database linked to that, I had my blog.forret.com WordPress database, which I backed up and restored to the new hosting. Regrettably I also had a number of other databases, for other blogs, that I did not back up. So I seem to have lost the database for winadmin.forret.com (don&#8217;t bother to go and look, it&#8217;s quite desolate). For some random reason I did back up the [video.forret.com](http://video.forret.com) database, so that should come back online soon (when the DNS changes are OK). There will probably be other corpses in the closet (the odd Wiki here and there), but I hope to migrate all my sites by the end of this month, and then leave Dreamhost. Welcome to an [Open Mind](http://www.openminds.be)!

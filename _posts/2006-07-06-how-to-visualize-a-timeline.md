---
id: 371
title: How to visualize a timeline
date: 2006-07-06T16:35:33+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/07/how-to-visualize-a-timeline/
permalink: /2006/07/06/how-to-visualize-a-timeline/
categories:
  - RSS
  - Web2.0
---
I am working on a timeline of animation movies: specifically to see when Disney started to fade and Pixar/Dreamworks took over. What films were made when, who made them and in what way do they coincide with activities of e.g. Steve Jobs. Oh, and to see where that new contender, Blue Sky Studios (&#8220;Ice Age&#8221;) fits in. 

I first started out with Excel: I figured I&#8217;d have a bunch of dated events and throw a quick XY chart onto it. But that didn&#8217;t feel right. I then turned to Powerpoint and created a horizontal timeline, on which I could place blocks. That works OK for events that are far apart, but not for a quick succession, nor for events with a duration (from &#8230; to &#8230;). And, frankly, it looked rather ugly:  
[<img  src="http://static.flickr.com/6/183329213_b11900985a.jpg" width="500" height="222" alt="Timeline: animated movies" />](http://www.flickr.com/photos/pforret/183329213/ "Photo Sharing")

Which left me with two questions: 

  1. how do other people create their timelines, and
  2. are there on-line tools that let me do it easily?

<!--more-->

### OTHER PEOPLE&#8217;S TIMELINES

#### VERTICAL/HORIZONTAL

Most timelines that were created in HTML (in most cases with a `table`) have a vertical timeline. These are typically sorted from oldest to newest in case of historical reports (long time ago), and from newest to oldest (i.e. reverse chronological, blog-style) for timelines where the most recent is the most interesting. Examples:  
[<img  src="http://static.flickr.com/43/183283221_8ab7f297d0.jpg" width="450" height="500" alt="Timeline: histoy of CGI" />](http://www.flickr.com/photos/pforret/183283221/ "Photo Sharing")  
History of CGI: vertical/chronological.

[<img  src="http://static.flickr.com/63/182468680_7739ed9506.jpg" width="500" height="352" alt="Timeline: NYT Leak" />](http://www.flickr.com/photos/pforret/182468680/ "Photo Sharing")  
New-York Times: history of a leak: vertical/reverse chronological

[<img  src="http://static.flickr.com/45/182464759_0bb3c82319.jpg" width="500" height="213" alt="Timeline: google zeitgeist 2001" />](http://www.flickr.com/photos/pforret/182464759/ "Photo Sharing")  
Google Zeitgeist 2001: horizontal/chronological

#### TEXT AND/OR IMAGE

Depending on the topic and the amount of available space, the designers use only text, text with a sporadic image, text/image combination or only images.

[<img  src="http://static.flickr.com/60/182485847_8ab0dfdbeb.jpg" width="500" height="335" alt="Timeline: modern chess" />](http://www.flickr.com/photos/pforret/182485847/ "Photo Sharing")  
History of modern chess: horizontal, text only

[<img  src="http://static.flickr.com/73/182468681_51a2d2c1dd.jpg" width="419" height="500" alt="Timeline: thinkprogress" />](http://www.flickr.com/photos/pforret/182468681/ "Photo Sharing")  
Thinkprogress: vertical, sporadic image

[<img  src="http://static.flickr.com/58/182464762_f78eecdb68.jpg" width="500" height="240" alt="Timeline: metmuseum" />](http://www.flickr.com/photos/pforret/182464762/ "Photo Sharing")  
Metropolitan Museum: history of art: horizontal, text + images

[<img  src="http://static.flickr.com/58/182481397_9b6175c2c4.jpg" width="395" height="500" alt="Timeline: the arrow of time" />](http://www.flickr.com/photos/pforret/182481397/ "Photo Sharing")  
The arrow of Time (Diegp Goldberg): vertical, chronological, only images

#### INTERACTIVE

Most of the timelines I found are static HTML or images. Some actually go a step further and let the user interact with all that data: zoom in on a period or get details for an event. The tools for this are Flash or Java. 

[<img  src="http://static.flickr.com/1/183343517_22782ac2c9.jpg" width="500" height="326" alt="Timeline: ishkur's guide to dance music" />](http://www.flickr.com/photos/pforret/183343517/ "Photo Sharing")  
Ishkur&#8217;s [Guide to Electronic Music](http://www.di.fm/edmguide/edmguide.html) (which I&#8217;ve [written about before](http://blog.forret.com/2004/09/i-remember-house-before-it-was-techno/)): oldest = top left, with concentric circles going down. 

[<img  src="http://static.flickr.com/46/182464764_8dc2f18cf9.jpg" width="500" height="302" alt="Timeline:  pbs_dickens" />](http://www.flickr.com/photos/pforret/182464764/ "Photo Sharing")  
A Dickens&#8217; timeline: interactive Flash app, with a nice split up between Dickens&#8217; works, events in his life and general events in England at that era.

[<img  src="http://static.flickr.com/70/182464758_07e9c304a7.jpg" width="500" height="378" alt="Timeline: babynamewizard" />](http://www.flickr.com/photos/pforret/182464758/ "Photo Sharing")  
Baby Name Wizard [NameVoyager](http://babynamewizard.com/namevoyager/lnv0105.html): Java application: shows historic popularity of English christian names.

_REMARK: a lot of these examples I found through the [Edward Tufte forum](http://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=00005g&topic_id=1)._

### ONLINE TOOLS

Haven&#8217;t seen any real on-line tools for it yet. 

  * MediaWiki comes with a tool that needs some more installation care before it works: [EasyTimeLine](http://infodisiac.com/Wikipedia/EasyTimeline/Introduction.htm)  
    [<img  src="http://static.flickr.com/59/183355667_838dd3c3b9.jpg" width="500" height="353" alt="Timeline: easytimeline" />](http://www.flickr.com/photos/pforret/183355667/ "Photo Sharing") 
  * [Gliffy](http://www.gliffy.com) can&#8217;t do it, [Thumbstacks](http://www.thumstacks.com) can&#8217;t do it

### RSS to Timeline converter

Why would you need a timeline? Just think about it:

  * add a timeline to your CV
  * show your blog&#8217;s feed as a timeline
  * show your project overview as a timeline
  * show your Flickr photo&#8217;s as a timeline
  * &#8230;

So a natural input API for an automatic timeline generator would be RSS: It has a title, a date, a description, a category (if you want to group events). It can even have a media object associated (audio, video, [photo](http://blog.forret.com/2005/08/photofeed-image-podcasting/), [PDF podcast](http://blog.forret.com/2006/04/pdf-podcasts-proof-of-concept/)). The programming part should be quite straightforward, but the graphical design is crucial: should be flexible and appealing. The output should be JPG/PNG or a dynamic Flash/AJAX application. Who&#8217;s gonna make it? If well done, it&#8217;s a ticket for [TechCrunch](http://techcrunch.com)!
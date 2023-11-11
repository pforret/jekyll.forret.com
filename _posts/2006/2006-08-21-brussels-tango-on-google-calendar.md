---
id: 413
title: Brussels Tango on Google Calendar
date: 2006-08-21T11:07:16+02:00
author: Peter
layout: post
guid: /2006/08/brussels-tango-on-google-calendar/
permalink: /2006/08/21/brussels-tango-on-google-calendar/
categories:
  - Google
  - Tango
---
I've started a public [Google calendar for tango events (milonga's, salons) in and around Brussels](/projects/tango-activities-in-brussels/). My preferred site, milonga.be has gone down, the agenda at [tango.be](http://www.tango.be/) is quite ugly (it uses frames \*shiver\* ), and Marisa & Oliver's [agenda](http://www.marisayoliver.com/en/brusselsagenda.html) cannot be exported. So I made my own:  
[<img  src="http://static.flickr.com/92/217526559_c3eda68ef3.jpg" width="500" height="345" alt="Tango activities in Brussels" />](http://www.flickr.com/photos/pforret/217526559/ "Photo Sharing")  
<!--more-->

  
One of the things I wanted to test out is how easy it was to visualize the calendar on other sites. [Google Calendar](http://www.google.com/calendar) publishes in [iCal](http://en.wikipedia.org/wiki/ICalendar) or XML format, so I looked for a package out there that could visualize this. After fooling around with [phpiCalendar](http://sourceforge.net/projects/phpicalendar/) for a while (doesn't work that well with Google Calendar, nor with remote iCal URLs), I discovered that Google [already has provided a wizard](http://www.google.com/support/calendar/bin/answer.py?answer=41207) for just that. Embedding this piece of code into your HTML will give you an up-to-date calendar of [Tango activities in Brussels](/projects/tango-activities-in-brussels/):

> <iframe src="http://www.google.com/calendar/embed?src=esp68ffgd043pov5j6ev9su7nk%40group.calendar.google.com&height=614" style=" border-width:0 " width="640" frameborder="0" height="614"></iframe>

The data is also available as an XML feed (a variant of [Atom](http://en.wikipedia.org/wiki/Atom_(standard)), actually) but not in a very useful way. The data inside the feed (the `item` blocks) does not contain essential fields like _start time_ and _event location_ in separate fields. They are included in the HTML-formatted _summary_ and _content_ fields, so you would have to parse those to extract those details.  
[<img  src="http://static.flickr.com/59/220886049_7d8d91364f.jpg" width="500" height="308" alt="Google Calendar: XML entry" />](http://www.flickr.com/photos/pforret/220886049/ "Photo Sharing")

John Udell has [published a script](http://weblog.infoworld.com/udell/2006/06/13.html) that fills in `where` and `when` tags in an Atom field (based on the `http://schemas.google.com/g/2005` namespace), but Google does apparently not use those for publishing their XML feeds. Weird &#8230;
---
id: 760
title: Creating a tango calendar
date: 2007-04-25T09:31:50+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2007/04/creating-a-tango-calendar/
permalink: /2007/04/25/creating-a-tango-calendar/
categories:
  - Google
  - Tango
---
### Resurrection of milonga.be

[<img loading="lazy" style="float: right" src="http://farm1.static.flickr.com/209/443096876_32fbfcbbe7_m.jpg" width="240" height="160" alt="BTF Sunday 086" />](http://www.flickr.com/photos/pforret/443096876/ "Photo Sharing") When I started dancing argentine tango, there were two sites that gave you an update of where and when you could dance tango in Belgium. The first one was [tango.be](http://www.tango.be), with a frame-based layout that I don&#8217;t find the most user-friendly nor visually pleasing, and the second [www.milonga.be](http://www.milonga.be), with a Flash-based agenda that was quite easy to use. Unfortunately the editor of the latter had to stop the site due to lack of time. Two weeks ago I noticed that he had even let the domain name expire and it was free again. Five minutes later I was the new owner of milonga.be. My goal: to make it again into a comprehensive overview of where to take tango courses and dance tango in Belgium.

### WordPress again

Oh, what can I say, I know [WordPress](http://wordpress.org) so well now, I use it wherever I can. So yes, it&#8217;s a WordPress site, with the K2 template, but with (currently) only static pages and no posts. I&#8217;ve divided the site into 2 parts: where to follow classes, and where to go dancing (practicas, milongas, salons, workshop). I&#8217;m obviously going to sprinkle some Web2.0 gold dust on the project. One example of this: [Google Calendar](http://www.google.com/calendar/).  
<!--more-->

### Tango Calendar 2.0

One of the cornerstones of the site is the agenda/calendar. Most tango instructors keep some kind of agenda on their site (sometimes last updated in 2005), Marisa and Oliver keep an up-to-date [agenda for most of Brussels](http://www.marisayoliver.com/en/brusselsagenda.html) and tango.be has an [agenda for Flanders and Brussels](http://tango.be/agenda/index.asp). All these initiatives are separate, not connected and not always up-to-date. I considered some better alternatives:

SCENARIO 1: every tango teacher/organiser keeps a calendar that supports syndication, let&#8217;s say, Google Calendar. They add their own events and I find a way to merge all this data together. This is when I found out there is no library available for merging [vCalendar](http://en.wikipedia.org/wiki/VCalendar)/[iCalendar](http://en.wikipedia.org/wiki/ICalendar) feeds. By the way: have you ever seen that format? It&#8217;s like someone explained XML in English to a Frenchman and he asked a German subcontractor to develop it. (Actually, it&#8217;s a standard from 1998, so we can forgive the authors for not using XML)

<pre>BEGIN:VEVENT
DTSTART:19970714T170000Z
DTEND:19970715T035959Z
SUMMARY:Bastille Day Party
END:VEVENT</pre>

Some of the tango places do more than just tango and would probably put all these events onto 1 calendar, where I would have to filter out the tango-related stuff. And I would probably need access to all the agendas to correct errors or help them out with tricky issues like &#8216;how do I make a recurring event&#8217;.

SCENARIO 2: Because I wanted the option to only show tango events for Brussels or Antwerp, I though of several regional Google Calendars. I would then still have to figure out a way to merge all events into 1 calendar. But why manage 10 calendars when maybe one single one could do the job?

SCENARIO 3:  
Let&#8217;s say I create one big Milonga.be calendar, where would I put it? _Make or buy?_ &#8216;Make&#8217; means hosting the calendar myself with a tool like [PHPiCalendar](http://phpicalendar.net/), &#8216;buy&#8217; means hosting it elsewhere (Google Calendar would be the preferred solution, since it&#8217;s free and hosted by, well, Google). Google manages the user accounts/passwords for me and already has syndication tools, so that&#8217;s what I chose for.

One big calendar where every organiser gets an editor account:  
[<img loading="lazy" src="http://farm1.static.flickr.com/171/472207536_50fdbc07f5.jpg" width="500" height="133" alt="Google Calendar" />](http://www.flickr.com/photos/pforret/472207536/ "Photo Sharing")  
Embedding the full calendar into the milonga.be site is easy, since Google has <IFRAME>-based syndication tools built-in. But let&#8217;s make it a bit more difficult: filter out the Brussels events, or only the salons (the more upscale/expensive events).

I found a WordPress plugin for iCal feeds: [iCal events](http://ugweb.cs.ualberta.ca/~awolfe/icalevents/). It parses the .ICS feed into an XML format, and allows you to print out a list of events (no calendar visualisation). I hacked it a bit to display monthly events better and to allow filtering and now it can take the Google feed, do a search on all events that contain &#8216;SALON:&#8217; and show only those. But it still shows recurring events as &#8216;Every Wednesday until June 2007&#8217; instead of expanding that to &#8216;Wednesday April 25&#8217;, &#8216;Wednesday May 2nd&#8217; &#8230; 

So I installed PHPiCalendar and found out it can use Google Calendar feeds quite easily. It has the text-based event-list (&#8216;printer -friendly&#8217;) format as well as the calendar format, and it expands the recurring events. I can also use it to make customized <IFRAME>-based &#8211; or maybe even Javascript-based &#8211; syndication tools. So I&#8217;ll be diving into that PHP code.  
[<img loading="lazy" src="http://farm1.static.flickr.com/189/472207538_31eed20d8e.jpg" width="500" height="286" alt="PHPiCalendar" />](http://www.flickr.com/photos/pforret/472207538/ "Photo Sharing")

Next step [Google Maps](http://maps.google.com)!
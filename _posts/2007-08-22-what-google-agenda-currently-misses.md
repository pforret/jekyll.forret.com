---
id: 849
title: What Google Agenda currently misses
date: 2007-08-22T16:04:12+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2007/08/what-google-agenda-currently-misses/
permalink: /2007/08/22/what-google-agenda-currently-misses/
categories:
  - Google
  - Web2.0
---
I am using [Google Agenda](http://www.google.com/calendar/) as the central repository for the [milonga.be Belgian tango agenda](http://www.milonga.be/dancing/), which I edit together with half a dozen other tango enthusiasts. While the principle of a central, hosted calendar storage works wonderfully, I (have to) use a modified [PHPiCalendar](http://phpicalendar.net/) to display different views on the agenda (&#8216;only Brussels&#8217;, &#8216;only workshops&#8217;, &#8216;1 week in advance&#8217;, &#8216;1 month in advance&#8217;, &#8230;). There are actually a couple of features that I&#8217;d like to see in Google Agenda, and what better place to list them but here:

[<img loading="lazy" width="500" src="http://farm2.static.flickr.com/1327/1203281910_a78cb6d2f8.jpg" alt="Google Agenda: desired features" height="365" />](http://www.flickr.com/photos/pforret/1203281910/ "Photo Sharing")

### Metadata/Folksonomy

Currently an event in the agenda has the fields Title, Date/time (with recurrency, if any) , Location and Description. What I really miss is Tags (or categories, keywords, whatever you want to call them). Tags would allow me to attribute events to categories so that I can easily slice and dice them: only display the &#8220;milonga&#8217;s&#8221;, the events in Antwerp, the events in a specific place. Now I had to write a modified &#8216;filtered printable view&#8217; for PHPiCalendar so that I can search on specific words in the event title, but that is really a hack. E.g. I now ask every editor to create the event titles as

> &#8220;[TYPE]: [name of the event] @ [LOCATION]&#8221;

so that I can filter on &#8220;CONCERT:&#8221; or &#8220;@ Gent&#8221;. With the tags &#8220;concert, gent, polariteit, openair&#8221; it would be so much easier.

The [iCalendar specification](http://www.ietf.org/rfc/rfc2445.txt) even mentions a &#8216;Categories&#8217; field, although Google Agenda currently does not use it.

### <!--more-->Filter/Merge/Expand

Currently you can only get the URL of the full ICS feed, nor do the &#8216;Calendar&#8217; or &#8216;Agenda&#8217; view allow you to filter the output on a certain date, keyword in the title or location. And sometimes I only need to have the feed or data for events in the future, to be exact, 1 month in the future. While we&#8217;re talking about the Remix part (see above): how about &#8216;Merge&#8217;? I could take the ICS feed for tango festivals (which is maybe not hosted on Google), merge it with my feed, and show both in 1 view, with -say- different colours. I also suggest an &#8216;Expand&#8217; option: instead of listing a recurring event in 1 record with the recurrence data attached, expand it as N separate events, so that it&#8217;s easier to work with. An example: if I want the events for the next two weeks, I don&#8217;t want an entry &#8216;Every Thursday at 8PM&#8217;, I want two entries: one for the next Thursday, listed with all the other events for that Thursday, and one for the week after.

An example of URL syntax:  
[http://www.google.com/&#8230;/basic.ics?scope=2weeks&summary=milonga:&expand=true](http://www.google.com/.../basic.ics?scope=2weeks&summary=milonga:&expand=true)

### RSS/REST API

RSS feeds are made for things that happened (in the past) and a calendar is mostly used for things that WILL happen (in the future). This means that an RSS feed with dates in the future looks rather weird. The way Google solved this for their RSS feeds (which they indicate with the XML icon &#8211; [bad practice](http://blog.forret.com/2005/08/web-feeds-are-like-rss-only-different/)!) is to use as the date, the moment the event was added to the agenda, regardless of when the actual event takes place. So it is not necessarily a feed of &#8216;upcoming events&#8217; but rather of &#8216;recently added events&#8217;. I would allow the user to select a &#8216;future RSS&#8217; format for the next 10 upcoming events, or the next 7 days. There are so many tools that can do neat stuff with RSS feeds, it&#8217;s a pity you can&#8217;t use them in the logicl, intuitive way now.

<strike>The agenda also needs a public REST API  for reading and writing to the service</strike>. There is a [Google Agenda REST API](http://code.google.com/apis/calendar/overview.html). i should have looked better. Maybe I should dive into the [PHP client library](http://code.google.com/apis/gdata/clientlibs.html). But an API is made for a different audience than the filter features I requested above.

Let&#8217;s see what happens when Google Agenda goes out of Beta&#8230;
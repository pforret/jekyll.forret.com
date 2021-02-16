---
id: 1099
title: 'CalendarBurner: Feedburner for iCal calendars'
date: 2008-10-28T19:43:47+01:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1099
permalink: /2008/10/28/calendarburner-feedburner-for-ical-calendars/
categories:
  - Google
  - idea
  - RSS
  - Web2.0
tags:
  - calendar
  - feedburner
  - ical
---
<img loading="lazy" class="alignright" style="float: right;" src="http://www.bgtango.com/wp-content/uploads/2008/10/tango-calendar-300x171.png" alt="" width="300" height="171" /> I am currently using my experience with [milonga.be](http://www.milonga.be) to build a similar site for [Tango in Bulgaria](http://www.bgtango.com). One of the major components of the site is the [tango calendar](http://www.bgtango.com/en/calendar/). In this case I have chosen not to use a special iCal visualisation tool (more on that later in a series posts on Tango2.0), but just the standard [Google Calendar](http://www.google.com/calendar/) IFRAME-based widget.

It&#8217;s not a bad widget, but it&#8217;s too limited. You can only display &#8220;Day/Week/Month/Agenda&#8221; style, the colors and fonts are fixed and it does funny stuff for events that continue after 12:00AM (which tango events regularly do, believe me).

I&#8217;ve already talked about the fact that [iCal is a sissy format](http://blog.forret.com/2007/04/creating-a-tango-calendar/) and that [Gcal needs some more features](http://blog.forret.com/2007/08/what-google-agenda-currently-misses/). I was just thinking that it would be nice if some company would jump on that and provide the whistles and bells for iCal/vCal feeds (like those of Google Calendar), just like [Feedburner](http://www.feedburner.com) did with RSS/podcast feeds (and they got bought by Google, so maybe their idea wasn&#8217;t half bad). So I introduce the following concept: CalendarBurner (since the Calburner/iCalburner domains are taken).

**<!--more-->CalendarBurner**

  * takes any iCal/vCal feed as input &#8211;  can also interpret [hCalendar](http://microformats.org/wiki/hcalendar) and whatever other calendar format might exist (there must be at least 1 XML based format, right?)
  * it knows about Gcal, Upcoming, Apple iCal and other hosted calendar applications
  * it can &#8216;explode&#8217; calendars: convert &#8220;every Thursday from X Jan to Y July, but not in May&#8221; to N individual events. Calendars where each event is non-repeating are easier to process. (E.g. in Google Calendar, a weekly event that goes on until Dec 14th is interpreted as &#8220;inclusive&#8221; that Dec 14th date. If you feed that iCal feed into PHPiCalendar, it interprets this repeating event as &#8220;before&#8221; Dec 14th, so it stops at Dec 7th. With an &#8216;exploded&#8217; calendar, there is no ambiguity)
  * It can visualize a calendar as an IFRAME, with a JS widget, through RSS feeds &#8230; and every time fully customisable in colors, fonts, links, order &#8230;
  * Google Calendar has an RSS feed but this shows the events with the date they were created, not when the actual event takes place. It is one way of showing things, but you also need &#8216;most recent past events&#8217;, &#8216;next 10 events&#8217; &#8230;
  * It caches calendar info, so that a particular popular calendar does not crash when consulted by too many people.
  * it uses easy URLs: `/cal/ATS56GE78SH/rss20` and `/cal/ATS56GE78SH/js`
  * it knows about client applications: when fed into Outlook, iCal, Sunbird, &#8230; it uses the features of those programs
  * it allows for filtering, tagging, merging &#8230; (the &#8220;Remix&#8221; part of my [Get/Remix/Deliver](http://blog.forret.com/2007/08/what-google-agenda-currently-misses/) proposal)
  * it gives you stats on subscribers, clickthrough, popular events &#8230;
  * it links with Google Maps
  * &#8230; (any ideas?)

It would really be nice if some innovative company would jump in this void. With an appropriate [freemium](http://en.wikipedia.org/wiki/Freemium_business_model) model I&#8217;m sure it would take off and make calendaring an easier task to do.
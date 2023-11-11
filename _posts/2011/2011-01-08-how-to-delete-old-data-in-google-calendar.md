---
id: 1228
title: How to delete old data in Google Calendar
date: 2011-01-08T00:03:11+01:00
author: Peter
layout: post
guid: /?p=1228
permalink: /2011/01/08/how-to-delete-old-data-in-google-calendar/
categories:
  - Google
tags:
  - calendar
  - ical
  - mozilla
---
I use Google Calendar as a vital piece of [milonga.be](http://www.milonga.be): me and some 20 other editors keep an up-to-date [calendar of tango events in Belgium](http://www.milonga.be/dancing/). We've been doing that for the last 3 years, so there was a lot of old, no-longer-relevant data in the agenda. The way I use the calendar on the site is that I download all the appointments as a .ICS (iCal/gCal) file and then format/display it with another program. But with all the old data still present, that ICS file had grown to more than 1MB, and this size slowed down the updates (I download the whole thing every 30 min). So I decided to delete all old data (2007 &#8211; 2009). Not that easy.

Google Calendar's web interface doesn't really allow you to bulk delete. There is no way to select several dozens of appointments and delete them in one go. But I found a way that works (suggested [here](http://ubuntuforums.org/showthread.php?t=540330)):

  * Install [Mozilla Thunderbird](http://www.mozillamessaging.com/en-US/thunderbird/) (desktop email client)
  * Install [Mozilla Lightning](https://addons.mozilla.org/en-US/thunderbird/addon/2313/) (calendar plugin for Thunderbird)
  * Install [Provider for Google Calendar](https://addons.mozilla.org/en-US/thunderbird/addon/4631/) (Gcal plugin for Lightning)
  * Look up the Google Calendar Private iCal URL of your calendar (something like `http://www.google.com/calendar/ical/...%40group.calendar.google.com/private-.../basic.ics`)
  * Add it to Thunderbird with FILE/NEW/CALENDAR/NETWORK/GOOGLE CALENDAR
  * You now have a read/write connection to your Google Calendar!

Select the appointments you want to delete, hit the &#8216;Del' button and see them disappear one by one.

[<img  class="size-medium wp-image-1229" title="thunderbird" src="http://blog2.forret.com/wp-content/uploads/2011/01/thunderbird1.jpg" alt="" width="500" height="187" />](http://blog2.forret.com/wp-content/uploads/2011/01/thunderbird1.jpg)
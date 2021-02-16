---
id: 936
title: MIVB en Google Transit
date: 2007-12-06T21:39:14+01:00
author: Peter
layout: post
guid: http://blog.forret.com/2007/12/mivb-en-google-transit/
permalink: /2007/12/06/mivb-en-google-transit/
categories:
  - Brussel
  - Google
tags:
  - brussels
  - Google
  - maps
  - mivb
---
Wouldn&#8217;t this be a great idea: the Brussels public transport not mapped by [MIVB](http://www.mivb.be/)&#8216;s horribly unpractical route planner, but by [Google&#8217;s Transit](http://code.google.com/transit/spec/transit_feed_specification.html) maps. You just need to get an export of the stops, the routes and the times, and they can be shown on Google Maps just like that. Where should we start looking for the source data? Then create `agency.txt, stops.txt, routes.txt, trips.txt, stop_times.txt, calendar.txt` and that&#8217;s it.

[Google Transit Feed](http://code.google.com/transit/spec/transit_feed_specification.html)

<img border="0" width="500" src="http://code.google.com/transit/spec/transit_route_short_name.gif" alt="Google transit" />
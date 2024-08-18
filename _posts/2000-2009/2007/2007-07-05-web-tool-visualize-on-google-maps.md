---
id: 811
title: 'Web tool: visualize on Google Maps'
date: 2007-07-05T17:54:06+02:00
author: Peter
layout: post
guid: /2007/07/web-tool-visualize-on-google-maps/
permalink: /2007/07/05/web-tool-visualize-on-google-maps/
categories:
  - Google
---
I have been working a bit on Google Maps visualisations for my milonga.be tango site, to show an [overview of all Belgian tango sites](http://www.milonga.be/info/venues/map/). I did it the following way:

  * I use [Google Maps](http://maps.google.com/)&#8216; &#8220;My Maps&#8221; to create a collection of pointers on a map. I called this map &#8220;milonga.be tango venues&#8221;. It's not complete yet, but I have about 25 locations in it for the moment. I can easily link to this page so anyone can see it: [Belgian tango venues](http://maps.google.com/maps/ms?ie=UTF8&hl=en&msa=0&msid=112599099261802333902.0004345d4d4fd0a979711&z=8&om=1).
  * But let's say I want to embed it into a page. I could do it in-line (which would add a lot of JavaScript to the HTML) or use an inline frame (`IFRAME`). I decided to use the frame approach and build a generic KML visualizor.

[<img  src="http://farm2.static.flickr.com/1211/727612809_264593f79d.jpg" width="500" height="406" alt="Google Maps Visualizor" />](http://www.flickr.com/photos/pforret/727612809/ "Photo Sharing")

So how can you use it to show any KML/GeoRSS feed on your website?

  1. Go to the [forret.com Google Maps visualizor tool](http://web.forret.com/tools/google-maps.asp)
  2. Copy/paste the KML feed URL. Example 1: the KML link from Google Maps:  
    [<img  src="http://farm2.static.flickr.com/1253/718873076_39143ad534_m.jpg" width="240" height="57" alt="Google Maps KML link" />](http://www.flickr.com/photos/pforret/718873076/ "Photo Sharing")  
    Example 2: Flickr feeds also have a [Flickr GeoRSS format](http://geobloggers.com/archives/2006/10/31/three-hiddenish-flickr-map-features/) which is compatible ([now also KML](http://geobloggers.com/archives/2007/05/31/flickr-kml-and-a-stroll-down-memory-lane/)).
  3. Choose the appropriate center point. Currently you have to copy/paste it from Google Maps or another application, I still have to add some interface magic to do it in the page.
  4. Press &#8220;Show!&#8221; and copy/paste the resulting `IFRAME` HTML code. Voila!

<!--more-->

  
An example: [Peter](http://petere.wordpress.com/)&#8216;s KML feed of [tango locations in Brussels](http://members.chello.be/cr28173/tango/places/where.html).  


So I am using Google's &#8220;My maps&#8221; feature as my online map editor and KML generator, and the regular Google Maps as the visualisation tool. I'm a happy man!
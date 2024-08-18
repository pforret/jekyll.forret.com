---
id: 18
title: Feed-based automatic download/caching
date: 2004-05-12T12:01:51+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/05/12/feed-based-automatic-downloadcaching/
permalink: /2004/05/12/feed-based-automatic-downloadcaching/
categories:
  - podcast
---
Interesting idea on [HubLog](http://www.pmbrowser.info/hublog/archives/000830.html "Hublog") (actually it's an idea of [Les Orchard](http://www.decafbad.com/blog/2004/05/10/homebrew_entertainment_appliances_cheap_open_and_embattled)).

> I'd love to pay a monthly fee to have shows by Joss Whedon stream on down to my file-server with BitTorrent. I'd love to subscribe to favorite indie bands' releases and have them show up in the music folder. I'm cheap, so I'd like the price to be low, but I'll still pay for what I like. And I'd love to do all this, still being able to tinker, still seeing that people producing things I like get paid, without going to jail or letting them empty my wallet with a wet/dry vac. 

Sounds a bit like a RSS+BitTorrent version of [MMS](http://www.nowsms.com/framer.htm?http://www.nowsms.com/discus/messages/1/589.html), which basically is a combination of an SMS notification and a GPRS download. Do RSS and/or Atom have extensions that could support this? Looking at [Orchard](http://orchard.sourceforge.net/) I would guess that with RSS, you would have to use a hack like &#8216;_automatically follow all links if they point to a .mpg file_&#8216;. Atom seems to provide for a [Link:Type](http://www.atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.3.4.2) attribute, which allows neater integration.

So the system could be as follows:

  * a watcher application periodically checks certain RSS/Atom links (basically this is an aggregator) 
  * it triggers on certain conditions, like the occurence of a `type="video/mpeg"` mime-type link, or a link that ends in `.mpg/.mpeg` 
  * when it triggers it starts downloading in one of several ways, (S)FTP, BitTorrent, &#8230; &#8211; presumably you would need proper authentication (this is where payment comes in) 
  * you are alerted when new content is available on your local system (this could be a 2nd &#8216;delayed' feed) 

It's basically caching of content before it is consumed. _Pre-caching_?

<div>
  [Listening to: &#8220;That Night&#8221; &#8211; <b>Jazzanova</b> &#8211; Jazzanova Remixed &#8211; Disc 1]
</div>
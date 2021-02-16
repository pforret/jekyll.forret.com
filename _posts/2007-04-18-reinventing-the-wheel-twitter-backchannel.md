---
id: 751
title: 'Reinventing the wheel: Twitter backchannel'
date: 2007-04-18T13:36:38+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2007/04/reinventing-the-wheel-twitter-backchannel/
permalink: /2007/04/18/reinventing-the-wheel-twitter-backchannel/
categories:
  - barcamp
  - RSS
---
I was chatting a bit with [Bart](http://www.ondernemeringent.be) about [Barcamp](http://barcamp.forret.com), and I asked the inevitable question: &#8220;Should we do something with [Twitter](http://www.twitter.com)?&#8221; To which Bart&#8217;s answer was: &#8220;Maybe, but what?&#8221;. Let&#8217;s see:

  * create a &#8220;BarcampBrussels&#8221; Twitter account, which would serve 2 purposes: 1) be a source of Barcamp organisational info (&#8220;_Speaker XYZ has to leave early, wants to do his speech before noon, anyone wanna swap?_&#8220;) and 2) be the &#8216;glue&#8217; between all Twitterers that are interested in Barcamp: the creation of a BarcampTwitterFriends group, of those who follow that channel.
  * But the Barcamp Twitter account also gets the updates of all its friends, so wouldn&#8217;t that be good info too? Well, you do get \*all\* updates, so not only the &#8220;Barcamp speech about XYZ rocks&#8221; but also the &#8220;feeding my cat&#8221; messages. What if you could create a filter on the aggregated messages? Hey: [Yahoo! Pipes](http://pipes.yahoo.com) can do that! We take the RSS feed with all the Barcamp Twitter friends (twitter.com/statuses/friends_timeline/[code].rss), pipe it through Yahoo and only use the updates with the word &#8220;Barcamp&#8221;! 
    There are some issues with that: people have to remember to prefix each Barcamp-related comment with &#8220;Barcamp&#8221; (they choose a differente namespace, as it were). That&#8217;s cumbersome and ugly. Also, the Twitter RSS only lists the 20 last updates, so the filter might easily remove all updates and leave an empty screen. Even worse, it seems the RSS feed is only updated every X minutes (easily 30, from my experience). So it seems we should have to use the [Twitter API](http://twitter.com/help/api) to create a live-updating feed. Imagine we do that:
    
    Then we refresh it every X seconds, project it on a screen and tada!! &#8230; ladies and gentlemen: the [backchannel](http://en.wikipedia.org/wiki/Backchannel)! We&#8217;re not the [first](http://blogs.zdnet.com/social/?p=110) to [think](http://irish.typepad.com/irisheyes/2007/03/twitter_the_off.html) of [this](http://with.gilbert.org/2007/03/12/twitter-as-microblogging-timelog-and-team-tool), of course. </li> </ul> 
    
    What&#8217;s your take: should we do anything with Twitter? Set up a group chat in MSN Messenger or Skype? Or use an classic IRC backchannel? (Who still has an IRC client on his laptop these days?)
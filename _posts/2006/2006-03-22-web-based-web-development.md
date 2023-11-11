---
id: 286
title: Web-based web development
date: 2006-03-22T17:17:56+01:00
author: Peter
layout: post
guid: /2006/03/web-based-web-development/
permalink: /2006/03/22/web-based-web-development/
categories:
  - technology
  - Web2.0
  - webdev
---
Writing code in your browser, it's coming this way, I tell you! Some indications:

my own [WikiRAD article](/2005/07/online-software-development-the-wikirad/) (July 2005)
:   Playing around with PHP and wikis at the same time made me think on how web-based editing and compiling would be a good way to develop and run web applications

[Feed43](http://feed43.com)
:   Create an RSS feed out of any web page by using regular expressions with a nifty Web2.0 user interface. Lots of services are based on URLs and use RSS as input, so this can be the start of a first application. E.g. I just created an [RSS feed](http://feed43.com/stubru_playlists.xml) for the [Stubru playlist pages](http://www.stubru.be/html/stubru_web/programmas/playlist/index.html) out of a Stubru Javascript file. Imagine I could now tell Feed43:  
    `for each item in feed_that_I_just_created {<br />
parse_the item_url<br />
publish an rss feed for this item_url as feed_url_X<br />
}`  
    and then start working with that content too.

[Amazon S3](http://aws.amazon.com/s3)
:   web-based outsourced storage for any application, which made [John Keyes](http://jkeyes.com/2006/03/ten_ideas_for_amazon_s3_applic.php) and [Peter Van Dijck](http://poorbuthappy.com/ease/archives/2006/03/14/3086/can-you-use-amazon-s3-to-create-the-new-flickr-killer) to ask themselves: &#8220;Can you use Amazon S3 to create the new Flickr killer?&#8221;, and which made me think: but what if not only the storage, but the whole program was run by a 3rd party?

[Iamalpha](http://iamalpha.com) (via [Richard McManus](http://www.readwriteweb.com/archives/aols_new_module.php))
:   AOL's new initiative for building microformat-based applications. It's a bit early to grasp the extent what what they're trying to accomplish, but I think it's potentially more than just widgets. They don't have a web-based IDE yet, but they do have a copy/paste [code-validator](http://iamalpha.com/.developer/validate.jsp). Most importantly: the applications are run by AOL!

[YouOS](http://www.youos.com) (via [Jeremy Zawodny](http://jeremy.zawodny.com/blog/archives/006495.html))
:   [<img src="http://static.flickr.com/41/116327567_416a2a0cb1_m.jpg" width="240" alt="YouOS: web-based IDE" />](http://www.flickr.com/photos/pforret/116327567/ "Photo Sharing")  
    a web-based OS that allows you to develop Javascript-based applications in a web-based IDE, with version control and compiling. It's one of the products coming out of [Paul Graham](http://www.paulgraham.com/)&#8216;s [Y-combinator](http://www.ycombinator.com/) startup incubator.

<!--more-->

  
For me, these are all indicators of a trend: there will be a day when you don't need your own machines to run your complete (complex) web applications: the storage, the authentication, the aggregation, the statistics will all run on 3rd party servers, some of which you pay, some of which you don't. I'm not talking about service providers like [Ning](http://www.ning.com): they allow you to configure/customize a web app that _they_ developed, not you.  
I see a [web-based IDE for RubyOnRails](http://www.deveiate.org/projects/JohnHenry) coming, I think [Yahoo](http://developer.yahoo.com/), [Google](http://code.google.com/) and [Amazon](http://aws.typepad.com/) will building the bricks too, and pretty soon you will be able to develop a Flickr-like photo management application and run it without having a machine of your own:

  * user/group management: Yahoo or Google or Microsoft's single sign-on
  * photo storage: Amazon S3
  * database: some future version of [Google Base](http://base.google.com/)
  * email: some future version of Yahoo or Google groups
  * photo tags/folksonomy: some future version of del.icio.us (see my [Folksonomizer](/2005/02/folksonomizer-generic-folksonomy-service/) post)
  * comments: some future version of [Gtalk](http://www.google.com/talk/) or [Campfire](http://www.campfirenow.com/) (mental note to self: write something about commentalizer and use of URI as web API)

Give it another year.

<small>Technorati Tags: <a href="http://technorati.com/tag/rss" rel="tag">rss</a>, <a href="http://technorati.com/tag/feed" rel="tag">feed</a>, <a href="http://technorati.com/tag/ruby" rel="tag">ruby</a>, <a href="http://technorati.com/tag/webdev" rel="tag">webdev</a>, <a href="http://technorati.com/tag/web2.0" rel="tag">web2.0</a>, <a href="http://technorati.com/tag/yahoo" rel="tag">yahoo</a>, <a href="http://technorati.com/tag/google" rel="tag">google</a>, <a href="http://technorati.com/tag/amazon" rel="tag">amazon</a>, <a href="http://technorati.com/tag/aol" rel="tag">aol</a></small>
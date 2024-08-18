---
id: 121
title: 'Folksonomizer: generic folksonomy service'
date: 2005-02-06T19:29:10+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/02/06/folksonomizer-generic-folksonomy-service/
permalink: /2005/02/06/folksonomizer-generic-folksonomy-service/
categories:
  - Web2.0
---
<img width="300" src="http://www.pixagogo.com/S51S18yJ7cy7fmTgjRcFaK82ZUIDOYvOwU0kbpyR7-xBHFHz2qyFb5hzekCn8t!FTJUh2C80vbo6gwr0Ctp7bygc6UlwlQJo0C7MV8A7oMDXdHfl2f!9AKSA__/gerryendergelijke.jpg" />  
Just read a post on [Paolo Massa's Blog](http://moloko.itc.it/paoloblog/archives/2005/01/26/lucas_please_add_tagging_to_webjay.html), where he requests to add a Flickr/ del.icio.us/ [Technorati](http://www.technorati.com/tags/) style of tagging to [Webjay](http://www.webjay.org) music playlists. In hip speak this practice is called a &#8220;_folksonomy_&#8220;.

> Folksonomy is a neologism for a practice of collaborative categorization using simple tags. This feature has begun appearing in a variety of social software. At present, the best examples of online folksonomies are social bookmarking sites like [del.icio.us](http://del.icio.us), a bookmark sharing site, [Flickr](http://www.flickr.com), for photo sharing, [43 Things](http://www.43things.com/), for goal sharing, and [Tagsurf](http://tagsurf.com/), for tag-based discussions.  
> (from [wikipedia.org](http://en.wikipedia.org/wiki/Folksonomy))

Strictly speaking, this would be a 4<sup>th</sup> way of organising stuff, somewhere between [a taxonomy (categorized) and searchable (indexed)](/blog/2004/05/organising-my-cd-collection.html "categorized, sorted and indexed"). It's not a taxonomy because one item can have multiple free-text tags, and it's not straightforward indexing, because it is information &#8216;outside' the item (meta-information), and not part of it.

When I was thinking about how [Lucas](http://gonze.com/weblog/) should implement this, I found it a pity that Webjay has to re-develop something that already exists in other services. Or, the other way around, it would be great to have a service that does ONLY that: **add folksonomy support to just about anything**. Let's call it &#8216;<u>www.folksonomizer.new</u>&#8216;. It would look something like this:

  * the service allows the adding of tags to objects. A &#8216;tag' is a string **ATOMICS:** the atomic operations are 
      * `write_tags(URI, service, tags)`: add these tags to the URI, overwriting what existed before, can be used to erase some or all tags 
      * `add_tags(URI, service, tags)`: add these tags to the URI, leaving existing tags 
      * `get_tags_for_uri(URI, service, params)`: get tags for this URI. Params can be used to influence the maximum number of tags returned (default: 100), the sort order 
      * `get_uris_for_tag(service, tags, params)`: get URIs that have this tag. Params can be used to influence # URIs, sort order 
      * `get_tags_for_service(service, params)`: get all tags for this service. Params is used for #tags returned and sort order. 
    
    The sort order might be: alphabetically, chronologically (most recent first), by frequency (most used tags), or by some combination (e.g. first the relatively &#8216;new' tags with a lot of traffic &#8211; the new _memes_ or _hypes_). </li> 
    
      * **SCOPE:** A service is public (i.e. the tags are also visible when the service is not specified, tags trickle up) or private (the tags only show up when the correct service is specified). 
      * **AUTHORISATION:** the tagging is &#8216;narrow' (i.e. only the author(s) can add tags, like Technorati) or &#8216;broad' (i.e. anyone can add tags to a URI, like del.icio.us) (terminology from  [vanderwal.net](http://www.vanderwal.net/random/category.php?cat=153)) 
      * **API:** the service can be called with SOAP/XML-RPC (within PHP/Perl/ASPX scripts) or Javascript (within HTML pages) links. 
      * **SIMPLE:** To show the tags, all the webmaster should do is add a piece of code in his pages like <script src=&#8221;http://www.folksonomizer.new/get?SVC=Webjay&URI=$URI&#8221;> </script>. If the folksonomy is broad, the webmaster can throw together a standard HTML FORM that allows users to add tags to a URI via POST or GET. 
      * **FLEXIBLE:** To have more control over the layout and sort order, the webmaster uses the XML-RPC API, which returns a richer XML list. E.g. when he requests the URIs for a certain tag, he gets a list in the format: URI/date added/#tags/#taggers and can use the extra information to make fonts bigger, change sort order, &#8230;</ul> 
    
    Any programmers out there with a lack for a pet project?
    
    Some services that are quite close to this: the [del.icio.us API](http://del.icio.us/doc/api) and [Flickr API](http://www.flickr.com/services/api/).
    
    Technorati tags: <a href="http://technorati.com/tag/folksonomy" rel="tag">folksonomy</a> &#8211; <a href="http://technorati.com/tag/socialsoftware" rel="tag">socialsoftware</a> &#8211; <a href="http://technorati.com/tag/webjay" rel="tag">webjay</a>
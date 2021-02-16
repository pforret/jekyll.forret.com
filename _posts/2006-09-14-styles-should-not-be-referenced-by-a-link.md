---
id: 465
title: 'Styles should not be referenced by a <link>'
date: 2006-09-14T13:06:56+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/09/styles-should-not-be-referenced-by-a-link/
permalink: /2006/09/14/styles-should-not-be-referenced-by-a-link/
categories:
  - webdev
---
_(If you don&#8217;t work with HTML, this next post will be of no interest to you.)_

> Rant: the way external CSS stylesheets are included in HTML now is not logical nor convenient.  
> So: `<link` `type="test/css"` `href="(...).css" rel="stylesheet" />` is wrong,  
> it should be `<style type="text/css" src="(...).css" />`. 

Why?

[<img  width="196" height="240" src="http://static.flickr.com/87/243067639_e41df6d6f5_m.jpg" style="float: right;" alt="css Zen Garden" />](http://www.flickr.com/photos/pforret/243067639/ "Photo Sharing")  
**Because `src` is for now, `href` is for later**

In a HTML page, there are a number of files (URLs) that have to be fetched to display:

  * any text in the document, within <h1>, <p> or <div> tags or not
  * any images, specified as <img src=&#8221;&#8221; /> (always external)
  * any iframes, specified as <iframe src=&#8221;&#8221; /> (always external)
  * any javascript, specified as <script src=&#8221;&#8221; /> (external or in-line)

There are also links to other URLs that are not for now: maybe one click away, maybe just there to be interpreted by the web browser:

  * anchor links, specified as <a href=&#8221;&#8221;></a>
  * links: prev/next, archive links, feed link, specified as <link rel=&#8221;&#8221; href=&#8221;&#8221; />

So: you need the `src=""` referenced files immediately, and the `href=""` ones not. The way stylesheets are referenced now breaks this logic.

**Because <style> is for stylesheets**

Why can you embed in-line CSS style information within <style> tags, but not external stylesheets? Compare that to Javascript:

Inline JS: `<script>...</script>` and  
External JS: `<script src="" />`

That makes sense. The same should be possible for <style>. The way it works now is counter-intuitive and antiquated. So please add it to [XHTML 1.1](http://www.w3.org/TR/xhtml1/).
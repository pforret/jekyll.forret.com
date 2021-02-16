---
id: 462
title: 'Flickr: combining ALT and TITLE for images'
date: 2006-09-12T14:11:04+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/09/flickr-combining-alt-and-title-for-images/
permalink: /2006/09/12/flickr-combining-alt-and-title-for-images/
categories:
  - webdev
---
If you want to embed one of your own [Flickr](http://www.flickr.com) pictures into your blog, the Flickr photo page gives you the HTML code for easy copy/paste. They require you to link back to the photo page, so obviously in the HTML they provide, they give your an image with a link, i.e. an `<img>` tag in between a `<a> </a>` anchor tag pair. A typical example:  
`<a href="http://www.flickr.com/photos/(...)" title="<em>Photo Sharing</em>"><img src="http://static.flickr.com/(...).jpg" width="600" height="1200" alt="(image title)" /></a>`  
As you can see, they combine both an anchor title (always &#8220;Photo Sharing&#8221;) with an image alt text (Flickr uses the photo title for that). Both fields give more info about the objects they refer to and are very much loved by search engines. It should come as no surprise that the #1 Google result for &#8220;photo sharing&#8221; is Flickr.  
[<img  src="http://static.flickr.com/98/241479980_63fed49bf4.jpg" width="375" height="500" alt="Flickr: img alt vs. a title" />](http://www.flickr.com/photos/pforret/241479980/ "Photo Sharing")  
<!--more-->

  
The thing is: when you move your mouse pointer over the image (&#8216;hover&#8217;), your browser will show only one of these two texts. Internet Explorer shows the `img alt` text, while Firefox and Flock show the `a title` text. So if you&#8217;re using Firefox, every Flickr photo that was embedded with Flickr&#8217;s HTML code, will show &#8220;Photo sharing&#8221; and not the photo&#8217;s title. 

Since the attributes `alt` and `title` also serve an accessibility purpose: what do screen readers (text-to-speech) make of the combination? Do they cite both, or also choose one of the two?
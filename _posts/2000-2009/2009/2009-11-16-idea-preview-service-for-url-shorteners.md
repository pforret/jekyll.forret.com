---
id: 1143
title: 'Idea: preview service for URL shorteners'
date: 2009-11-16T21:00:00+01:00
author: Peter
layout: post
guid: /2009/11/idea-preview-service-for-url-shorteners/
permalink: /2009/11/16/idea-preview-service-for-url-shorteners/
categories:
  - idea
  - Web2.0
tags:
  - shortener
  - twitter
  - url
---
I was using my iPhone to read my [Twitter](http://www.twitter.com) feed ([Twitterrific](http://iconfactory.com/software/twitterrific)) and Facebook and when comparing the two, I liked one thing about Facebook that Twitter/Twitterific does not have: when some one posts a URL, you get a preview icon and a short text. This way you can have a rough idea of what the link is about, and whether or not you’re interested to click it. In Twitter it is even worse, since the service uses URL shorteners ([bitly](http://bit.ly/), …) so that you don’t even have the original URL to guess what the link is about, like e.g. _youtube.com/watch?…_ => it’s a video!

So imagine that there is a service that accepts a URL as input and comes back with

  * a destination URL (the actual URL you end up on)
  * a summary text (short text) about this page
  * a preview (small image) of this page

So for a YouTube video, it comes back with a video screenshot and the video comments, for a blog post that includes a video/image, it comes back with a thumbnail for that and the start of the blog post text.

Most importantly, for shortened URLs, it comes back with a preview of the ‘real’, original URL.

A Twitter client like Twitterific, Tweetie, Tweetdeck, … could use this service every time it encounters a (shortened) URL in a tweet, and add the thumbnail next to it, and maybe the summary text as a mouse-over window.

**Coming up with the metadata**

Creating a summary text: either based on the web page itself, the META description, if it’s a blog, the first X words of the RSS item in its feed that points to this page.

Creating a preview thumbnail: for YouTube, DailyMotion, Vimeo: a video screenshot, for Flickr, Picasaweb: an image thumbnail, for Wikipedia: an image that is used in the article or just the Wikipedia favicon, for a corporate site: the web site thumbnail as created by e.g. [thumbalizr](http://www.thumbalizr.com).

**Extend it with even more metadata**

This might be an interesting service to run for Google: they could add some indicator of importance or trustworthiness (Pagerank, incoming links), or warn for shady URLs.
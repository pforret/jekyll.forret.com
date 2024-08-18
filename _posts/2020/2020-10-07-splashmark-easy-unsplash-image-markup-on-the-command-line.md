---
title: 'Splashmark: easy Unsplash image markup on the command line (bashew)'
date: 2020-10-07T08:38:49+02:00
author: Peter
layout: post
permalink: /2020/10/07/new-script-splashmark-easy-unsplash-image-markup-on-the-command-line/
image: /wp-content/uploads/2020/10/splashmark.jpg
categories:
  - repo
tags:
  - bash
  - bashew
  - imagemagick
  - shell
  - unsplash
  - remix
  - splashmark
---
See this photo below? It was created with one, albeit rather long, command line:

![](/wp-content/uploads/2020/10/splashmark.jpg)


```
splashmark -w 1280 -c 640 -i github.com/pforret/splashmark -j 50 \
   -e dark,grain -3 "created with pforret/splashmark" \
   -p fonts/FiraCode-Regular.ttf search splashmark.jpg splash
```

The **[splashmark](https://github.com/pforret/splashmark) script** searches for &#8220;splash&#8221; on Unsplash.com, downloads the first photo found, resizes it to 1280 pixels width, crops it to 640 pixels height, uses a &#8216;dark' and a &#8216;grain' filter, adds a big title in the middle and photo URL and Unsplash attribution in the corners, using the Google font Fira. It takes about 10 seconds,

Another example?

<img src="/wp-content/uploads/2020/10/bashew-1024x512.jpg" />

Photo: Shaun Low on Unsplash.com

<img src="/wp-content/uploads/2020/10/paris.jpg"  />

Photo: cyril mazarin on Unsplash.com

<img src="/wp-content/uploads/2020/10/cocktail.jpg" />

Photo: Kobby Mendez on Unsplash.com

<img src="/wp-content/uploads/2020/10/steak.gif"  />

Photo: Chad Montano on Unsplash.com

<img src="/wp-content/uploads/2020/07/setver-1024x512.jpg" />

Photo: Markus Winkler on Unsplash.com

I developed splashmark because I needed a different picture for each page of a site I was building, 
and I found myself doing too many steps for each photo. 
It can be used to make title images, social images, inspirational quotes &#8230; etc.

The script was created with [bashew](https://github.com/pforret/bashew), my bash script boilerplate generator. Make a script in minutes, not hours.<figure class="wp-block-image size-large">

<img src="https://blog.forret.com/wp-content/uploads/2020/10/bashew-1024x512.jpg" />  Photo: Shaun Low on Unsplash.com  

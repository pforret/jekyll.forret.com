---
id: 2352
title: 'Splashmark: easy Unsplash image markup on the command line (bash)'
date: 2020-10-07T08:38:49+02:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2352
permalink: /2020/10/07/new-script-splashmark-easy-unsplash-image-markup-on-the-command-line/
spay_email:
  - ""
image: /wp-content/uploads/2020/10/splashmark.jpg
categories:
  - bash
tags:
  - github
  - imagemagick
  - shell
  - unsplash
---
See this photo above here? It was created with one, albeit rather long, command line:

<pre  ><code>splashmark -w 1280 -c 640 \
   -i github.com/pforret/splashmark -j 50 \
   -e dark,grain -3 "created with pforret/splashmark" \
   -p fonts/FiraCode-Regular.ttf \
   search splashmark.jpg splash</code></pre>

The **[splashmark](https://github.com/pforret/splashmark) script** searches for &#8220;splash&#8221; on Unsplash.com, downloads the first photo found, resizes it to 1280 pixels width, crops it to 640 pixels height, uses a &#8216;dark&#8217; and a &#8216;grain&#8217; filter, adds a big title in the middle and photo URL and Unsplash attribution in the corners, using the Google font Fira. It takes about 10 seconds,

Another example?<figure class="wp-block-gallery columns-3 is-cropped">

<ul class="blocks-gallery-grid">
  <li class="blocks-gallery-item">
    <figure><img  width="1024" height="512" src="https://blog.forret.com/wp-content/uploads/2020/10/bashew-1024x512.jpg" alt="" data-id="2357" data-full-url="https://blog.forret.com/wp-content/uploads/2020/10/bashew.jpg" data-link="https://blog.forret.com/2020/10/07/new-script-splashmark-easy-unsplash-image-markup-on-the-command-line/photo-shaun-low-on-unsplash-com/" class="wp-image-2357" srcset="https://blog.forret.com/wp-content/uploads/2020/10/bashew-1024x512.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/10/bashew-300x150.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/10/bashew-768x384.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/10/bashew.jpg 1280w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption class="blocks-gallery-item__caption">Photo: Shaun Low on Unsplash.com</figcaption> 
  </li>
  <li class="blocks-gallery-item">
    <figure><img  width="800" height="240" src="https://blog.forret.com/wp-content/uploads/2020/10/paris.jpg" alt="" data-id="2356" data-full-url="https://blog.forret.com/wp-content/uploads/2020/10/paris.jpg" data-link="https://blog.forret.com/2020/10/07/new-script-splashmark-easy-unsplash-image-markup-on-the-command-line/photo-cyril-mazarin-on-unsplash-com/" class="wp-image-2356" srcset="https://blog.forret.com/wp-content/uploads/2020/10/paris.jpg 800w, https://blog.forret.com/wp-content/uploads/2020/10/paris-300x90.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/10/paris-768x230.jpg 768w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="blocks-gallery-item__caption">Photo: cyril mazarin on Unsplash.com</figcaption> 
  </li>
  <li class="blocks-gallery-item">
    <figure><img  width="720" height="400" src="https://blog.forret.com/wp-content/uploads/2020/10/cocktail.jpg" alt="" data-id="2355" data-full-url="https://blog.forret.com/wp-content/uploads/2020/10/cocktail.jpg" data-link="https://blog.forret.com/2020/10/07/new-script-splashmark-easy-unsplash-image-markup-on-the-command-line/photo-kobby-mendez-on-unsplash-com/" class="wp-image-2355" srcset="https://blog.forret.com/wp-content/uploads/2020/10/cocktail.jpg 720w, https://blog.forret.com/wp-content/uploads/2020/10/cocktail-300x167.jpg 300w" sizes="(max-width: 720px) 100vw, 720px" /><figcaption class="blocks-gallery-item__caption">Photo: Kobby Mendez on Unsplash.com</figcaption> 
  </li>
  <li class="blocks-gallery-item">
    <figure><img  width="600" height="600" src="https://blog.forret.com/wp-content/uploads/2020/10/steak.gif" alt="" data-id="2354" data-full-url="https://blog.forret.com/wp-content/uploads/2020/10/steak.gif" data-link="https://blog.forret.com/2020/10/07/new-script-splashmark-easy-unsplash-image-markup-on-the-command-line/steak/" class="wp-image-2354" /> 
  </li>
  <li class="blocks-gallery-item">
    <figure><img  width="1024" height="512" src="https://blog.forret.com/wp-content/uploads/2020/07/setver-1024x512.jpg" alt="" data-id="2359" data-full-url="https://blog.forret.com/wp-content/uploads/2020/07/setver.jpg" data-link="https://blog.forret.com/2020/07/31/package-version-management-with-semver-sh/photo-markus-winkler-on-unsplash-com/" class="wp-image-2359" srcset="https://blog.forret.com/wp-content/uploads/2020/07/setver-1024x512.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/07/setver-300x150.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/07/setver-768x384.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/07/setver.jpg 1280w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption class="blocks-gallery-item__caption">Photo: Markus Winkler on Unsplash.com</figcaption> 
  </li>
</ul>  

I developed splashmark because I needed a different picture for each page of a site I was building and I found myself doing too many different steps for each photo. It can be used to make title images, social images, inspirational quotes &#8230; etc.

I just launched it on [ProductHunt](https://www.producthunt.com/posts/splashmark)!

The script was created with [bashew](https://github.com/pforret/bashew), my bash script boilerplate generator. Make a script in minutes, not hours.<figure class="wp-block-image size-large">

<img  width="1024" height="512" src="https://blog.forret.com/wp-content/uploads/2020/10/bashew-1024x512.jpg" alt="" class="wp-image-2357" srcset="https://blog.forret.com/wp-content/uploads/2020/10/bashew-1024x512.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/10/bashew-300x150.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/10/bashew-768x384.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/10/bashew.jpg 1280w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>Photo: Shaun Low on Unsplash.com</figcaption> 
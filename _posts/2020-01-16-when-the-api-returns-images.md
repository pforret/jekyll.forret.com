---
id: 2025
title: When the API returns an image
date: 2020-01-16T00:39:17+01:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=2025
permalink: /2020/01/16/when-the-api-returns-images/
image: /wp-content/uploads/2020/01/FireShot-Capture-006-repostatus.org-www.repostatus.org_.png
categories:
  - webdev
tags:
  - api
  - badge
  - image
  - placeholder
  - saas
  - screengrab
  - screenshot
  - shield
  - web
---
 

I see more and more Image-Response GET APIs. With this term I mean: the API is called with a **GET URL**, and the response is a (JPG/PNG/GIF/WEBP/SVG) **image**, either directly or after a redirect. So the API can be used through a simple `<img src="[IMAGE GENERATING URL">` HTML tag. Let&#8217;s call these **IMGSRCAPI**&#8216;s. 

One of the oldest examples is [Gravatar](https://en.gravatar.com/), used by WordPress to show an icon/avatar for each person that writes/comments on blogs. Every imaginable email address has auto;atically a Gravatar profile pic, but by default it is<img  src="https://www.gravatar.com/avatar/ebf3ff19e1c49eb15dd83d41d5856319" width="20" height="20" /> . Only when you can log in and verify your email, you can change your profile pic to whatever you want.

But, as I said, I see more and more of them, and I wanted to catalog them. I see 2 big categories: **static vs dynamic** IMGSRCAPIs.

## 1. Static (deterministic) IMG SRC API

This means: a certain URL (with specific query parameters) will **ALWAYS give back the same image**. Let me give some examples:

### 1.a. Static placeholder pictures

These services are used to quickly generate random images of specific sizes to use in web design.

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img src="https://dummyimage.com/500x200/00066f/FFF.png&text=dummyimage.com" alt="" /> <strong><a href="https://dummyimage.com/">DUMMYIMAGE</a></strong>:<a href="https://dummyimage.com/500x200/00066f/FFF.png&text=dummyimage.com"> </a> <a href="https://dummyimage.com/500x200/00066f/FFF.png&text=dummyimage.com">https://dummyimage.com/500&#215;200/00066f/FFF.png&text=dummyimage.com</a>   
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img src="https://fakeimg.pl/500x200/?text=fakeimg.pl&font=lobster" alt="" /> <a href="https://fakeimg.pl"><strong>FAKEIMAGE.PL</strong></a>: <a href="https://fakeimg.pl/500x200/?text=fakeimg.pl&font=lobster">https://fakeimg.pl/500&#215;200/?text=fakeimg.pl&font=lobster</a>   
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img src="https://satyr.io/500x200/orange?delay=3g" alt="" /> <strong><a href="https://satyr.io">SATYR.IO</a></strong>: <a href="https://satyr.io/500x200/orange?delay=3g">https://satyr.io/500&#215;200/orange?delay=3g</a> &#8211; simulates 3G network delay  
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large is-resized"><img  src="https://placekitten.com/500/200" alt="" width="500" height="200" /> <a href="https://placekitten.com/"><strong>PLACEKITTEN</strong></a>: <a href="https://placekitten.com/500/200">https://placekitten.com/500/200</a>, and similarly: <a href="https://placebear.com">placebear.com</a>, <a href="https://www.fillmurray.com">fillmurray.com</a>  
</div>

### 1.b. Image (scannable) representation of data

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img  width="400" height="100" src="https://blog.forret.com/wp-content/uploads/2020/01/barcode.gif" alt="" class="wp-image-2070" /> <a href="https://barcode.tec-it.com/"><strong>TEC-IT.COM</strong></a>: static linear barcode (Code128)  
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img  width="196" height="196" src="https://blog.forret.com/wp-content/uploads/2020/01/qrcode.gif" alt="" class="wp-image-2071" /> <a href="https://barcode.tec-it.com/"><strong>TEC-IT.COM</strong></a>: Static vCard (address book) QR Code  
</div>

A handy service like [qrcode-monkey.com](https://www.qrcode-monkey.com/) does not qualify as an IMGSRCAPI because it rather works like a regular API: with a JSON request body and a JSON response. You can&#8217;t just use it in a <img> tag.

Facebook also has scannable Messenger codes, but again, these cannot be created with a simple URL, so no IMGSRCAPI

### 1.c. Static avatars

These are service to turn a string into an image, in such a way that it&#8217;s easier to recognize them. This can be used for people, or for projects.

<div class="wp-block-image">
  <figure class="aligncenter"><img src="https://robohash.org/pforret" alt="" /> <strong>ROBOHASH</strong>: https://robohash.org/pforret   
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img src="https://avatars.dicebear.com/v2/male/pforret.svg" alt="" /> <strong><a href="https://avatars.dicebear.com/">DICEBEAR AVATARS</a></strong>: https://avatars.dicebear.com/v2/male/pforret.svg  
</div>

### 1.d. Image modification API

There are actually a lot of these image-modification (mostly paid) SaaS services. The request URL includes the URL of an input image, and the response is, since it is a IMGSRCAPI, also an image. The service can compress, resize, crop intelligently, change colours, &#8230;

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img  width="686" height="115" src="https://blog.forret.com/wp-content/uploads/2020/01/image.png" alt="" class="wp-image-2060" /> <a href="https://imageoptim.com/">https://imageoptim.com/</a> (paid service)  
</div>

Some examples of these services are: 

  * [cloudinary.com](https://cloudinary.com/)
  * [imageboss.me](https://imageboss.me/)
  * [imageoptim.com](https://imageoptim.com/)
  * [imagify.io](https://imagify.io/)
  * [imgix.com](https://www.imgix.com/)
  * [piio.co](https://piio.co/)

## 2. Dynamic IMG SRC API

This means that 2 calls with the exact same URL might give back a different image. This could be because it&#8217;s random, or because of external data that has changed. 

### 2.a. Dynamic placeholder pictures

Like their cousins in 1.a., these services give back an image of a certain size, but it&#8217;s a **random** image, changes upon each call.

<div class="wp-block-image">
  <figure class="aligncenter size-large"><a href="https://picsum.photos/"><img src="https://picsum.photos/500/200" alt="Lorem Picsum" /></a> <strong><a href="https://picsum.photos/">LOREM PICSUM</a>:</strong> <a href="https://picsum.photos/500/200">https://picsum.photos/500/200</a>   
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img src="https://placebeard.it/g/500/200" alt="" /> <a href="https://placebeard.it"><strong>PLACEBEARD</strong></a>: <a href="https://placebeard.it/g/500/200">https://placebeard.it/g/500/200</a>  
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img src="https://placeimg.com/500/200/arch" alt="" /> <strong><a href="https://placeimg.com">PLACEIMG</a></strong>: <a href="https://placeimg.com/500/200/arch">https://placeimg.com/500/200/arch</a>  
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img src="https://source.unsplash.com/500x200/?sunset" alt="" /> <a href="https://unsplash.com/"><strong>UNSPLASH</strong></a>: <a href="https://source.unsplash.com/500x200/?sunset">https://source.unsplash.com/500&#215;200/?sunset</a>  
</div>

### 2.b. Profile image API

The best example is obviously Gravatar.

<div class="wp-block-image">
  <figure class="aligncenter size-large is-resized"><img  src="https://www.gravatar.com/avatar/ebf3ff19e1c49eb15dd83d41d5858319?s=500" alt="" width="500" height="500" /> <strong><a href="https://en.gravatar.com/">GRAVATAR</a></strong>: <a href="https://www.gravatar.com/avatar/ebf3ff19e1c49eb15dd83d41d5858319?s=500">https://www.gravatar.com/avatar/<md5 hash of your email></a><br />and some alternatives: <a href="https://www.libravatar.org/">https://www.libravatar.org/</a> &#8211; <a href="http://evatar.io/">http://evatar.io/</a>  
</div>

Image a IRGAPI service <profilepic.idea>, that would let you do the following:

  * _<profilepic.idea>/facebook/<username>_ => the FB profile pic of that user (if they exist and the profile pic was public)
  * _<profilepic.idea>/instagram/<username>_ => the IG profile pic of that user 
  * _<profilepic.idea>/twitter/<handle>_ => the Twitter profile pic
  * _<profilepic.idea>/google/<username>_ => the Google profile pic
  * _<profilepic.idea>/linkedin/<username>_ => the Linkedin profile pic
  * _<profilepic.idea>/favicon/<domain name>_ => the favicon of that website. 

This would be rather easy to create and super handy to use. I don&#8217;t know why I haven&#8217;t found any service like this.

I know that Google used to have a IMGSRCAPI service for profile pics (_https://profiles.google.com/&#8230;/profile/<username>_) but this has been discontinued.

### 2.c. Screenshot and preview IMG SRC API

Here the service will take a text or a URL and convert this into an image.

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img  width="500" height="200" src="https://blog.forret.com/wp-content/uploads/2020/01/preview-thumbnail.png" alt="" class="wp-image-2063" /> Social Preview images via <a href="https://placid.app/">placid.app</a>  
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img  width="500" height="200" src="https://blog.forret.com/wp-content/uploads/2020/01/8ea39e9d7bfd14304ec719e6aa81c0047f9b36931a2beb6237a4aa544f215176.png" alt="" class="wp-image-2062" /> screenshot via <a href="https://screengrab.io/">screengrab.io</a>  
</div>

### 2.d. External status IMG SRC API

So this is an image whose content can change based on external information. For instance, in the developer&#8217;s world most _badges_ and _shields_, often shown on Github README pages, fall under this group.

<div class="wp-block-image">
  <figure class="aligncenter size-large is-resized"><img  src="https://blog.forret.com/wp-content/uploads/2020/01/FireShot-Capture-004-Shields.io_-Quality-metadata-badges-for-open-source-projects-shields.io_.png" alt="" class="wp-image-2064" width="500" height="180" /> Auto-updated shields via <a href="https://shields.io/">https://shields.io/</a>  
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img  width="500" height="204" src="https://blog.forret.com/wp-content/uploads/2020/01/FireShot-Capture-006-repostatus.org-www.repostatus.org_.png" alt="" class="wp-image-2065" /> Repository status via <a href="https://www.repostatus.org/">https://www.repostatus.org/</a>   
</div>

Also website monitoring services can provide an image API:

<div class="wp-block-image">
  <figure class="aligncenter"><img src="https://statuspage.freshping.io/badge/6bccd618-0fad-48ab-ac60-4bd10e1f5a56?0.11786404005694817" alt="" /> <a href="https://app.freshping.io/">Freshping badge</a>  
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img  width="500" height="141" src="https://blog.forret.com/wp-content/uploads/2020/01/FireShot-Capture-007-Shields.io_-Quality-metadata-badges-for-open-source-projects-shields.io_.png" alt="" class="wp-image-2066" /> also via <a href="https://shields.io/category/monitoring">https://shields.io/category/monitoring</a>  
</div>

And how about weather services?

<div class="wp-block-image">
  <figure class="aligncenter size-large is-resized"><img src="https://www.theweather.com/wimages/fotoa1baf663eddd0648c35715c710962e8c.png" alt="" width="500" /> via <a href="https://www.theweather.com/widget/">https://www.theweather.com/widget/</a>  
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large is-resized"><img  src="https://www.meteo.be/services/web2016/getObservationBelgiumMap.php?type=D1&language=nl" alt="" width="500" height="400" /> tomorrow&#8217;s weather in Belgium via <a href="https://www.meteo.be/services/web2016/getObservationBelgiumMap.php?type=D1&language=nl">https://www.meteo.be</a>  
</div>

<div class="wp-block-image">
  <figure class="aligncenter size-large is-resized"><img  src="https://s.w-x.co/staticmaps/wu/wu/wxtype1200_cur/conus/current.png" alt="" width="500" height="400" /> Latest weather via <a href="https://www.wunderground.com/">wunderground.com</a>  
</div>

<pre class="wp-block-preformatted">I probably forgot some types of IMGSRCAPI services, feel free to let me know in the comments, and I will add them!<a href="http://freshworks.com/website-monitoring?utm_source=status_badge&utm_medium=status_badge" target="_blank" rel="noopener noreferrer"> </a></pre>

Hat tips to [johanbostrom.se](https://johanbostrom.se/blog/the-best-image-placeholder-services-on-the-web) * [sharptools.io](https://community.sharptools.io/t/weather-image-sources/203/5)
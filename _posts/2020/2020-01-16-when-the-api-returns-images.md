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

![](https://dummyimage.com/500x200/00066f/FFF.png&text=dummyimage.com)
<strong><a href="https://dummyimage.com/">DUMMYIMAGE</a></strong>:
<a href="https://dummyimage.com/500x200/00066f/FFF.png&text=dummyimage.com">https://dummyimage.com/500&#215;200/00066f/FFF.png&text=dummyimage.com</a>   

![](https://fakeimg.pl/500x200/?text=fakeimg.pl&font=lobster)
<a href="https://fakeimg.pl"><strong>FAKEIMAGE.PL</strong></a>: 
<a href="https://fakeimg.pl/500x200/?text=fakeimg.pl&font=lobster">https://fakeimg.pl/500&#215;200/?text=fakeimg.pl&font=lobster</a>   

![](https://satyr.io/500x200/orange?delay=3g)
<strong><a href="https://satyr.io">SATYR.IO</a></strong>: 
<a href="https://satyr.io/500x200/orange?delay=3g">https://satyr.io/500&#215;200/orange?delay=3g</a> &#8211; simulates 3G network delay  

![](https://placekitten.com/500/200)
<a href="https://placekitten.com/"><strong>PLACEKITTEN</strong></a>: 
<a href="https://placekitten.com/500/200">https://placekitten.com/500/200</a>, and similarly: 
<a href="https://placebear.com">placebear.com</a>, <a href="https://www.fillmurray.com">fillmurray.com</a>  

### 1.b. Image (scannable) representation of data

![](https://blog.forret.com/wp-content/uploads/2020/01/barcode.gif)
<a href="https://barcode.tec-it.com/"><strong>TEC-IT.COM</strong></a>: static linear barcode (Code128)  

([](https://blog.forret.com/wp-content/uploads/2020/01/qrcode.gif))
<a href="https://barcode.tec-it.com/"><strong>TEC-IT.COM</strong></a>: Static vCard (address book) QR Code  

A handy service like [qrcode-monkey.com](https://www.qrcode-monkey.com/) does not qualify as an IMGSRCAPI because it rather works like a regular API: with a JSON request body and a JSON response. You can't just use it in a `<img>` tag.

Facebook also has scannable Messenger codes, but again, these cannot be created with a simple URL, so no IMGSRCAPI

### 1.c. Static avatars

These are service to turn a string into an image, in such a way that it&#8217;s easier to recognize them. This can be used for people, or for projects.

![](https://robohash.org/pforret)
<strong>ROBOHASH</strong>: https://robohash.org/pforret   

![](https://avatars.dicebear.com/v2/male/pforret.svg)
<strong><a href="https://avatars.dicebear.com/">DICEBEAR AVATARS</a></strong>: https://avatars.dicebear.com/v2/male/pforret.svg  

### 1.d. Image modification API

There are actually a lot of these image-modification (mostly paid) SaaS services. The request URL includes the URL of an input image, and the response is, since it is a IMGSRCAPI, also an image. The service can compress, resize, crop intelligently, change colours, &#8230;

![](https://blog.forret.com/wp-content/uploads/2020/01/image.png)
<a href="https://imageoptim.com/">https://imageoptim.com/</a> (paid service)  


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

![](https://picsum.photos/500/200)
<strong><a href="https://picsum.photos/">LOREM PICSUM</a>:</strong> 
<a href="https://picsum.photos/500/200">https://picsum.photos/500/200</a>   


![](https://placebeard.it/g/500/200)
<a href="https://placebeard.it"><strong>PLACEBEARD</strong></a>: 
<a href="https://placebeard.it/g/500/200">https://placebeard.it/g/500/200</a>  

![](https://placeimg.com/500/200/arch)
<strong><a href="https://placeimg.com">PLACEIMG</a></strong>: <a href="https://placeimg.com/500/200/arch">https://placeimg.com/500/200/arch</a>  

![](https://source.unsplash.com/500x200/?sunset)
<a href="https://unsplash.com/"><strong>UNSPLASH</strong></a>: <a href="https://source.unsplash.com/500x200/?sunset">https://source.unsplash.com/500&#215;200/?sunset</a>  

### 2.b. Profile image API

The best example is obviously Gravatar.

![](https://www.gravatar.com/avatar/ebf3ff19e1c49eb15dd83d41d5858319?s=500)
<strong><a href="https://en.gravatar.com/">GRAVATAR</a></strong>: <a href="https://www.gravatar.com/avatar/ebf3ff19e1c49eb15dd83d41d5858319?s=500">https://www.gravatar.com/avatar/<md5 hash of your email></a><br />and some alternatives: <a href="https://www.libravatar.org/">https://www.libravatar.org/</a> &#8211; <a href="http://evatar.io/">http://evatar.io/</a>  

Image a IMGAPI service <profilepic.idea>, that would let you do the following:

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

![](https://blog.forret.com/wp-content/uploads/2020/01/preview-thumbnail.png)
Social Preview images via <a href="https://placid.app/">placid.app</a>  

![](https://blog.forret.com/wp-content/uploads/2020/01/8ea39e9d7bfd14304ec719e6aa81c0047f9b36931a2beb6237a4aa544f215176.png)
screenshot via <a href="https://screengrab.io/">screengrab.io</a>  

### 2.d. External status IMG SRC API

So this is an image whose content can change based on external information. For instance, in the developer&#8217;s world most _badges_ and _shields_, often shown on Github README pages, fall under this group.

![](https://blog.forret.com/wp-content/uploads/2020/01/FireShot-Capture-004-Shields.io_-Quality-metadata-badges-for-open-source-projects-shields.io_.png)
Auto-updated shields via <a href="https://shields.io/">https://shields.io/</a>  

![](https://blog.forret.com/wp-content/uploads/2020/01/FireShot-Capture-006-repostatus.org-www.repostatus.org_.png)
Repository status via <a href="https://www.repostatus.org/">https://www.repostatus.org/</a>   


Also website monitoring services can provide an image API:

![](https://statuspage.freshping.io/badge/6bccd618-0fad-48ab-ac60-4bd10e1f5a56?0.11786404005694817)
<a href="https://app.freshping.io/">Freshping badge</a>  

![](https://blog.forret.com/wp-content/uploads/2020/01/FireShot-Capture-007-Shields.io_-Quality-metadata-badges-for-open-source-projects-shields.io_.png)
also via <a href="https://shields.io/category/monitoring">https://shields.io/category/monitoring</a>  

And how about weather services?

![](https://www.theweather.com/wimages/fotoa1baf663eddd0648c35715c710962e8c.png)
via <a href="https://www.theweather.com/widget/">https://www.theweather.com/widget/</a>  

![](https://www.meteo.be/services/web2016/getObservationBelgiumMap.php?type=D1&language=nl)
tomorrow&#8217;s weather in Belgium via <a href="https://www.meteo.be/services/web2016/getObservationBelgiumMap.php?type=D1&language=nl">https://www.meteo.be</a>  

![](https://s.w-x.co/staticmaps/wu/wu/wxtype1200_cur/conus/current.png)
Latest weather via <a href="https://www.wunderground.com/">wunderground.com</a>  


> I probably forgot some types of IMGSRCAPI services, feel free to let me know in the comments, and I will add them!

Hat tips to [johanbostrom.se](https://johanbostrom.se/blog/the-best-image-placeholder-services-on-the-web) * [sharptools.io](https://community.sharptools.io/t/weather-image-sources/203/5)

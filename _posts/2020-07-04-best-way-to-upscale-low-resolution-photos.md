---
id: 2297
title: Best way to upscale low resolution photos
date: 2020-07-04T23:27:14+02:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2297
permalink: /2020/07/04/best-way-to-upscale-low-resolution-photos/
image: /wp-content/uploads/2020/07/manuela.detail_auto_x2_auto_x2.jpg
categories:
  - photography
tags:
  - ai
  - artificialtechnology
  - cloud
  - computational
  - enlarge
  - shoot
---
I&#8217;ve been doing some [remote shoots](https://blog.forret.com/2020/05/30/simple-remote-portrait-photography/) recently, as the photographer obviously, and I&#8217;ve mainly used FaceTime &#8216;Live photos&#8217; for captures. The result of such a shoot is a series of [.HEIC files](https://en.wikipedia.org/wiki/High_Efficiency_Image_File_Format#HEIC:_HEVC_in_HEIF) (it&#8217;s an Apple thing). Each file is a combination of a low-res 3-second movie with a mid-res image file. The image file, which is the one that interests me, is a 716&#215;1280 pixels heavily compressed one. This is not a lot of pixels to start with in Lightroom/Photoshop. I found that **it is possible to upscale such an image to 400%** (2864&#215;5120), and use this new big image to comfortably do the post-processing. Let me show you the best way to upscale low resolution photos to high resolution!

## Using [ImageMagick](https://imagemagick.org/)

I will take one of the images I shot with FaceTime, and show you a detail and then enlarge it with different methods.

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img  width="200" height="150" src="https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail.jpg" alt="" class="wp-image-2298" /><figcaption>This is the detail of the original image: 400&#215;250 pixels</figcaption> 
</div>

### Method 1: naive magnify<figure class="wp-block-image size-large">

<img  width="800" height="600" src="https://blog.forret.com/wp-content/uploads/2020/07/manuela.box_.jpg" alt="" class="wp-image-2303" srcset="https://blog.forret.com/wp-content/uploads/2020/07/manuela.box_.jpg 800w, https://blog.forret.com/wp-content/uploads/2020/07/manuela.box_-300x225.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/07/manuela.box_-768x576.jpg 768w" sizes="(max-width: 800px) 100vw, 800px" /> <figcaption>convert <input> -magnify -magnify <output></figcaption>  

The -magnify is not meant to be used with photos. Every pixel becomes a block of 4&#215;4 pixels. This is the equivalent of using the -resize function with the &#8216;box&#8217; filter.

### Method 2: naive resize<figure class="wp-block-image size-large">

<img  width="800" height="600" src="https://blog.forret.com/wp-content/uploads/2020/07/manuela.resize-1.jpg" alt="" class="wp-image-2300" srcset="https://blog.forret.com/wp-content/uploads/2020/07/manuela.resize-1.jpg 800w, https://blog.forret.com/wp-content/uploads/2020/07/manuela.resize-1-300x225.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/07/manuela.resize-1-768x576.jpg 768w" sizes="(max-width: 800px) 100vw, 800px" /> <figcaption>convert <input> -filter <filter> -resize 400&#215;400% <output></figcaption>  

A naive `-resize` in ImageMagick gives a resized file with lots of artefacts/noise. The border between the white blouse and the skin is a good example of that. Overall, the image is blurry. By default the -resize will use the &#8216;[Lanczos&#8217; filter](https://imagemagick.org/script/command-line-options.php#filter), but using &#8216;spline&#8217; or &#8216;gaussian&#8217; doesn&#8217;t give fundamentally different results.

Some documentation recommends using a &#8216;unsharp&#8217; sharpening filter right after, but again no real improvement.<figure class="wp-block-image size-large">

<img  width="800" height="600" src="https://blog.forret.com/wp-content/uploads/2020/07/manuela.unsharp-1.jpg" alt="" class="wp-image-2304" srcset="https://blog.forret.com/wp-content/uploads/2020/07/manuela.unsharp-1.jpg 800w, https://blog.forret.com/wp-content/uploads/2020/07/manuela.unsharp-1-300x225.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/07/manuela.unsharp-1-768x576.jpg 768w" sizes="(max-width: 800px) 100vw, 800px" /> <figcaption>convert <input> -resize 400&#215;400% -unsharp 0x1 <output></figcaption>  

## Using Gigapixel AI

[Topaz Gigapixel AI](https://topazlabs.com/gigapixel-ai/) is a desktop application that uses advanced AI technology to do better image upscaling. In short, it &#8216;understands&#8217; what is shown in a photo and what that would look like with more pixels. <figure class="wp-block-image size-large">

<img  width="1920" height="1086" src="https://i1.wp.com/blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17.png?fit=688%2C389&ssl=1" alt="" class="wp-image-2305" srcset="https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17.png 1920w, https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17-300x170.png 300w, https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17-1024x579.png 1024w, https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17-768x434.png 768w, https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17-1536x869.png 1536w, https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17-1600x905.png 1600w" sizes="(max-width: 1920px) 100vw, 1920px" /> <figcaption>The GUI of Gigapixel AI allows you to compare naive upscale and AI upscale next to each other,</figcaption>  

I used the 30-day trial version of the program and I was quite impressed with the results. Rounded shapes are much sharper, and the resulting image is crisp, albeit sometimes a bit too artificial to look real. A 400&#215;400% enlargement took 2-3 minutes on one laptop (with GPU) or 25 minutes on another (without GPU). <figure class="wp-block-image size-large">

<img  width="804" height="616" src="https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17-copy.png" alt="" class="wp-image-2306" srcset="https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17-copy.png 804w, https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17-copy-300x230.png 300w, https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17-copy-768x588.png 768w" sizes="(max-width: 804px) 100vw, 804px" />   

Gigapixel AI also does noise removal and smoothing. Sometimes the default settings are a bit too much. Look at her skin, it&#8217;s too smooth. The details in the sleeve, on the other hand, seem correct.

## Using LetsEnhance.io

[LetsEnhance,io](https://letsenhance.io/) uses a cloud model: you upload the original photo, select some options, start the conversion and download the result some minutes later. Their pricing starts at $9 for 100 photos per month.

The **Photo 2.0 Faces** method gave me this:<figure class="wp-block-image size-large">

<img  width="800" height="600" src="https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail_photos_v2_faces_x4_colored_toned.jpg" alt="" class="wp-image-2307" srcset="https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail_photos_v2_faces_x4_colored_toned.jpg 800w, https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail_photos_v2_faces_x4_colored_toned-300x225.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail_photos_v2_faces_x4_colored_toned-768x576.jpg 768w" sizes="(max-width: 800px) 100vw, 800px" />   

The skin has more texture, but I&#8217;m not sure I find it realistic, it looks too much like color noise, The details in the dress seem OK.

And LetsEnhance&#8217;s new **Smart Enhance** (Beta) gave me this after executing it twice (since x200% is the maximum for 1 step).<figure class="wp-block-image size-large">

<img  width="800" height="600" src="https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail_auto_x2_auto_x2.jpg" alt="" class="wp-image-2308" srcset="https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail_auto_x2_auto_x2.jpg 800w, https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail_auto_x2_auto_x2-300x225.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail_auto_x2_auto_x2-768x576.jpg 768w" sizes="(max-width: 800px) 100vw, 800px" />   

I like what happens with the skin, there is still a bit of texture left. But the details in the dress/sleeve are almost lost.

## Conclusion: AI image upscaling works

I find the AI upscale solutions very promising. In the end I went with Gigapixel AI because it was the only interesting solution to convert 100 images in bulk.

_PS: I also tried UpscalePics, but the result was really bad. The processing time also seemed very short compared to the other AI cloud solutions,_
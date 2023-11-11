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
  - cloud
  - enlarge
  - shoot
---
I've been doing some [remote shoots](https://blog.forret.com/2020/05/30/simple-remote-portrait-photography/) recently, as the photographer obviously, and I've mainly used FaceTime &#8216;Live photos' for captures. The result of such a shoot is a series of [.HEIC files](https://en.wikipedia.org/wiki/High_Efficiency_Image_File_Format#HEIC:_HEVC_in_HEIF) (it's an Apple thing). Each file is a combination of a low-res 3-second movie with a mid-res image file. The image file, which is the one that interests me, is a 716&#215;1280 pixels heavily compressed one. This is not a lot of pixels to start with in Lightroom/Photoshop. I found that **it is possible to upscale such an image to 400%** (2864&#215;5120), and use this new big image to comfortably do the post-processing. Let me show you the best way to upscale low resolution photos to high resolution!

## Using [ImageMagick](https://imagemagick.org/)

I will take one of the images I shot with FaceTime, and show you a detail and then enlarge it with different methods.

![](https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail.jpg)

This is the detail of the original image: 400&#215;250 pixels  

### Method 1: naive magnify<figure class="wp-block-image size-large">

![](https://blog.forret.com/wp-content/uploads/2020/07/manuela.box_.jpg)

`convert [input] -magnify -magnify [output]`   

The -magnify is not meant to be used with photos. Every pixel becomes a block of 4x4 pixels. 
This is the equivalent of using the -resize function with the 'box' filter.

### Method 2: naive resize<figure class="wp-block-image size-large">

![](https://blog.forret.com/wp-content/uploads/2020/07/manuela.resize-1.jpg)

`convert [input] -filter [filter] -resize 400x400% [output] `  

A naive `-resize` in ImageMagick gives a resized file with lots of artefacts/noise. 
The border between the white blouse and the skin is a good example of that. 
Overall, the image is blurry. 
By default the -resize will use the ['Lanczos' filter](https://imagemagick.org/script/command-line-options.php#filter), 
but using &#8216;spline' or &#8216;gaussian' doesn't give fundamentally different results.

Some documentation recommends using a &#8216;unsharp' sharpening filter right after, but again no real improvement.<figure class="wp-block-image size-large">

![](https://blog.forret.com/wp-content/uploads/2020/07/manuela.unsharp-1.jpg)
`convert <input> -resize 400&#215;400% -unsharp 0x1 <output>`   

## Using Gigapixel AI

[Topaz Gigapixel AI](https://topazlabs.com/gigapixel-ai/) is a desktop application that uses advanced AI technology 
to do better image upscaling. In short, it 'understands' what is shown in a photo and what that would look like with more pixels.

![](https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17.png)

The GUI of Gigapixel AI allows you to compare naive upscale and AI upscale next to each other,   

I used the 30-day trial version of the program, and I was quite impressed with the results. 
Rounded shapes are much sharper, and the resulting image is crisp, albeit sometimes a bit too artificial to look real. 
A 400&#215;400% enlargement took 2-3 minutes on one laptop (with GPU) or 25 minutes on another (without GPU).

![](https://blog.forret.com/wp-content/uploads/2020/07/Screenshot-2020-07-04-at-21.39.17-copy.png)

Gigapixel AI also does noise removal and smoothing. Sometimes the default settings are a bit too much. Look at her skin, it's too smooth. The details in the sleeve, on the other hand, seem correct.

## Using LetsEnhance.io

[LetsEnhance,io](https://letsenhance.io/) uses a cloud model: you upload the original photo, select some options, 
start the conversion and download the result some minutes later. Their pricing starts at $9 for 100 photos per month.

The **Photo 2.0 Faces** method gave me this:

![](https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail_photos_v2_faces_x4_colored_toned.jpg)

The skin has more texture, but I'm not sure I find it realistic, it looks too much like color noise, the details in the dress seem OK.

And LetsEnhance's new **Smart Enhance** (Beta) gave me this after executing it twice 
(since x200% is the maximum for 1 step).

![](https://blog.forret.com/wp-content/uploads/2020/07/manuela.detail_auto_x2_auto_x2.jpg)

I like what happens with the skin, there is still a bit of texture left. But the details in the dress/sleeve are almost lost.

## Conclusion: AI image upscaling works

I find the AI upscale solutions very promising. In the end I went with Gigapixel AI because it was the only interesting solution to convert 100 images in bulk.

PS: I also tried UpscalePics, but the result was bad. The processing time also seemed very short compared to the other AI cloud solutions,_
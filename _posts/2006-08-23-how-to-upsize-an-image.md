---
id: 414
title: How to upsize an image
date: 2006-08-23T12:43:18+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/08/how-to-upsize-an-image/
permalink: /2006/08/23/how-to-upsize-an-image/
categories:
  - photography
---
## Printing in larger sizes

I have a Canon 350D digital camera. At [8 megapixels](http://web.forret.com/tools/megapixel.asp?title=Canon+EOS+350D&width=3456&height=2304), it&#8217;s in the semi-pro league, and allows me to make 293mm x 192mm (11.5&#8243; x 7.7&#8243;) hi-quality prints. That&#8217;s slightly smaller than an A4 (or Letter) sheet. Imagine now I would want to print on an A0 format or 1189mm x 841mm (46.8&#8243; x 33.1&#8243;). That&#8217;s 16 times as big (height x 4 and width x 4). I could take a &#8216;normal&#8217; image and rescale it to that size, but what would that look like? For every 16 pixels of the new picture, 1 would be an original one, and the other 15 would have been guessed from that and the surrounding pixels. This process is called [image interpolation](http://www.cambridgeincolour.com/tutorials/image-interpolation.htm) and there are different algorithms to do this. Let me show what that looks like.

## Interpolation algorithms

[<img src="http://static.flickr.com/82/222791326_f7c2c5a850.jpg" alt="Image sizes" width="500" />](http://www.flickr.com/photos/pforret/222791326/ "Photo Sharing")  
<!--more-->

  
In the next images, I simulated this upsizing operation: I took an normal-resolution picture and made its dimensions smaller by 2x, 4x, 8x, &#8230; and then resized it to the original resolution with a number of different algorithms (I used the Irfanview image editor for this). You always see the original picture in the top left corner. The one to the right is a simulation of an upscaling of 4x (width and height x 2), the one in the right top corner: upscaling of 16x (both sides x 4). The one on the left bottom (both sides x 8, so total image x 64) is most interesting, because it shows best the differences between the algorithms for still not too distorted images. The image on the bottom right is there to show that 32 x 32 magnification (total image x 1024) is generally not a good idea. (click the images for more detail).

### [Nearest neighbour](http://en.wikipedia.org/wiki/Nearest_neighbor_interpolation) (simple)

A pixel becomes a square 2&#215;2 block of the same colour, then a 4&#215;4, &#8230; Main advantage of this system: no calculation is necessary, so it is blazing fast. This is actually the way your browser upsizes images.  
[<img  src="http://static.flickr.com/90/221084709_17f1c2c86c.jpg" alt="Resize effect: no interpolation" width="500" height="300" />](http://www.flickr.com/photos/pforret/221084709/ "Photo Sharing")

### [Hermite filter](http://en.wikipedia.org/wiki/Hermite_interpolation)

This is slightly better than the naive method. For mathematical details, check the [Hermite Interpolating Polynomial](http://mathworld.wolfram.com/HermitesInterpolatingPolynomial.html).  
[<img  src="http://static.flickr.com/92/221084711_4e3b9adbb8.jpg" alt="Resize effect: Hermite filter" width="500" height="300" />](http://www.flickr.com/photos/pforret/221084711/ "Photo Sharing")

### [Triangle/tent filter](http://en.wikipedia.org/wiki/Bilinear_interpolation)

> Bilinear interpolation considers the closest 2&#215;2 neighborhood of known pixel values surrounding the unknown pixel. It then takes a weighted average of these 4 pixels to arrive at its final interpolated value. This results in much smoother looking images than nearest neighbor. (from [cambridgeincolour.com](http://cambridgeincolour.com/tutorials/image-interpolation.htm))

[<img  src="http://static.flickr.com/91/221093556_4a9b07197c.jpg" alt="Resize effect: Triangle filter" width="500" height="300" />](http://www.flickr.com/photos/pforret/221093556/ "Photo Sharing")

### [B-spline filter](http://en.wikipedia.org/wiki/B-spline)

Math background on [sepwww.stanford.edu](http://sepwww.stanford.edu/public/docs/sep105/sergey2/paper_html/node5.html).  
[<img  src="http://static.flickr.com/74/221089355_7ace4954a5.jpg" alt="Resize effect: B-spline filter" width="500" height="300" />](http://www.flickr.com/photos/pforret/221089355/ "Photo Sharing")

### [Lanczos filter](http://en.wikipedia.org/wiki/Lanczos_resampling)

Lanczos is the most complex, and slowest method, which should give the best results. Although:

> Finally, the popular freeware IrfanView (Version 3.92) offers a Lanczos resizing option which uses too few sample points and therefore can produce an unwanted shadow pattern in some images. (from [enlargingsplugins](http://www.thepluginsite.com/knowhow/enlargingplugins/index.htm))

[<img  src="http://static.flickr.com/97/221084713_e33c3b7bb6.jpg" alt="Resize effect: Lanczos filter" width="500" height="300" />](http://www.flickr.com/photos/pforret/221084713/ "Photo Sharing")

So here&#8217;s my roundup of some interpolation algorithms for making images bigger. Keep in mind that larger resolutions cause larger files. An image good enough for A0 printing (14000 x 10000 pixels) could amount to a 800MB TIFF file.

Some tools:

  * [given physical size and DPI, calculate the pixel size you need](http://toolstud.io/photo/dpi.php)
  * [given width and height in pixels, calculate max print size, megapixels, aspect ratio&#8230;](http://toolstud.io/photo/megapixel.php)
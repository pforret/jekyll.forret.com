---
id: 561
title: Megapixel myth nuances
date: 2006-12-08T01:22:48+01:00
author: Peter
layout: post
guid: /2006/12/megapixel-myth-nuances/
permalink: /2006/12/08/megapixel-myth-nuances/
categories:
  - photography
---
What's the value of more megapixels? Is 10 megapixels better than 5? Here are some articles stating the opposite:

> On the show, we did a test. We blew up a photograph to 16 x 24 inches at a professional photo lab. One print had 13-megapixel resolution; one had 8; the third had 5. Same exact photo, down-rezzed twice, all three printed at the same poster size. I wanted to hang them all on a wall in Times Square and challenge passersby to see if they could tell the difference.  
> (&#8230;)  
> I’m telling you, there was NO DIFFERENCE.  
> [The Truth About Digital Cameras (NYT)](http://pogue.blogs.nytimes.com/2006/11/21/21pogues-posts-2/)

**Megapixel apples and oranges**  
A 5-megapixel image that was created by down-sampling a 13 megapixel original is not the same as a 5-megapixel original. Why?  
Well, let's take a look at how a digital camera CCD sensor works. Natively the sensor is color-agnostic: pixels only measure light, not color. So the chip can only do greyscale images. A smart guy from Eastman-Kodak, Dr. Bryce E. Bayer, has however found a way to add color-sensitivity, by adding an RGB color filter array (the [Bayer filter](http://en.wikipedia.org/wiki/Bayer_filter)). Each pixel has a filter in front of it that lets through either the Red, Green of Blue light. Since the human eye is most sensitive to green, 50% of all pixels measure green, 25% do red and another 25% blue. A 5-megapixel image from the sensor is really a 2.5 MP green image, a 1.25 MP red and a 1.25 MP blue image, the three of them almost overlapping (1 pixel off). This is how the image is stored in RAW format. Each such pixel has a value between 0 and 4096 (12 bits). To convert it to a full-color image (8-bit value for each color R-G-B, so 24 bits for each pixel), the missing colors for each pixel are derived from the neighbouring pixels (aka [demosaicing](http://en.wikipedia.org/wiki/Demosaicing)). E.g. a Red pixel has the exact value for the colour red, gets the green component from 4 neighbouring green pixels and the blue one from 2 neighbouring pixels. (More advanced algorithms exist) This gives some false colors (&#8216;artefacts') at sharp edges. Let's [simulate this](http://web.forret.com/tools/bayer_mask.asp) with a pure black/white border:  
[<img  src="http://static.flickr.com/100/315658754_5f091ce094.jpg" width="500" height="247" alt="Photography: RAW to JPG conversion" />](http://www.flickr.com/photos/pforret/315658754/ "Photo Sharing")

A pixel in a native 5-megapixel JPG image is based on 5 to 7 pixels of RAW color info. A pixel in a 5-megapixel camera that was downsampled from a 13MP image, gets its color info from roughly 20 pixels of original info. So the colors are more correct (provided the original picture was good quality, of course). Also, the color artefacts around sharp edges are much thinner so that they may almost disappear after the resizing.  
[<img  src="http://static.flickr.com/114/315674429_84bd63285d.jpg" width="500" height="246" alt="Photography: RAW to JPG conversion" />](http://www.flickr.com/photos/pforret/315674429/ "Photo Sharing")  
My point being: printing out a resized 5MP picture is not an honest comparison.  
<!--more-->

  
**Megapixels make life harder**

> The reality is that all areas of digital camera technology were improving at about the same rate as pixel counts were increasing. Most of these advancements have resulted in better photos for amateurs; picture quality is way up, and so are pixel counts. Vendors will tell you that these two facts are linked. But what they don't tell you is that the improvement in picture quality is the result of improvements in just about every aspect of a digital camera except pixel counts.  
> [The myth of maximum megapixels](http://www.computerworld.com/action/article.do?command=viewArticleBasic&articleId=9005180&pageNumber=1)

I do follow some of this article's statements:

  * more megapixels on a sensor of the same size means smaller pixels, less light falling on each pixel and so worse performance in low-light conditions (e.g. more noise in 1600 and 3200 ISO modes).
  * more megapixels make your pictures bigger, which means: more time to save a picture to the memory card, less pictures on that 1GB card, more disk space needed to store all those images and slower working with image editors/managers.

Does that mean that buying a digital <acronym title="Single Lens Reflex">SLR</acronym> is silly because a compact camera is just as good? No. Personally, I find the quality of my photos has improved a lot since my buying a 350D (he said without blinking). That is not because it has 8 megapixels. That has more to do with the advanced functions (Tv,Av,P,M mode; ISO100-ISO1600; multi-spot metering; better autofocus &#8230;). If you buy an SLR, you need to understand about light, color, aperture, shutter, sensitivity. It's a bit technical (which I like, obviously) but it's definitely worth it.
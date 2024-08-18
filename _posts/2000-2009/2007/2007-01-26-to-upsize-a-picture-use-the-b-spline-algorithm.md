---
id: 643
title: To upsize a picture, use the B-spline algorithm
date: 2007-01-26T15:49:48+01:00
author: Peter
layout: post
guid: /2007/01/to-upsize-a-picture-use-the-b-spline-algorithm/
permalink: /2007/01/26/to-upsize-a-picture-use-the-b-spline-algorithm/
categories:
  - photography
---
If you take a low-res picture, and you want to blow it up to a higher size, there are different algorithms to do the calculation of all those new pixels. I talked about this earlier in &#8220;[How to upsize an image](/2006/08/how-to-upsize-an-image/)&#8220;. I went a bit further now and took a 100&#215;100 pixels detail of a [Roos Van Acker](http://www.filipnaudts.be/htmlsite/roos1.html) picture by [Filip Naudts](http://www.filipnaudts.be/) and enlarged it five times: to 500&#215;500. The tool I use, [Irfanview](http://www.irfanview.com), has 6 algorithms to do resize:  
[<img src="http://farm1.static.flickr.com/98/369851351_8038586d89_b.jpg" width="500" alt="Upsize picture from 100x100 to 500x500" />](http://www.flickr.com/photo_zoom.gne?id=369851351&size=o)

Contrary to what I expected, it was not the [Lanczos](http://en.wikipedia.org/wiki/Lanczos_algorithm) filter (slowest and &#8216;best') that gave the best results, but the [B-spline algorithm](http://en.wikipedia.org/wiki/Spline_interpolation) that's supposedly a bit worse. With Lanczos you get an rastering effect (check her hair), with B-spline it's more even.  
<!--more-->

  
If you look at the simulation I made earlier, you see that B-spline blurs out the picture more evenly.  
[<img  src="http://farm1.static.flickr.com/74/221089355_7ace4954a5.jpg" width="500" height="300" alt="Resize effect: B-spline filter" />](http://www.flickr.com/photos/pforret/221089355/ "Photo Sharing")

Lanczos creates these circular artefacts around magnification by 8 or 16.  
[<img  src="http://farm1.static.flickr.com/97/221084713_e33c3b7bb6.jpg" width="500" height="300" alt="Resize effect: Lanczos filter" />](http://www.flickr.com/photos/pforret/221084713/ "Photo Sharing")

I will do some tests on magnification of high-resolution photos to _super-high resolution_: e.g. from a 6 megapixel picture to 150 megapixel (width and height x 5 like above). I have a feeling the artefacts of areas that have less entropy/complexity (a 100&#215;100 pixel area might contain only some hairs of the eyebrows instead of a full face) will be different. Why would you want to create a picture bigger than 10 megapixel? An 8-megapixel should not be printed larger than 21.8&#8243; (553mm) x 16.3&#8243; (415mm) at 150dpi. With a 25 megapixel image, you can go to 38.5&#8243; (978mm) x 28.9&#8243; (734mm).
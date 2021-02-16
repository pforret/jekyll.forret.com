---
id: 1054
title: 'A JPEG picture doesn&#8217;t care about no DPI'
date: 2008-04-21T11:12:01+02:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1054
permalink: /2008/04/21/a-jpeg-picture-doesnt-care-about-no-dpi/
categories:
  - photography
tags:
  - dpi
  - image
  - jpeg
  - photo
  - print
---
Every now and then I get a request to use pictures of mine for a poster, a flyer, a book. People usually find the pictures they want in my [Flickr sets](http://www.flickr.com/photos/pforret/sets/), where they are available in a max resolution of 1200 pixels for the longest side (so e.g. 1200 x 800 for photos in 3:2 aspect ratio). When this is not enough, people ask me for higher resolution versions. And that question comes in two versions:

  * the **logical** i&#8217;m-used-to-this-digital-stuff version: &#8220;_could I get those pictures in 1800&#215;1200_&#8221; / &#8220;_Can I have at least 2 megapixels_&#8220;?
  * the **weird** I-used-to-work-in print version: &#8220;_can you send them in 300dpi_&#8220;?

DPI (dots-per-inch) only make sense for me if I would know on what size you want to print them. If you&#8217;re making an [A4](http://en.wikipedia.org/wiki/Paper_size#ANSI_paper_sizes) flyer, that&#8217;s 8½ × 11 inch, and you need 300 dpi, then that means you need 3300&#215;2550 pixels. If you want to print only an A6 size, that&#8217;s 1650&#215;1275 pixels. So don&#8217;t tell me what DPI you need, tell me what pixel dimensions you need. Yes, you can save the DPI parameter in a JPEG file, but it changes nothing to the data. My 1200&#215;800 picture with a DPI value of 72 or 300dpi is still, pixel by pixel, the same picture. Your image viewer might decide to show it as a bigger picture on the screen, but the image data is **identical.**  
[<img loading="lazy" src="http://farm4.static.flickr.com/3280/2430945120_c7fa265cea.jpg" alt="jpeg_dpi" width="373" height="500" />](http://www.flickr.com/photos/pforret/2430945120/ "jpeg_dpi by PeterForret, on Flickr")

> Beginning to see the pattern? No matter what DPI you set (or, as it happens, what size in inches) so long as you don&#8217;t let Photoshop resample the image up or down, it&#8217;s STILL 504 by 144 pixels.
> 
> Let&#8217;s save this one as 12dpi.TIF before we forget, then have a look at the file sizes. You&#8217;d think that a 300dpi file would be higher resolution than a 12 dpi file, and because of that a lot bigger, right?
> 
> Sorry. All three files are exactly the same size.
> 
> (from [pptfaq.com](http://pptfaq.com/FAQ00075.htm))

So, if you&#8217;re asking someone for a high-resolution version of a digital picture, ask for **minimum pixel dimensions**, _not for DPI_! Otherwise you just show that, while you might have experience in managing print, you have no clue how digital imagery works.
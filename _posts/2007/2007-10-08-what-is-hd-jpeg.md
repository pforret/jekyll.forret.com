---
title: What is HD-JPEG?
layout: post
permalink: /2007/10/08/what-is-hd-jpeg/
categories:
  - photography
tags:
  - hd
  - image
  - jpeg
  - raw
---
While reading the specs of the [PackardBell Store & Play](http://nl.packardbell.be/products/opslagmedia/store-and-play/store-and-play-3500-320-gb/productsheet-C050500000-1165.html), I fall upon &#8220;_Foto formaten: JPEG, **HD JPEG**_&#8221; As I am working with several aspects of HD (High Definition) video all the time, I am of course intrigued. There is a standard for HD JPEG? Wow, tell me more!

### HD JPEG = HD Photo = JPEG XR (my guess)

Well, it's not that easy, actually. When you do a search for &#8220;HD JPEG&#8221; on Google, all you see is promo talk. Vendors like Philips and Panasonic use it as a feature on their devices, but there is no official definition of what it stands for. What I think happened is:

  * [Microsoft developed](http://www.microsoft.com/whdc/xps/wmphotodwn.mspx) a standard &#8220;[HD Photo](http://en.wikipedia.org/wiki/HD_Photo)&#8221; (formerly Windows Media Photo) that corrects some of the disadvantages of JPEG: 
      * It can store color information at 32 bit per color instead of 8 or 12. (In current JPEG, &#8220;24-bit colour&#8221; means: 3 x 8 bits for R, G and B.)
      * All encoding steps of the algorithm are lossless (except for quantisation). So it has a true lossless mode (all coefficients = 1). JPEG does not have this (at least, not implemented).
      * All kinds of tech mumbo-jumbo reasons (read the Wikipedia article)
      * _&#8220;HD Photo offers image quality comparable to JPEG-2000 with computational and memory performance more closely comparable to JPEG&#8221;_
  * The [JPEG committee announced](http://www.jpeg.org/newsrel19.html?langsel=en) that they would (consider to) [adopt HD-Photo as a standard](http://www.engadget.com/2007/08/01/microsofts-hd-photo-format-considered-for-new-jpeg-standard/), with as a working name **JPEG XR**. Provided that, of course, &#8230;  
    > One important aspect regarding the standardization of HD Photo is Microsoft's commitment to make its patents that are required to implement the specification available without charge. Microsoft's royalty free commitment will help the JPEG committee foster widespread adoption of the specification and help ensure that it can be implemented by the widest possible audience. The JPEG committee hopes and encourages all participants in its meetings to consider this royalty free approach when offering patented technology as a candidate for standardization.

  * The hardware vendors didn't like the &#8220;JPEG XR&#8221; name (it doesn't really show clearly that it's an upgrade from JPEG), so they combined it with an acronym that consumers know and associate with &#8220;better&#8221; and &#8220;more expensive&#8221;, so was born &#8220;HD JPEG&#8221;.
  * in short: Technically, it does not exist. Practically, it sells flat screens.

### Competition<!--more-->

JPEG XR/HD JPEG tries to fill the gap between JPEG (small files, widely accepted standard, but compromises quality) and [RAW](http://en.wikipedia.org/wiki/RAW_image_format) (huge files, proprietary in a lot of cases but the highest possible quality).

In 2004 Adobe launched [DNG](http://www.adobe.com/products/dng/) ([Digital Negative](http://en.wikipedia.org/wiki/Digital_Negative_%28file_format%29)) but this is more an effort to have a &#8216;unifying camera <u>raw</u> file format' (uncompressed and compatible between different brands).

[OpenEXR](http://en.wikipedia.org/wiki/OpenEXR) is a file format for HDR images ([High Dynamic Range](http://en.wikipedia.org/wiki/High_dynamic_range_imaging)), created by Industrial Light & Magic (George Lucas' company) in 2003. It has lossless compression, and most importantly 32-bit floating point per pixel/color. It is used as a storage format for CGI, that saves as much dynamic detail (dark vs. light) as possible, until the scene is finally rendered onto a more classic format (JPEG2000, JPEG &#8230;)

[JPEG2000](http://en.wikipedia.org/wiki/JPEG_2000) is the standard developed by the JPEG group in 2000 to allow for higher quality still and moving images. It uses wavelet compression and has excellent image quality. Unfortunately it is also rather slow for both compression and decompression, and most importantly, no on uses it for images. Motion JPEG 2000, on the other hand, is the standard for digital cinema.

PNG ([Portable Network Graphics](http://en.wikipedia.org/wiki/Portable_Network_Graphics)) was developed from 1996 onwards as an alternative for the patent-undermined GIF format. For photos it does not compress as well as JPEG.

TIFF ([Tagged Image File Format](http://en.wikipedia.org/wiki/Tagged_Image_File_Format)) is a container format that can store multiple images in 1 file, can do CMYK as well as RGB, but due to old compression algorithms, creates huge files.

### Who uses it?

That's an even better question. Windows Vista can read HD Photo files, some flat-screen TVs can read them from memory cards, some media centers can display them but within popular consumer applications, only Adobe Photoshop can create them. For as far as I know, no camera saves its pictures in the HD Photo/JPEG XR format. So I wouldn't let this feature decide on what TV you should buy, yet.

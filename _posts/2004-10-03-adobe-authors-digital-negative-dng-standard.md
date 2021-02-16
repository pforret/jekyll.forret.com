---
id: 62
title: Adobe authors Digital Negative (DNG) standard
date: 2004-10-03T15:46:26+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/10/03/adobe-authors-digital-negative-dng-standard/
permalink: /2004/10/03/adobe-authors-digital-negative-dng-standard/
categories:
  - photography
---
Adobe has developed a new format for &#8216;raw&#8217; camera files, called Digital Negative.  
The [DNG specifications (PDF)](http://www.adobe.com/products/dng/pdfs/dng_spec.pdf) uses the following arguments for its existence:

  * **portable**: an image tool that understands .DNG files immediately supports images from the [65 cameras from 14 manufacturers](http://www.adobe.com/products/photoshop/cameraraw.html) that currently can be converted to .DNG files. 
  * **durable**: your camera vendor might not be around in 5 years, and support for its proprietary RAW format might have ceased too, i.e. if you buy PaintShop Pro 2009, it might not be able to read the files from your current camera. 
  * **uncompressed**: the JPEG format, which is also an &#8216;open standard&#8217;, typically uses &#8216;lossy compression&#8217; to keep images small enough. Lossy compression means image data is lost and cannot be recovered. 
  * **compatible**: the standard is based on [TIFF 6.0](http://home.earthlink.net/~ritter/tiff/). TIFF is an [older and very common format that Adobe controls](http://www.creativepro.com/story/news/21983.html). It&#8217;s one of the few formats that supports multiple pages in one file. 
  * **meta-information**: DNG allows saving the images&#8217; meta information (cf [EXIF](http://www.exif.org/) and [XMP](http://www.adobe.com/products/xmp/main.html)): camera brand and model, exposure time, focal length, saturation, &#8230;

Adobe is currently shipping a RAW-to-DNG converter application and a plugin for Photoshop. 

It will be interesting to see whether Adobe can pull their PostScript/PDF stunt again by creating a de-facto standard. They already have (verbal) support from the likes of Microsoft, HP and Corbis. Way to go.

(via [Digital Photography News](http://digitalphotographynews.blogspot.com/2004/09/industry-leaders-endorse-digital.html))
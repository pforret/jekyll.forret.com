---
id: 987
title: 'Screenshots of a DVD with &#8216;ffmpeg''
date: 2008-02-08T22:18:37+01:00
author: Peter
layout: post
guid: /2008/02/screenshots-of-a-dvd-with-ffmpeg/
permalink: /2008/02/08/screenshots-of-a-dvd-with-ffmpeg/
categories:
  - audio-video
  - scripting
tags:
  - capture
  - dvd
  - extract
  - ffmpeg
  - image
  - rip
  - screenshot
  - script
  - video
  - windows
---
I've been playing around a lot with video conversion lately and one of the tools I use often is the Swiss armyknife for video manipulation &#8216;[ffmpeg](http://ffmpeg.mplayerhq.hu/)&#8216;. It does format conversion (MPEG1/2/4, Quicktime, AVI &#8230;) , rescaling, recompressing, frame rate conversion &#8230; almost everything. It exists for all flavours of Linux/Unix, and also for [Windows](http://www.videohelp.com/tools/ffmpeg).

To give you an example: this is a script I wrote to extract screenshots of DVD files, straight from the disk.

**1) the naive version**  
`ffmpeg -i [input file] -r .05 -y [output name]%%03d.png`  
This does indeed extract a PNG image every 20 seconds (framerate = 0.05), but it does not take into account that the DVD image material is stored anamorphically. What you get is this:  
[<img  src="http://farm3.static.flickr.com/2410/2251354130_3c70d04cdf_m.jpg" alt="V4Vendetta_1_720.012" width="240" height="192" />](http://www.flickr.com/photos/pforret/2251354130/ "V4Vendetta_1_720.012 by PeterForret, on Flickr")  
Natalie Portman looks really thin, but that's because the image dimensions (720&#215;576 pixels &#8211; PAL standard) are for 5:4 aspect ratio, and whereas the actual image should be 16:9. So let's make the image wider while keeping it the same height.

**2) Rescale to 16:9**  
`ffmpeg -i [input file] -r .05 -s 1024x576 -y [output name]%%03d.png`  
The result looks better:  
[<img  src="http://farm3.static.flickr.com/2125/2251353732_f0d3c9c74f_m.jpg" alt="V4Vendetta_1_1024.012" width="240" height="135" />](http://www.flickr.com/photos/pforret/2251353732/ "V4Vendetta_1_1024.012 by PeterForret, on Flickr")

As you see, there are still black borders on the top and bottom. This is because a feature film is made in &#8216;scope' format, with an aspect ratio of 2.39 instead of 1.78 (the decimal equivalent of 16/9). So, while the full width of the image is used, only 428 pixels of the height are actually in use. Let's crop those black borders off.

**3) Crop black borders away**  
`ffmpeg -i [input file] -r .05 -croptop 74 -cropbottom 74 -s 1024x428 -y [output name]%%03d.png`

[<img  src="http://farm3.static.flickr.com/2159/2250661505_42377134ee.jpg" alt="V for Vendetta: cropped" width="500" height="209" />](http://www.flickr.com/photos/pforret/2250661505/ "V for Vendetta: cropped by PeterForret, on Flickr")

**4) old 4:3 movies**  
The older movies used a 4:3 aspect ratio, so when you extract them as 16:9 they look like a weight fell on them:  
[<img  src="http://farm3.static.flickr.com/2142/2250556757_9a5cdf6576_m.jpg" alt="MammaRoma_1024" width="240" height="135" />](http://www.flickr.com/photos/pforret/2250556757/ "MammaRoma_1024 by PeterForret, on Flickr")  
In those cases, you can use the &#8216;naive' version above, which will give you:  
[<img  src="http://farm3.static.flickr.com/2149/2250556101_cc7d436950_m.jpg" alt="MammaRoma_720" width="240" height="192" />](http://www.flickr.com/photos/pforret/2250556101/ "MammaRoma_720 by PeterForret, on Flickr")

Here also, the actual 4:3 image is &#8216;letterboxed' to the 5:4 DVD image.

<!--more-->Why did I need to figure this out? Well, guess what movie is running on my LCD photo frame:

  
[<img  src="http://farm3.static.flickr.com/2028/2250618987_04117271a2.jpg" alt="Lucia y el sexo" width="500" height="281" />](http://www.flickr.com/photos/pforret/2250618987/ "Lucia y el sexo by PeterForret, on Flickr")

#### Windows batch script

For those who like a ready-made script (for Windows machines), here it goes:

`set FFMPEG=<path>/ffmpeg.exe<br />
set SOURCE=e:\video_ts<br />
set TITLE=[movie name]<br />
set DESTIN=%CD%`

```pushd %SOURCE%<br />
for %%F in (*.VOB) do (<br />
call :vob2img %%F<br />
)<br />
popd<br />
goto :end<br />
:vob2img<br />
set FNAME=%1<br />
set NAME=%FNAME:.VOB=%<br />
set NAME=%NAME:VTS_=%<br />
set NAME=%NAME:01_=%<br />
set NAME=%NAME:_TS=%<br />
set NAME=%NAME:VIDEO=%<br />
set ROOT=%TITLE%_%NAME%<br />
"%FFMPEG%" -i %FNAME% -r .05 -croptop 74 -cropbottom 74 -s 1024x428 -y %DESTIN%%ROOT%.%%03d.png<br />
:end`

Which will give, for a 90 minute movie, 270 images called like `V4Vendetta_1.NNN.png`.
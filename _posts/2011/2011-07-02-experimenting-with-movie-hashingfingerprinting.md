---
title: 'Idea: Experimenting with movie hashing/fingerprinting'
date: 2011-07-02T01:34:58+02:00
author: Peter
layout: post
permalink: /2011/07/02/experimenting-with-movie-hashingfingerprinting/
categories:
  - audio-video
  - idea
tags:
  - experiment
  - video
---
## MEDIA FINGERPRINTING

Neal Krawetz wrote an [interesting article on image fingerprinting](http://hackerfactor.com/blog/index.php?/archives/432-Looks-Like-It.html), or how to search for images that are similar. He proposes an algorithm to do image fingerprinting and reproduce the functionality of TinEye, a service that allows to give one image and get back all the web pages where that picture, or a slightly modified version of it, is included. By resizing the image to 8&#215;8 pixels, creating a B/W version, and then a binary (only black or white pixels, no grey levels), he reduces a picture to a hash that is 8 x 8 = 64 bits. This can then be compared to a database of hashes of millions of other pictures found on the web (by calculating the &#8220;Hamming distance&#8221; &#8211; read the article for details).

On the other hand, something similar can be done on segments of _audio_. YouTube [has been doing it](http://googleblog.blogspot.com/2007/06/state-of-our-video-id-tools.html) for years (using technology from Audible Magic) and recently the Echo Next has released [Echo Print, a music fingerprint and identification service](http://blog.echonest.com/post/6824753703/announcing-echoprint) that does the same thing for free.

## VIDEO FINGERPRINTING

Since I work (and play) a lot with video, I was thinking about how to extend the ideas Neal proposes to video. Video material consists of audio (which I will ignore for now) and a sequence of images (typically between 24 and 30 per second). I've taken a video clip from YouTube as inspiration, but I won't tell you yet which one, let's discover it while I create the fingerprint of 1 of the frames, using the method described by Neal:

1. first we reduce the frame to a small format, e.g. 16&#215;8 pixels ![](https://i.imgur.com/2SwIT.jpg)
2. then we desaturate: make the picture grayscale ![](https://i.imgur.com/B7Y4e.jpg)
3. then we normalize it: we maximize the contrast, the darkest pixel become the new black, the lightest becomes the new white ![](https://i.imgur.com/U8p5G.jpg)
4. we calculate the average darkness and any pixel that is darker we make black, and the others become white -this is what is proposed in the article.<br/>Total size of fingerprint: 16 pix * 8 pix * 1 bit = 96 bits = 16 bytes ![](https://i.imgur.com/vcKHh.jpg)
5. I found the details in the above fingerprint too coarse, so I used 4 color levels instead of 2.<br/>Total size of fingerprint = 16 pix * 8 pix * 2 bits = 32 bytes ![](https://i.imgur.com/WMNsZ.jpg)

Do you recognize the scene? I think not. Let's try with more pixels: 32 x 16 or 128 bytes per fingerprint (which is probably already too big for a fingerprint)

1. rescale image to 32x16 ![](https://i.imgur.com/Q9JuW.jpg)
2. reduce saturation to gray ![](https://i.imgur.com/ftXlQ.jpg)
3. normalize and 1 bit color ![](https://i.imgur.com/Jtnwg.jpg)
4. normalize and 2 bit color ![](https://i.imgur.com/K6wqW.jpg)


Surely you see it when we use 64 x 32 pixels: 512 bytes per 4-level B/W fingerprint. This is not really a fingerprint anymore, it's more like a low res version.  

1. rescale image to 64x32 ![](https://i.imgur.com/O6ffr.jpg)
2. reduce saturation to gray ![](https://i.imgur.com/9iP59.jpg)
3. normalize and 1 bit color ![](https://i.imgur.com/gvE3A.jpg)
4. normalize and 2 bit color ![](https://i.imgur.com/ekwX7.jpg)

If you still have no idea: it's Julius from [Pulp Fiction](http://www.youtube.com/watch?v=f6csp2fZt2E) with the impressive 'vengeance' speech.  

![](http://i.imgur.com/PUlVP.jpg)

## ANIMATED FINGERPRINT

Now to see what that gives for moving images: I extracted one frame per second, reduced each frame to its fingerprint and combined them back into an animated GIF:


### 16x8

<img style="float:left; margin-right: 4px" src="https://i.imgur.com/ZmL5L.jpg" alt="" width="128" />
<img style="float:left; margin-right: 4px" src="https://i.imgur.com/EXpFB.jpg" alt="" width="128" />
<img style="float:left; margin-right: 4px" src="https://i.imgur.com/5uxMO.jpg" alt="" width="128" />
<img src="https://i.imgur.com/MUFtJ.gif" alt="" width="128" />

### 32x16

<img style="float:left; margin-right: 4px" src="https://i.imgur.com/HHnAu.gif" alt="" width="128" />
<img style="float:left; margin-right: 4px" src="https://i.imgur.com/VaMiJ.gif" alt="" width="128" />
<img style="float:left; margin-right: 4px" src="https://i.imgur.com/goNaL.gif" alt="" width="128" />
<img src="https://i.imgur.com/weCGm.gif" alt="" width="128" />

### 64x32

<img style="float:left; margin-right: 4px" src="https://i.imgur.com/BXJxF.gif" alt="" width="128" />
<img style="float:left; margin-right: 4px" src="https://i.imgur.com/BcLeN.gif" alt="" width="128" />
<img style="float:left; margin-right: 4px" src="https://i.imgur.com/EstrH.gif" alt="" width="128" />
<img src="https://i.imgur.com/Usukw.gif" alt="" width="128" />


## CONCLUSION

I think that this 1 frame/sec sampling is not the good way to go. For each snippet of 10 sec, you would have 160 bytes of data, and if the sampling of the original movie was 1/2 sec later, then the differences might be just too big.

Better would be to sync with events in the content by e.g. detecting strong scene changes (like from mainly dark to very light and vice versa, or panning movement). A static scene (the same horizon or face close-up for 10 seconds) would then just have 1 fingerprint and a duration. I find little details on [Wikipedia](http://en.wikipedia.org/wiki/Digital_video_fingerprinting) about existing technologies.

Still, it's interesting to see how few pixels a human needs to be able to follow what happens on the screen.
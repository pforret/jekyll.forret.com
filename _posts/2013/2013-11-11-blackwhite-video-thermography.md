---
id: 1341
title: Convert Black/White footage to thermographic-like video
date: 2013-11-11T17:07:58+01:00
author: Peter
layout: post
guid: /?p=1341
permalink: /2013/11/11/blackwhite-video-thermography/
attitude_sidebarlayout:
  - default
image: /wp-content/uploads/2013/11/thermo2_0061.png
categories:
  - color
tags:
  - convert
  - ffmpeg
  - thermography
  - video
---
I am doing some really cool research lately concerning video conversion and one of the issues I ran into, concerns **infrared imaging**. In short: all the &#8216;cool' thermographic (colour is dependent on radiated temperature) images are in color, and the images you get from cheap IR cameras is black and white. How do you convert the B/W into colour? 

First of all: we're talking about two different imaging technologies: the &#8216;real' thermographic cameras measure only infra-red (not visible) light, are very precise, expensive and are created by companies like [FLIR](http://www.flir.com/). They make the cameras that you might have seen in [CSI](http://www.youtube.com/watch?v=o0eU-jR-POg). <figure class="wp-block-image size-large">

<img  width="500" height="377" src="/wp-content/uploads/2013/11/example_flir1.jpg" alt="" class="wp-image-1342" srcset="https://blog.forret.com/wp-content/uploads/2013/11/example_flir1.jpg 500w, https://blog.forret.com/wp-content/uploads/2013/11/example_flir1-300x226.jpg 300w" sizes="(max-width: 500px) 100vw, 500px" />  Example of a &#8216;real' thermographic image   

On the other hand, you have the cheaper webcam/IP-cam devices that have &#8216;night-vision'. This means that, in addition to all visible light, the cameras are also sensitive to a part of the IR spectrum, and with some additional IR-lighting, one is capable of seeing in very dark places. They produce B/W images or colour, but then sometimes they show green grass as a bit purple/pink. 

What I was trying to do is convert a &#8216;cheap' B/W video into the coloured thermographic equivalent, but without expecting that e.g. orange will always mean 38°-39°. Since we start from a mixed visible/IR light video, brightness does not correlate perfectly with temperature. Still, the end result might be easier to interpret. 

So this is my source material: a Foscam FI8918W video from [Youtube](http://www.youtube.com/watch?v=Xvrcb5Pqam0): two cats playing in a kitchen. <figure class="wp-block-image size-large">

<img  width="480" height="360" src="/wp-content/uploads/2013/11/thermo0_0061.png" alt="" class="wp-image-1343" srcset="https://blog.forret.com/wp-content/uploads/2013/11/thermo0_0061.png 480w, https://blog.forret.com/wp-content/uploads/2013/11/thermo0_0061-300x225.png 300w" sizes="(max-width: 480px) 100vw, 480px" />   

**FIRST TRY**  
I find some inspiration from a guy who did something similar with ImageMagick. The dark/cold areas are supposed to be black/blue, the medium areas more green, then going to yellow, orange, red and white. This seems like a job for the [FFMPEG video filter](http://ffmpeg.org/ffmpeg-filters.html).

I use the &#8216;curves' filter and try first with really strong contrast colours:<figure class="wp-block-image size-large is-resized">

<img  src="/wp-content/uploads/2013/11/thermo1_0061.png" alt="" class="wp-image-1344" width="480" height="360" srcset="https://blog.forret.com/wp-content/uploads/2013/11/thermo1_0061.png 480w, https://blog.forret.com/wp-content/uploads/2013/11/thermo1_0061-300x225.png 300w" sizes="(max-width: 480px) 100vw, 480px" />  Trial 1: strong color contrast   

**SECOND TRY**  
The color scheme is kind of OK,&nbsp;but we lose a lot of detail (the cats become hard to distinguish). So then I try a more gradual approach: <figure class="wp-block-image size-large">

<img  width="480" height="360" src="/wp-content/uploads/2013/11/thermo2_0061.png" alt="" class="wp-image-1345" srcset="https://blog.forret.com/wp-content/uploads/2013/11/thermo2_0061.png 480w, https://blog.forret.com/wp-content/uploads/2013/11/thermo2_0061-300x225.png 300w" sizes="(max-width: 480px) 100vw, 480px" />   

And this is rather OK. I like it. The cats come out nice. For the record: the curves used are approximately this: <figure class="wp-block-image size-large">

<img  width="701" height="370" src="/wp-content/uploads/2013/11/bw_to_thermo1.jpg" alt="" class="wp-image-1346" srcset="https://blog.forret.com/wp-content/uploads/2013/11/bw_to_thermo1.jpg 701w, https://blog.forret.com/wp-content/uploads/2013/11/bw_to_thermo1-300x158.jpg 300w" sizes="(max-width: 701px) 100vw, 701px" />   

<pre class="wp-block-preformatted">ffmpeg -i [input file] -vf "curves=r='0.4/0 0.6/1':g='.25/1 .75/.5 .9/0 1/1':b='0/1 .25/0 .75/0 1/1'" -y [output file]</pre>

All scripts and parameters are on my GitHub account: [github.com/pforret/pfor_ffmpeg/tree/master/thermography](https://github.com/pforret/pfor_ffmpeg/tree/master/thermography)
---
id: 2179
title: Making the Pixel Movie Quiz
date: 2020-05-07T23:48:35+02:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2179
permalink: /2020/05/07/making-the-pixel-movie-quiz/
image: /wp-content/uploads/2020/05/AmeliePo.0547.5-M20G16.jpg
categories:
  - audio-video
tags:
  - bash
  - cli
  - image
  - imagemagick
  - instagram
  - pixels
  - quiz
  - vision
---
[**Imagemagick**](https://imagemagick.org/) is a command-line tool to create and modify image files. It is an essential program if you want to work with media files (just like [ffmpeg](https://www.ffmpeg.org/) and [sox](http://sox.sourceforge.net/)). I have used it very [often](https://blog.forret.com/2013/11/11/blackwhite-video-thermography/) in my career and I still discover new applications. This blog post is about one of these experiments. How few pixels does one need to recognise a familiar/known image, in this case a movie poster? I created the [**Pixel Movie Quiz**](https://www.instagram.com/squaredforwork/).

## Pixelized movie posters

<div class="wp-block-image">
  <figure class="aligncenter size-thumbnail"><img  width="150" height="150" src="/wp-content/uploads/2020/05/AmeliePo.0547.3-M20G16-150x150.jpg" alt="3x3"  /> Guess the movie? (3 x 3 pixels) </figure> 
</div>

This is a 3&#215;3 pixel version of a movie poster. Can you guess which movie? A lot of my friends could guess this one, from just 9 pixels! Do you need some more?

<div class="wp-block-image">
  <figure class="aligncenter size-thumbnail"><img  width="150" height="150" src="/wp-content/uploads/2020/05/AmeliePo.0547.5-M20G16-150x150.jpg" alt="5x5"  /> Guess the movie (5 x 5 pixels)  </figure>
</div>

Still no? Try stepping back from your screen, and squinting your eyes. Ok, I'll give you 9 x 9 pixels, and if you still don't recognise the poster, you probably don't know the movie.

<div class="wp-block-image">
  <figure class="aligncenter size-thumbnail"><img width="150" height="150" src="/wp-content/uploads/2020/05/AmeliePo.0547.9-M15G16-150x150.jpg" alt="" /> Guess the movie (9 x 9 pixels)  </figure>
</div>

Yes! That beautiful saturated red and green, that is indeed the French classic _Le Fabuleux Destin D'Amélie Poulain_ or in short [**Amélie**](https://www.imdb.com/title/tt0211915/) (2001).

<div class="wp-block-image">
  <figure class="aligncenter size-medium"><img width="300" height="300" src="https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.160-M2G16-300x300.jpg" alt="" /> Amélie (2001) - 160 x 160 pixels  </figure>
</div>

Isn't it amazing that your brain can sometimes get enough out of 9 (3 x 3) pixels to recognise an image? It actually works a bit counterintuitive: if you want a better view, you don't zoom in, but you have to zoom out. Let's try some more, but keep your phone at arm's length (if you're on mobile) or move 4 steps away from your laptop screen.

<img  width="150" height="150" src="https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.9-M15G16-150x150.jpg" alt=""  />  
<img  width="150" height="150" src="https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.5-M20G16-150x150.jpg" alt="" /> 
<img  width="150" height="150" src="/wp-content/uploads/2020/05/Alladin.4244.9-M15G16.jpg" alt="" /> 
<img width="150" height="150" src="/wp-content/uploads/2020/05/Amercian.530b.9-M15G16.jpg" alt="" /> 


Or if that's too hard:

<img  width="150" height="150" src="/wp-content/uploads/2020/05/themarti.c8d9.15-M15G16-1-150x150.jpg" alt="" /> 
<img  width="150" height="150" src="/wp-content/uploads/2020/05/fightclu.06bb.15-M15G16.jpg" alt="" /> 
<img  width="150" height="150" src="/wp-content/uploads/2020/05/Alladin.4244.15-M15G16.jpg" alt=""  /> 
<img  width="150" height="150" src="/wp-content/uploads/2020/05/Amercian.530b.15-M15G16.jpg" alt="" /> 

Answers: The Martian, Fight Club, Aladdin, American Beauty.

Because I enjoyed it so much to see how few pixels were enough, I automated the process, and used that to create an Instagram Pixel Movie Quiz!

## My script

As I said in the beginning of this post, my main tool was ImageMagick. I use it to reduce the number of pixels, then resize it back to a bigger picture, add some smoothing and some grain. I used my [bash boilerplate generator](https://github.com/pforret/bashew) to create a wrapper script that works like this:
```
### Program: sfw_generate.sh by peter@forret.com
### Version: v1.1 - May  4 18:18:03 2020
### Usage: sfw_generate.sh [-v] [-b] [-n] [-o  <out>] [-t  <tmp>] 
           [-c <color>] [-g <grain>] [-l <large>] [-m <median>] 
           [-p <pix>] [-w <width>] [-s <sub>] [-f <font>] [-d <dur>] 
           [-r <rate>] [-e <step>]  
           <action>  <file> [ <...>]
### Flags, options and parameters:
    -v|--verbose   : [flag] more output [default: off]
    -b|--bw        : [flag] convert to B/W [default: off]
    -n|--norm      : [flag] normalize brightness [default: off]
    -o|--out <val> : [optn] folder for output  [default: -]
    -t|--tmp <val> : [optn] folder for temp items  [default: .tmp]
    -c|--color <val>: [optn] reduce colors  [default: -1]
    -g|--grain <val>: [optn] add film grain  [default: 5]
    -l|--large <val>: [optn] large size in px  [default: 1000]
    -m|--median <val>: [optn] median filter in pixels [default: auto]
    -p|--pix <val>: [optn] min resolution in px  [default: 80]
    -w|--width <val>: [optn] frame border width in px  [default: 0]
    -s|--sub <val>: [optn] subtitle
    -f|--font <val>: [optn] font to use  [default: GeoRegular.ttf]
    -d|--dur <val>: [optn] duration (for video)  [default: 2]
    -r|--rate <val>: [optn] framerate for video  [default: 8]
    -e|--step <val>: [optn] increment per frame  [default: 2]
    <action> : [parameter] action to perform: image/video
    <file>   : [parameter] file(s) to perform on (1 or more)</pre>
```
I then made a second bash script (a "wrapper for the wrapper") that makes all the right sizes for one given poster image: 5 x 5 pixels, 9 x 9 pixels, etc. 

## My workflow

  * look for (semi-) famous movie posters
  * create all the reduced pixel versions with the script I mentioned above
  * choose 2 photos to use as &#8216;1st hint' and &#8216;2nd hint' (most of the times it's 5&#215;5 and then 9&#215;9, but for really difficult ones I might start with 9&#215;9 and use a 15&#215;15 afterwards)
  * put these 2 photos and a high resolution picture (150&#215;150 pix) in a [Buffer](https://buffer.com/) queue.
  * the 3 images are published at 11am, 11:30am, 12:30pm and then another batch at 5pm, 5:30pm, 6:30pm (so I need 2 movie posters per day)
  * the pictures are published on [instagram.com/squaredforwork/](https://www.instagram.com/squaredforwork/)
  * they are automatically reposted (a bit later) on [facebook.com/squaredforwork/](https://www.facebook.com/squaredforwork/) via [ifttt](https://ifttt.com).

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img width="576" height="1024" src="https://blog.forret.com/wp-content/uploads/2020/05/IMG_6018-576x1024.png"  /> The Instagram Pixel Movie Quiz  </figure>
</div>
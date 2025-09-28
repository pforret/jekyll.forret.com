---
title: "Idea: A spectrogram for videos"
layout: post
image: /wp-content/uploads/2025/09/unsplash.spectrogram.jpg
permalink: /2025/2025-09-27/a-spectrogram-for-videos/
date: 2025-09-27
categories:
    - idea
tags:
    - video
    - ai
    - agentic
---
I was driving home after work and I had a vague idea: 
what if I could represent a video with an image where the X axis was 'time' and the Y-axis was _something that represented the images_ (it was this vague in my mind: "something with the colors")  in that video?
Three hours of work later, spread out over the same evening, I got it working, assisted by A.I. every step of the way.

![](/wp-content/uploads/2025/09/unsplash.spectrogram.jpg)
<!-- more -->

The idea hit me behind the steering wheel, so I started a voice conversation with Google Gemini on my phone.
Together we defined how the 'something with the colors' would work. I would convert all pixels colors from RGB to HSL (Hue Saturation Luminance),
divide that 3-D color space into A/B/C segments on each axis, and thus create AxBxC 'color buckets'.
I would then create a histogram for each of these buckets, take the N most populated ones and use those to draw the vertical pixel lines.
Just show the popular colors. If most of the image(s) was blue, show that blue.

When I got home, I asked Gemini to create a prompt for me, that defined the program to be developed.
I just used that prompt to give to Gemini CLI, because I wanted to use Golang (fast and multiplatform). 
Gemini wrote the initial version and fixed the first few obvious error messages.
I then tweaked the results somewhat and tested some edge cases (what if the width of the output image is more than the number of frames in the input video?).
An hour later, it worked as expected, albeit slow. I left for my evening class, and came back with an urge to finish the program.
A prompt almost as basic as "make it run faster" introduced Golang multi-threading and sped up the program 5x to 10x.

![](https://github.com/pforret/colorduce/raw/main/amelie.png)

The resulting code is here: [github.com/pforret/colorduce](https://github.com/pforret/colorduce)
```
$ colorduce -i "amelie.mp4" -o "amelie-12-10-10-75.png" -h 1080 -w 1920 -c 12 -s 10 -l 10 -b 75

Processing: amelie.mp4 -> amelie-12-10-10-75.png
Input file      : examples/amelie.mp4
Input size      : 33.74 MB
Input Resolution: 1920x816
Input Duration  : 116.41 s
Input Bitrate   : 2243 kbps
Parallel workers: 10
100%
Execution time: 20.94 s
Speed index: 5.56x
```

I developed a working program in Golang, with parallel processing, in 1/3 day. 
I am not at all proficient in Golang. 
Don't tell me coding agents are inferior to junior programmers.
---
id: 2409
title: Running a CPU benchmark on Apple Silicon M1 (bash)
date: 2021-01-14T00:02:17+01:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2409
permalink: /2021/01/14/cpu-benchmark-apple-silicon-m1/
image: /wp-content/uploads/2021/01/david-marcu-o0RZkkL072U-unsplash-scaled.jpg
categories:
  - Apple
tags:
  - Apple
  - benchmark
  - cpu
  - ffmpeg
  - m1
  - primitive
  - silicon
  - speed
---
When I started working with my Mac Mini M1, I felt it was faster, but I couldn&#8217;t really compare with a proper benchmark. I work a lot with video so I created an Apple (M1 and older) benchmark that is focused on CPU-heavy video programs: `ffmpeg` and `primitive`.

## Benchmark 1: ffmpeg

For my first benchmark, I take a large photo from Unsplash ([Landscape by David Marcu](https://unsplash.com/photos/o0RZkkL072U), 4288&#215;2848) and prepare a low-res, B/W version of it, and then use `ffmpeg` to create a cross-fade MP4 from the low res to the hi-res photo, a 5 seconds movie at 10 fps. That is 50 frames of 12 megapixels. This takes a Mac Mini M1 about 75 seconds.<figure class="wp-block-image size-large">

[<img  width="600" height="400" src="https://blog.forret.com/wp-content/uploads/2021/01/xfade.gif" alt="" class="wp-image-2411" />](https://blog.forret.com/wp-content/uploads/2021/01/xfade.gif)<figcaption>low-res GIF of the actual MP4 that is rendered through ffmpeg</figcaption>  

## Benchmark 2: primitive

[fogleman/primitive](https://github.com/fogleman/primitive/) is a cool Go package that reduces a picture to N primitive shapes. I use it often (e.g. [instagram](https://www.instagram.com/squaredforwork/)[.com/squaredforwork](https://www.instagram.com/squaredforwork)) because I like to experiment with how much information your brain needs to recognize familiar images. It also is very CPU intensive, certainly when you create a GIF movie where a shape is added every frame. It takes the Mac Mini M1 almost 100 seconds to generate the GIF sequence.<figure class="wp-block-image size-large">

[<img  width="600" height="400" src="https://blog.forret.com/wp-content/uploads/2021/01/primlow.gif" alt="" class="wp-image-2412" />](https://blog.forret.com/wp-content/uploads/2021/01/primlow.gif)<figcaption>low-res GIF of the actual sequence that is rendered through primitive</figcaption>  

## Running the benchmarks

I created a bash script [**github.com/pforret/m1_benchmark**](https://github.com/pforret/m1_benchmark) (with [bashew](https://github.com/pforret/bashew), of course) that runs these two benchmarks, and calculates an index %, compared to my computer (the 2020 Mac Mini M1 8GB). It saves the results as a .md Markdown file in the `results` folder. Anyone who wants, can test their Apple (or Linux) machine by `git clone`-ing the repo and running the script. They can even do better: fork the repo, run the script, commit and push the results of their own machine and then issue a **pull request**, so I can add their results to the main repository.

<pre  ><code>macOS 11.1 i386
    Hardware details: Macmini9,1 - 8 CPUs - 8 GiB RAM - Apple M1 GPU
    CPU details : Apple M1
    OS Details : macOS 11.1
    OS Install date : 2020-11-15
    all indexes : Apple Mac Mini M1 2020 8GB = 100%

BENCHMARK XFADE
    Max CPU: 579.4
    benchmark finished after: 72 secs
    performance index: 104.17 %

BENCHMARK PRIMITIVE
    Max CPU: 684.8
    benchmark finished after: 98 secs
    performance index: 96.94 %

    Combined performance index: 100 %</code></pre>

Some explanation: the Max CPU is the maximum CPU load the ffmpeg or primitive process takes. This is running on a 8-core M1, so you could expect the top value to be 800. However, the M1&#8217;s cores are not all equal. There are 4 performance cores and 4 efficiency cores, and I have a feeling the latter can not give the same 100% as the former. So it could be that the 685 CPU load in the last benchmark is very close to the theoretical maximum for an M1.

PS: the performance of both benchmarks varies a bit every time you run it. With the M1 computer I always end up close to 100%, but rarely exactly at 100%.

## Comparison: MacBook Pro 13&#8243; Retina (2013)

When I bought my old MBP laptop in 2013, it was an impressive machine, with an impressive price. I&#8217;ve used it mainly for photography and software development. It has become more and more buggy the last year (CPU overheating, screen flickering, &#8230;). And it feels slow, certainly compared to the M1.

<pre  ><code># macOS 11.1 i386
    * Hardware details: MacBookPro11,1 - 4 CPUs - 16 GiB RAM - Intel Iris GPU
    * CPU details : Intel(R) Core(TM) i7-4558U CPU @ 2.80GHz

## BENCHMARK XFADE
    * Max CPU: 256.4
    * benchmark finished after: 189 secs
    * performance index: &lt;strong>39.68 %&lt;/strong>

## BENCHMARK PRIMITIVE
    * Max CPU: 256.9
    * benchmark finished after: 465 secs
    * performance index: &lt;strong>20.43 %&lt;/strong>

    * Combined performance index: &lt;strong>28 %&lt;/strong></code></pre>

So, for these kind of CPU-intensive tasks, the M1 is sometimes **up to 5x faster** than my old MacBook Pro (100% vs 20%). 

PS: This MacBook Pro claims 4 cores, but it&#8217;s actual 4 _virtual cores_ on a 2 _physical cores_ CPU. This is why the Max CPU is not a full 400 but rather close to 260.

## Comparison: Dell XPS 15 i7 &#8211; Win10 WSL (2017)

The other machine I have handy is my work laptop. I was always rather happy with its performance. I am using Ubuntu 16 via WSL1 (Windows Subsystem for Linux).

<pre  ><code># Ubuntu 16.04 x86_64
* Hardware details: 8 CPUs - 16 GiB RAM - Nvidia GeForce GTX1050 GPU
* CPU details     : Intel(R)Core(TM)i7-7700HQCPU@2.80GHz
 
## BENCHMARK XFADE
* Max CPU: 800.0
* benchmark finished after: 97 secs
* performance index: 77.32 %
 
## BENCHMARK PRIMITIVE
* Max CPU: 800.0
* benchmark finished after: 198 secs
* performance index: 47.98 %
 
* Combined performance index: &lt;strong>60 %&lt;/strong></code></pre>

Here the results are much better. The `ffmpeg` benchmark runs at 70% of the Apple M1 and the `primitive` benchmark at +- 50%. Here you see that all 8 cores are fully used by both benchmarks with a Max CPU of 800. Also, the cooling fans start blowing on max speed very quickly after the benchmark starts.

## Join in!

If you have an old or recent Mac computer, please join in and send me [pull requests on Github](https://github.com/pforret/m1_benchmark/pulls) with your results! Also, if you have suggestions for more (CLI-based) benchmarks, let me know.
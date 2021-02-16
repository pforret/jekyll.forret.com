---
id: 2396
title: Using Homebrew on Apple Silicon M1 natively (bash)
date: 2020-12-19T01:45:30+01:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2396
permalink: /2020/12/19/using-homebrew-on-apple-silicon-m1-natively/
image: /wp-content/uploads/2020/12/2020_macmini.jpg
categories:
  - Apple
tags:
  - Apple
  - arm
  - homebrew
  - m1
  - mac
  - macos
  - silicon
---
After reading all the raving reviews online about the new Apple M1-based Mac computers, and after losing too much time with my overheating MacBook Pro 2013 that&#8217;s on its last legs, I caved and bought a Mac Mini M1. <figure class="wp-block-image size-large">

[<img  width="1000" height="500" src="https://blog.forret.com/wp-content/uploads/2020/12/2020_macmini.jpg" alt="" class="wp-image-2397" srcset="https://blog.forret.com/wp-content/uploads/2020/12/2020_macmini.jpg 1000w, https://blog.forret.com/wp-content/uploads/2020/12/2020_macmini-300x150.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/12/2020_macmini-768x384.jpg 768w" sizes="(max-width: 1000px) 100vw, 1000px" />](https://blog.forret.com/wp-content/uploads/2020/12/2020_macmini.jpg) Apple MAC MINI 2020</figcaption>  

## &#x2611;&#xfe0f; Apple 30&#8243; Cinema display (2013)

I made the mistake of thinking that any USB hub with a Mini Displayport connector would work with my Cinema display. But apparently, not all such ports are also Thunderbolt 2, as I found out with my Satechi hub.. Fortunately, Apple sells a 55 euro Thunderbolt 3 (with USB-C connector) to Thunderbolt 2 (with mini Displayport connector), and it works perfectly. This already takes 1 of the 2 USB-C ports on the Mac Mini.<figure class="wp-block-image">

![Adapter voor Thunderbolt 3 (USB‑C) naar Thunderbolt 2 - Apple (BE)](https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MMEL2?wid=1144&hei=1144&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1590526638000)   

## &#x2611;&#xfe0f; Homebrew in native mode

I do a lot of [bash/script development](https://github.com/pforret?tab=repositories&q=&type=&language=shell) so my first concern was getting all of my bash scripts working on the new ARM architecture. I concentrated on bash/terminal in **native arm64 mode**, which means not running under Rosetta2. This because I want to benchmark in native mode, and I kind of assume that under Rosetta 2 everything works that worked under MacOS for Intel, and where&#8217;s the fun in that? 

For that, I needed to get the [Homebrew package manager](https://brew.sh/) running in native mode. The thing is, Homebrew does not yet support the new Apple Silicon M1 chip ([they only started the first steps in Dec 2020](https://brew.sh/2020/12/01/homebrew-2.6.0/)), so you have to dodge all the warnings they throw at you. After [some](https://medium.com/better-programming/5-things-i-have-learned-when-using-the-m1-chip-macbook-air-a77f93c50381) [research](https://github.com/mikelxc/Workarounds-for-ARM-mac), I found the best way to do it, and I combined all of it in an easy install/uninstall bash script:** <https://github.com/pforret/m1_homebrew>** It installs the command-line tools and Homebrew to `/opt/homebrew` for arm64 mode, and to `/usr/local` for standard i386 mode.

Running it is as easy as:

<pre  ><code>$ &lt;strong>.&lt;/strong>/m1_homebrew install
Program: m1_homebrew.sh 1.3.0
&#x2714;  MacOS version = 11.1
&#x2714;  Script running in arm64 mode
Are you sure you want to install Homebrew for arm64 to /opt/homebrew? &#91;y/N] Y 
…  Create folder for &#91;/opt/homebrew] Homebrew ...
…  Download Homebrew into &#91;/Users/pforret/.homebrew] ...
&#x2714;  After download: Homebrew folder is 15 MB
&#x2714;  After update  : Homebrew folder is 64 MB                                      
&#x2714;  After install : Homebrew folder is 463 MB                                           
…  Move Homebrew files to /opt/homebrew
Create folder share/zshet/.homebrew/SECURITY.md ...                                                   
Create folder share/zsh/site-functions
Create folder Caskroom
&#x2714;  All files moved to /opt/homebrew                           
HOMEBREW_VERSION: 2.7.0-24-g53ef74f
Script finished after 84 seconds</code></pre>

## &#x1f91e; brew install &#8211;build-from-source

After installation, running `brew install` will give you warnings and will often not be able to install the packages, because there are no pre-built casks for Apple Silicon yet.

<pre  ><code>Warning: You are running macOS on a arm64 CPU architecture.
We do not provide support for this (yet).
Reinstall Homebrew under Rosetta 2 until we support it.
You will encounter build failures with some formulae.
Please create pull requests instead of asking for help on Homebrew's GitHub, Twitter or any other official channels. You are responsible for resolving any issues you experience while you are running this unsupported configuration.</code></pre>

Still, you can tell brew to install from source code, and compile on your machine by using `brew install --build-from-source` (or shorter: `brew install -s`). For small packages like `awk`, this will do the job. For large packages with lots of dependencies like `ffmpeg`, brew will stop for lack of _bottles_.

<pre  ><code>Error: &#91;some package]: no bottle available!
You can try to install from source with e.g.
brew install --build-from-source &#91;some package]</code></pre>

## &#x2611;&#xfe0f; native imagemagick

My first big package to install was `imagemagick`. It&#8217;s my go-to tool for image manipulation and part of many of my scripts like e.g. [splashmark](https://blog.forret.com/2020/10/07/new-script-splashmark-easy-unsplash-image-markup-on-the-command-line/). Imagemagick has lots of brew dependencies for treating different kinds of files, like _libpng_, _openjpeg_, _webp_ and _ghostscript_. Every time brew requires a package that isn&#8217;t installed yet, it stops with the error mentioned above. You then have to build that package separately and try the original `brew install` again. This is how I got imagemagick compiled in the end.

## &#x2611;&#xfe0f; m1_homebrew recursive

I automated this process in the same script **m1_homebrew.sh**. `m1_homebrew recursive imagemagick` first looks for all the dependent packages (via `brew info`), installs those first one by one and then, at the end, installs the main package. It can take a long time but it&#8217;s magic when it works.

## &#x1f625; no native ffmpeg

Unfortunately, it doesn&#8217;t always work. I tried it for `ffmpeg`, but this package requires some dependencies that will not build on MacOS M1 for now. Concretely: `rust` and `openjdk` cannot be built yet, and ffmpeg requires them.

  * **rust**: hangs on &#8220;`arch -x86_64 make`&#8221; which implies that it&#8217;s building a x86_64 (Intel) version instead of a arm64 native version,
  * **openjdk**: &#8220;_configure: The tested number of bits in the target (64) differs from the number of bits expected to be found in the target (32)_&#8220;

They are both still marked as &#x26a0;&#xfe0f; on the official [Homebrew M1 compatibility list](https://github.com/Homebrew/brew/issues/7857).
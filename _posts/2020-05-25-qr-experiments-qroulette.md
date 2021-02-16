---
id: 2209
title: 'QR Experiments: QRoulette'
date: 2020-05-25T22:20:07+02:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2209
permalink: /2020/05/25/qr-experiments-qroulette/
image: /wp-content/uploads/2020/05/qrtest2.jpeg
categories:
  - technology
tags:
  - BaconQrCode
  - experiment
  - idea
  - imagemagick
  - imagick
  - innovation
  - qr
  - qrcode
---
I started to do some QR code experiments recently and this is the first result of this: my animated QR code, &#8216;**QR Roulette**&#8216; or **_QRoulette_**.

First the basics: a [QR code](https://en.wikipedia.org/wiki/QR_code) is a 2-dimensional barcode format. It&#8217;s a way to encode data (like a URL, a business card or just any text) into something that can be printed or shown on a screen, so that a QR code reader (your smartphone&#8217;s camera is probably one) can read the code and get the data out of it. It is _visual wireless data transfer_. The more data, the bigger the QR code becomes.<figure class="wp-block-gallery columns-2 is-cropped">

<ul class="blocks-gallery-grid">
  <li class="blocks-gallery-item">
    <figure><img loading="lazy" width="580" height="580" src="https://blog.forret.com/wp-content/uploads/2020/05/hello.png" alt="" data-id="2215" data-link="https://blog.forret.com/?attachment_id=2215" class="wp-image-2215" srcset="https://blog.forret.com/wp-content/uploads/2020/05/hello.png 580w, https://blog.forret.com/wp-content/uploads/2020/05/hello-300x300.png 300w, https://blog.forret.com/wp-content/uploads/2020/05/hello-150x150.png 150w, https://blog.forret.com/wp-content/uploads/2020/05/hello-50x50.png 50w" sizes="(max-width: 580px) 100vw, 580px" /><figcaption class="blocks-gallery-item__caption">&#8220;Hello&#8221;</figcaption></figure>
  </li>
  <li class="blocks-gallery-item">
    <figure><img loading="lazy" width="1620" height="1620" src="https://i0.wp.com/blog.forret.com/wp-content/uploads/2020/05/long.png?fit=688%2C688&ssl=1" alt="" data-id="2216" data-full-url="https://i0.wp.com/blog.forret.com/wp-content/uploads/2020/05/long.png?fit=1620%2C1620&ssl=1" data-link="https://blog.forret.com/?attachment_id=2216" class="wp-image-2216" srcset="https://blog.forret.com/wp-content/uploads/2020/05/long.png 1620w, https://blog.forret.com/wp-content/uploads/2020/05/long-300x300.png 300w, https://blog.forret.com/wp-content/uploads/2020/05/long-1024x1024.png 1024w, https://blog.forret.com/wp-content/uploads/2020/05/long-150x150.png 150w, https://blog.forret.com/wp-content/uploads/2020/05/long-768x768.png 768w, https://blog.forret.com/wp-content/uploads/2020/05/long-1536x1536.png 1536w, https://blog.forret.com/wp-content/uploads/2020/05/long-1600x1600.png 1600w, https://blog.forret.com/wp-content/uploads/2020/05/long-50x50.png 50w" sizes="(max-width: 1620px) 100vw, 1620px" /><figcaption class="blocks-gallery-item__caption">a long text</figcaption></figure>
  </li>
</ul></figure> 

What I have developed is: an animated series of different QR-encoded URLs, changing slow enough that a simple QR reader (like your smartphone camera) will recognise them most of the time but fast enough that you can&#8217;t really be sure which one you&#8217;re going to get when you click the URL. Hence: **QR Roulette**!<figure class="wp-block-image size-large">

<img loading="lazy" width="800" height="800" src="https://blog.forret.com/wp-content/uploads/2020/05/YT.f14a54.animated.gif" alt="" class="wp-image-2212" /> <figcaption>QR Roulette &#8211; all Youtube videos!</figcaption></figure> 

In the above example, all the URLs are Youtube URLs. An iPhone needs up to a second to &#8216;find&#8217; a QR code and the different codes are changing at 2x/second, So there is no telling which one you will get.

<div class="wp-block-image">
  <figure class="aligncenter size-medium"><img loading="lazy" width="259" height="300" src="https://blog.forret.com/wp-content/uploads/2020/05/IMG_6126-259x300.jpg" alt="" class="wp-image-2214" srcset="https://blog.forret.com/wp-content/uploads/2020/05/IMG_6126-259x300.jpg 259w, https://blog.forret.com/wp-content/uploads/2020/05/IMG_6126-883x1024.jpg 883w, https://blog.forret.com/wp-content/uploads/2020/05/IMG_6126-768x890.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/IMG_6126.jpg 1125w" sizes="(max-width: 259px) 100vw, 259px" /><figcaption>A QR code being recognized</figcaption></figure>
</div>

### Toolchain

  * I did my first QR code experiments in bash, with [`qrencode`](https://linux.die.net/man/1/qrencode) and [imagemagick](https://imagemagick.org/)
  * I have now created a web service in [Laravel](https://laravel.com/), using [BaconQRCode](https://github.com/Bacon/BaconQrCode) for making the QR codes and my own wrapper around ImageMagick&#8217;s command-line `convert`, because the popular packages like [Intervention/image](https://github.com/Intervention/image) don&#8217;t support all the effects I needed (transparency, masking, animated gif etc).

### Other animated QR codes

I am obviously not the first person who thinks of animating QR codes. There are already other kinds of animated QR codes: 

  * there is [QR4 with their animation inside a static QR](https://blog.qr4.nl/Animated-QR-Code.aspx)  
<img loading="lazy" width="187" height="205" class="wp-image-2210" style="width: 200px;" src="https://blog.forret.com/wp-content/uploads/2020/05/QR_CODE_ANIMATED_Radar.gif" alt="" /> 
  * and there is [TXQR](https://github.com/divan/txqr) with streaming data transfer via animated QR  
<img loading="lazy" width="400" height="225" class="wp-image-2211" style="width: 300px;" src="https://blog.forret.com/wp-content/uploads/2020/05/txqr.gif" alt="" />
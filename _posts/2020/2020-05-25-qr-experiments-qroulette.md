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
  - idea
tags:
  - BaconQrCode
  - experiment
  - idea
  - imagemagick
  - qr
  - qrcode
---
I started to do some QR code (two-dimensional matrix barcode) experiments recently and this is the first result: I developed an animated QR code, &#8216;**QR Roulette**&#8216; or **_QRoulette_**.

First the basics: a [QR code](https://en.wikipedia.org/wiki/QR_code) is a 2-dimensional barcode format. It's a way to encode data (like a URL, a business card or just any text) into something that can be printed or shown on a screen, so that a QR code reader (your smartphone's camera is probably one) can read the code and get the data out of it. It is _visual wireless data transfer_. The more data, the bigger the QR code becomes.<figure class="wp-block-gallery columns-2 is-cropped">

{% include image.html url="https://blog.forret.com/wp-content/uploads/2020/05/hello.png" description="'Hello' in QR code" %}

{% include image.html url="https://blog.forret.com/wp-content/uploads/2020/05/long.png" description="a long text in QR code" %}

What I have developed is: 
an animated series of different QR-encoded URLs, 
changing slow enough that a simple QR reader (like your smartphone camera) will recognise them most of the time 
but fast enough that you can't really be sure which one you're going to get when you click the URL. 
Hence: **QR Roulette**

{% include image.html 
    url="https://blog.forret.com/wp-content/uploads/2020/05/YT.f14a54.animated.gif" 
    description="QR Roulette: all Youtube videos!" %}

In the above example, all the URLs are Youtube URLs. 
An iPhone needs up to a second to 'find' a QR code, and the different codes are changing at 2x/second, 
so there is no telling which one you will get.

![](https://blog.forret.com/wp-content/uploads/2020/05/IMG_6126-259x300.jpg)
A QR code being recognized  

### Toolchain

  * I did my first QR code experiments in bash, with [`qrencode`](https://linux.die.net/man/1/qrencode) and [imagemagick](https://imagemagick.org/)
  * I have now created a web service in [Laravel](https://laravel.com/), using [BaconQRCode](https://github.com/Bacon/BaconQrCode) for making the QR codes and my own wrapper around ImageMagick's command-line `convert`, because the popular packages like [Intervention/image](https://github.com/Intervention/image) don't support all the effects I needed (transparency, masking, animated gif etc).

### Other animated QR codes

I am obviously not the first person who thinks of animating QR codes. There are already other kinds of animated QR codes: 

  * there is [QR4 with their animation inside a static QR](https://blog.qr4.nl/Animated-QR-Code.aspx)  
<img  width="187" height="205" class="wp-image-2210" style="width: 200px;" src="https://blog.forret.com/wp-content/uploads/2020/05/QR_CODE_ANIMATED_Radar.gif" alt="" /> 
  * there is [TXQR](https://github.com/divan/txqr) with streaming data transfer via animated QR  
<img  width="400" height="225" class="wp-image-2211" style="width: 300px;" src="https://blog.forret.com/wp-content/uploads/2020/05/txqr.gif" alt="" />
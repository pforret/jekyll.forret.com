---
id: 325
title: Converting a color picture to a stencil
date: 2006-05-10T13:52:10+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/05/converting-a-color-picture-to-a-stencil/
permalink: /2006/05/10/converting-a-color-picture-to-a-stencil/
categories:
  - photography
---
Just strolled onto this post: &#8220;[Converting a colour photo to a single layered stencil with Photoshop](http://www.stencilrevolution.com/tutorials/tutorialsview.php?id=4)&#8221; (via [furl.net](http://furl.net/)) and I thought: you don&#8217;t need no friggin&#8217; Photoshop to do that! Let me show you how it&#8217;s done with (free) [Irfanview (Windows)](http://www.irfanview.com/):

**START**  
We start with the same picture as the Photoshop procedure above (actually I blew it up to 4x the size, double width, double height):  
![Start](http://www.pixagogo.com/S5RthDLLFW!2YZIrk9!EdhYE8CE6vNp!IcGzaSOCuNYhxBFygzhhCk-tErWo8c0rxQT8i0Mmt3pHEacmnvwQlJ1VxagJCMSlaidx9z3vFH-JXyb!W6zokqDw__/capture_10052006_115541.jpg) 

**STEP 1: convert to grey**  
Use `ImageConvert to Greyscale`:<!--more-->

  
![Greyscale](http://www.pixagogo.com/S5RthDLLFW!2aWZh40Vo4dnUJ43fK1muTlwoMYRoEphrAvzF4j3Zkrp70spvZF05I2cAmClSRJf4d-gMmXTIxVRSLFdGRKW06kH82YeBpH1CFyTQAcnsKRzg__/capture_10052006_115551.jpg) 

**STEP 2: adjust contrast**  
Use `ImageEnhance Colors...` and set `Contrast` to 100. Then set Gamma to a &#8216;suitable&#8217; value (e.g. so that background is all very dark or all very light, so that shadows in the face are dark enough to show up in the next step). I used .19 as Gamma:  
![Enhanced contrast](http://www.pixagogo.com/S5Lkle!-c2qPAvKG8sMEf7mWnEuupz4TuX5yfo!5FbhAokQL-ERSB1qZFLT2f1je3c7iyPtdWkuowjDF0NwIGEYQJ8IQF!wv8bmWMB2sAx0SAAyzhU6SS9Mw__/capture_10052006_115648b.jpg) 

**STEP 3: convert to pure black/white**  
Use `ImageDecrease Color Depth...` to convert to 2 colors. You have an option to use [Floyd-Steinberg dithering](http://www.visgraf.impa.br/Courses/ip00/proj/Dithering1/floyd_steinberg_dithering.html), this will simulate levels of grey by using a mix of black and white pixels.  
The result with dithering:  
![with dithering](http://www.pixagogo.com/S5Lkle!-c2qPAT6KqAFVOAxIpmKPwGx9kZBshI2P0aFFq5qHhW2A2lgQK0TJERGc1cRWglM4XAW352CbxXvpFYwbJfXxhyy5rzafloe59z0paRRLOd70I18w__/capture_10052006_115711b.jpg)  
The result without dithering:  
![without dithering](http://www.pixagogo.com/S5RthDLLFW!2YYL-!gLNSH-J1tPOdCjAi5obDYx2-WVXgdE-7Gb2y-Enjodsabq4Sbd6KOE7J7Pc1CXCnGzXCOUY4Xc9wRquqAQGCQqLviMIcw5l-W4Oyy9Q__/capture_10052006_115711.jpg) 

Which is quite similar to the result of the above Photoshop tutorial from [stencilrevolution](http://www.stencilrevolution.com/tutorials/tutorialsview.php?id=4):  
![Photoshop stencil](http://www.stencilrevolution.com/images/tutorial_28_02_03_image_8.jpg) .  
The only tricky part is the application of contrast/gamma: that takes some practice to get right. There it is: using a $0 software to do something you can also do with a [$650 software](http://www.adobe.com/products/photoshop/).

See detailed photo album here: <http://www.pixagogo.com/0088695347>
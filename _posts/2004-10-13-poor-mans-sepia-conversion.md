---
id: 68
title: 'Poor-man&#8217;s sepia conversion'
date: 2004-10-13T19:49:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/10/13/poor-mans-sepia-conversion/
permalink: /2004/10/13/poor-mans-sepia-conversion/
categories:
  - color
  - photography
  - webdev
---
<img style="float: right" src="http://www.forret.com/projects/bxlcinema/lucia2.jpg" />  
Working for [Pixagogo](http://www.pixagogo.com) makes digital imagery my daily bread, and I fool around with images every now and then. I am, however, not a user of PhotoShop. I&#8217;ve never worked with it, I don&#8217;t own the software, nada. Keep that in mind while you continue reading this.

Recently, for my cousin&#8217;s [filmfilostoverij blog](http://filmfilostoverij.blogspot.com), I converted some film snapshots into small thumbnails like the one on the right (from _&#8220;Lucia y el sexo&#8221;_). The program I use for conversion is [IrfanView](http://www.irfanview.com/). Not the best program, not the most complete, but easy, stable and free. For the stuff I need to do, I find [Gimp](http://www.gimp.org/) too complex.

What I did to the images was: 

  1. crop a square part of it 
  2. convert to grayscale 
  3. resize to 400&#215;400 px 
  4. perform a median filter (value: 9) 
  5. resize to 100&#215;100 px 
  6. Save as JPG

But then I wanted to have a &#8216;[sepia](http://en.wikipedia.org/wiki/Sepia_tone)&#8216; effect. Irfanview does not have it. I wanted it. So I began my quest.

![](http://us2.pixagogo.com/S5uRuA-TyxopiAP9GHk6kjXGGcErpvjoacaY1-L0m2dGtKsDy!ewdHPT2LEHmsGZMnHyH2UZNcbm20-GKNLasQU9B4A!mifvUBag7o8MVVzO0_/irfan_enhance.jpg)  
I started with the &#8216;Enhance Colors&#8217; function and added 64 &#8216;R&#8217; and 16 &#8216;G&#8217; to the B/W image, but that didn&#8217;t look real enough. What does sepia look like, anyway? I found two definitions, expressed in CMYK coordinates, that I converted to RGB with my [CMYK-to-RGB converter hizmo](http://www.forret.com/projects/hizmo/cmyk_rgb.asp) (thanks to [Wikipedia](http://en.wikipedia.org/wiki/CMYK)):

| The color                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------- |
| 1. `definecolor{Sepia}{cmyk}{0,0.83,1,0.70}` (from [TexCeh](http://vlado.fmf.uni-lj.si/texceh/kako/colors/CRAYOLA.STY)) |
| #4D0D00 (77,13,0)                                                                                                       |
| 2. `sepia cmyk(0%, 60%, 81%, 63%)` (from [december.com](http://www.december.com/html/spec/colorcmyk.html))              |
| #5E2612 (94,38,18)                                                                                                      |
| In &#8216;[websafe](http://en.wikipedia.org/wiki/Web_colors)&#8216; colors, this would be:                              |
| #551100 (84,17,0)                                                                                                       |

So let me show you how I proceeded, using an image of my tango teachers, [Marisa y Oliver](http://www.marisayoliver.com/):

<table>
  <dl>
    <dt>
      <img style="width: 250" src="http://us2.pixagogo.com/Tools/Thumbnails.aspx?thumb=S54SWlI2-xTK5xHqXakej90y!vsWPJ3n4mVm5vlx7cIERGdk23rul3yA5mnIDcD3O3nNUHdyDyh7NEiAuWAIfn!OPEZ6ytvPZD" alt="original image" border="0" />
    </dt>
    
    <dd>
      Original
    </dd>
    
    <dt>
      <img src="http://us2.pixagogo.com/Tools/Thumbnails.aspx?thumb=S5LoKbCTNiCnh-FgP5lNhm4KW!uIsiOC0EGCCig0WTEfa8hsa0JR6aJaSlaGNj81e2l2bo0ED9nuo4lnMFuchD8Dn74dkU6Fwmx7WHbAHaJDI_" border="0" />
    </dt>
    
    <dd>
      <ol>
        <li>
          Convert to greyscale
        </li>
        <li>
          Enhance colors: 94-38-18 (#5E2612)
        </li>
      </ol>
      
      <p>
        => way too red!
      </p>
    </dd>
    
    <dt>
      <img src="http://us2.pixagogo.com/S5SDt3MKBm--VlL9cTXnn6BLeR00w-WSFeLUen7HNH4j64Vwet70HCinVuO8V-33EBPE586YDlY5h2b9PAqenCISb7QUMMmSas/enh_69_12_0.jpg" border="0" />
    </dt>
    
    <dd>
      <ol>
        <li>
          Convert to greyscale
        </li>
        <li>
          Enhance colors: 77-13-0 (#4D0D00)
        </li>
      </ol>
      
      <p>
        => color OK, but too light
      </p>
    </dd>
    
    <dt>
      <img src="http://us2.pixagogo.com/S5vAIAIeJ4at9LROX8KJ!4mMJN6ohl5N5WGMNdlX5tb6M0jSEY0odnEG8ZIszRoStUJHwSerkuMtGZHcqfmT7-AL5ikzGKZDpCpNRabDL2r43gJmZUCc5h0Q__/enh_69_12_0_contr_50.jpg" border="0" />
    </dt>
    
    <dd>
      <ol>
        <li>
          Convert to greyscale
        </li>
        <li>
          Enhance colors: 77-13-0 (#4D0D00)
        </li>
        <li>
          Add 50% contrast
        </li>
      </ol>
      
      <p>
        <b>=> looks great</b></dd> 
        
        <dt>
          <img src="http://us2.pixagogo.com/Tools/Thumbnails.aspx?thumb=S5SDt3MKBm--V7-qfi3qeG3Z!qrc6vTrdtKefM5qVa4XG37GhhkoXc-CNkMxIanICHNdDqu06m7S7SO52kzDoMSJt5!!IqvZmW" border="0" />
        </dt>
        
        <dd>
          <ol>
            Compare this with the optional QuickSepia plugin
          </ol>
          
          <p>
            => I like mine better
          </p>
        </dd></dl> 
        
        <p>
          Voila, there it is, a simple poor-mans sepia, that can even be used in &#8216;batch convert&#8217; (Irfanview).
        </p>
        
        <p>
          <a href="http://dx.sheridan.com/advisor/cmyk_color.html">Short CMYK/RGB explanation</a> and <a href="http://www.neuro.sfc.keio.ac.jp/~aly/polygon/info/color-space-faq.html">Detailed CMYK/RGB explanation</a>
        </p>
        
        <div>
          [Listening to: &#8220;The Prettiest Thing&#8221; &#8211; <b>Norah Jones</b> &#8211; Feels Like Home]
        </div></table>
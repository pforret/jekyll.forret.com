---
id: 165
title: 'Digital cinema: one step closer'
date: 2005-07-31T20:41:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/07/31/digital-cinema-one-step-closer/
permalink: /2005/07/31/digital-cinema-one-step-closer/
categories:
  - digital cinema
---
![](http://www.pixagogo.com/S5vpfnjbBPdPmdvl-2!BHJQAYWDPL8CP!3iKWF4tv!udhRBPZ9DZxjLhPkD8Dp75hTd!M5G22wHFLiEnziKSZlThqqcPEgBFXPzx0D4GJPY!vufDoPwJ1R9USCeBfx-toq2mPUB9vfVJujlM2D!UICsQ__/digital-cinema.jpg)  
Digital Cinema Initiatives, LLC (DCI) &#8211; founded in March 2002, as a joint venture of [Disney](http://disney.go.com/disneypictures/), [Fox](http://www.foxmovies.com/), [MGM](http://www.mgm.com/movies_theatrical.do), [Paramount](http://www.paramount.com/motionpictures/), [Sony Pictures Entertainment](http://www.sonypictures.com/movies/index.html), [Universal](http://www.universalpictures.com/) and [Warner Bros. Studios](http://www2.warnerbros.com/web/main/movies/movies.jsp) &#8211; just released its &#8220;FINAL OVERALL SYSTEM REQUIREMENTS AND SPECIFICATIONS FOR DIGITAL CINEMA&#8221;:

> (Hollywood, CA &#8211; July 27, 2005) Digital Cinema Initiatives, LLC (DCI) has completed the final overall system requirements and specifications to help theatrical projector and equipment manufacturers create uniform and compatible digital cinema (&#8230;)  
> (from [dcimovies.com](http://www.dcimovies.com/press/07-27-05.tt2))

The specification is available at [dcimovies.com (1MB &#8211; PDF)](http://www.dcimovies.com/DCI_Digital_Cinema_System_Spec_v1.pdf).

### OVERVIEW

These are the stages in the flowchart of digital cinema:

DSM (Digital Source Master)</p> 
:   the end-product of the &#8216;feature postproduction&#8217;. 
:   FORMAT: Defined by producer (color space and bit depth, resolution, fps, &#8230;) 
:   SECURITY: Defined by the producer</p> 
    
    DCDM (Digital Cinema Distribution Master)</p> 
    
    :   this is the version ready to play on a digital cinema projector. 
    :   CONTENT: combines video, audio and subtitle data, based on [SMPTE standards](http://www.smpte.org/smpte_store/standards/), the equivalent of an (unencrypted) DVD 
    :   FORMAT:</p> 
        
        :   RESOLUTION: [2K (2048 x 1080)](http://www.forret.com/tools/megapixel.asp?title=Digital+Cinema+2K&width=2048&height=1080), [4K (4096 x 2160 pixels)](http://www.forret.com/tools/megapixel.asp?title=Digital+Cinema+4K&width=4096&height=2160) 
        :   FRAMES PER SECOND: 24 fps or 48 fps (only possible for 2K) 
        :   COLOR DEPTH: 12bit/color = 36 bit total for RGB (68 billion colors) 
        :   IMAGE FORMAT: [MXF (Material eXchange Format)](http://www.pro-mpeg.org/publicdocs/mxf.html) 
        :   IMAGE BANDWIDTH: maximum [250 Mbps](http://www.forret.com/tools/bandwidth.asp?speed=250&unit=Mbps&title=DCI+Digital+Cinema) which is 112 GB/hour 
        :   AUDIO FORMAT: up to 16 channels of 20-bit 48 KHz or 96 KHz WAV 
        :   SUBTITLE FORMAT: PNG files or [Timed Text](http://en.wikipedia.org/wiki/MPEG-4_Part_17) 
        :   TOTAL MOVIE SIZE: between 45 and 140 GB/hour 
    
    :   SECURITY: not encrypted &#8211; should be ready to play</p> 
        
        DCP (Digital Cinema Package)</p> 
        
        :   FORMAT: compressed, split up in &#8216;reels&#8217; 
        :   SECURITY: encrypted using [128-bit AES](http://en.wikipedia.org/wiki/Advanced_Encryption_Standard)

### MASTERING

The Digital Source Master (DSM) is created in post-production and can be used to convert into a Digital Cinema Distribution Master (DCDM). The DSM can also be used to convert to a film duplication master, a home video master, and/or a master for archival purposes.

### TRANSFER

A DCDM is created from the DSM, and then prepared for shipment in a DCP. The DCP is shipped to the actual cinema venue, where the content is decrypted and decompressed into the DCDM format again, ready to be projected. Since an uncompressed movie will be something like 100GB to 500GB of data, the compressed version maybe 5 to 10 times smaller, the shipping of the remaining 10-100GB could be done with a [Blu-Ray disc](http://www.blu-ray.com/faq/#1.5), [a DLT tape](http://www.dlttape.com/DLTtape/Technology) or a simple portable hard-disk. Even an iPod might do the trick. Jim Rygiel used those for shipping draft versions of Lord Of The Rings, as he mentioned [on IT Conversations](http://www.itconversations.com/shows/detail233.html).

### PROJECTION

Most systems work with the [Texas Instruments DLP (Digital Light Processing) technology](http://dlp.com/dlp_technology/dlp_technology_overview.asp): a chip with thousands of little mirrors that can be flipped electronically at very high speeds. They enable 1024 levels of gray for each of the RGB colours, which would amount to 30-bit &#8211; or 1 billion &#8211; colours, were it not that all documentation talks about &#8216;more than 35 trillion colours&#8217;.

> 1. A digital projector based on DLP Cinema<sup>TM </sup>technology transfers the digitized image file onto three optical semiconductors known as Digital Micromirror Devices, or DMDs. Each of these chips is dedicated to one primary color-red, green, or blue. A DMD chip contains a rectangular array of over one million microscopic mirrors.  
> 2. Light from the projector&#8217;s lamp is reflected off the mirrors and is combined in different proportions of red, green and blue, as controlled by the image file, to create an array of different colored pixels that make up the projected image. (&#8230;)  
> 3. The DMD mirrors tilt either toward or away from the light source thousands of times per second to reflect the movie onto the screen. These images are sequentially projected onto the screen, recreating the movie in front of you with perfect clarity and a range of more than 35 trillion colors.  
> (from: [Digital Cinema 101 &#8211; Texas Instruments](http://www.dlp.com/dlp_cinema/dlp_cinema_digital_cinema_101.asp)) 

These projectors &#8211; like the ones from [Digital Projection](http://www.digitalprojection.com/DCinema/home.html) and [Barco](http://www.barco.com/digitalcinema/en/products/DLPCinemaprojectors.asp) &#8211; get their input through a [DVI-D](http://en.wikipedia.org/wiki/Digital_Visual_Interface), SMPTE 292M or [BNC](http://en.wikipedia.org/wiki/BNC_connector) connector. (Overview of video connectors on [utram.com](http://www.utram.com/fr/Guide_Technique/Connecteurs.html))

### OBSERVATIONS

  * The 2K standard translates into 2.2 megapixel images and the 4K standard into 8.8 megapixel. So 4K Digital Cinema uses a resolution most commerical &#8216;still&#8217; camera&#8217;s don&#8217;t have yet. 
  * If you project a 2K image on a screen 15m (50 feet) wide, each pixel is 15000/2048 = 7.3 mm wide. At 4K: 3.6mm wide. If you would project a DVD (720&#215;480 pixels), a pixel would be 2cm wide. 
  * Texas Instruments already has a 2K DLP (DC 2K DMD) chip, but there is no 4K chip yet. [Sony, however, announced their first 4K projectors](http://news.sel.sony.com/pressrelease/4864). 
  * The [Sony SXRD](http://www.audiorevolution.com/news/0203/27.sony.shtml) technology has a 16:9 aspect ratio (1920/1080), the [JVC DLA-QX1G projector](http://www.jvc.ca/jvcpro/product-detail.aspx?h=P2_200&l=E&model=DLA-QX1G) has a 4:3 aspect ratio, but the new standard has a very unusual 19:10 ratio. No idea why that is. 
  * The DCI announcement was also covered on [cinematech.blogspot.com](http://cinematech.blogspot.com/2005/07/d-cinema-roll-out-shading-nuances.html), [docbug.com](http://docbug.com/blog/archives/000404.html), [ofview.com](http://www.ofview.com/?p=63) and [blogs.mercurynews.com](http://blogs.mercurynews.com/aei/2005/07/coming_to_a_dig.html "blogs.mercurynews.com/aei"). Some good articles on DLP: [whatsonhdtv.blogspot.com](http://whatsonhdtv.blogspot.com/).
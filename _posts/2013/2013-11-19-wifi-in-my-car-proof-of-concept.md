---
id: 1366
title: 'Wifi in my car: proof of concept'
date: 2013-11-19T17:46:00+01:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1366
permalink: /2013/11/19/wifi-in-my-car-proof-of-concept/
attitude_sidebarlayout:
  - default
image: /wp-content/uploads/2013/11/3gdongle1.jpg
categories:
  - bandwidth
  - hardware
  - internet
  - mobile
  - smartphones
  - technology
tags:
  - 3G
  - car
  - internetofthings
  - mrtg
  - wifi
---
Some drivers love fancy chrome wheel rims, some add a huge wing spoiler on their car, or fuzzy dice hanging from their rear-view mirror. Me, when I bought my new car, I decided that I wanted a Wifi network in my car. So that any passenger with a laptop/iPod could read his email. And I imagined driving to distant holiday locations while my passenger where watching movies streamed from a NAS disk built into the car.

This weekend I finished episode one: Internet in the car. I used the following components:

  * [Huawei E3131 3G](http://www.mobielinternetstore.be/product/347732/category-189664-dongels/huawei-e3131-mobiel-internet-stick.html) dongle (60€) for mobile internet access  
    [<img  class="alignnone size-medium wp-image-1367" title="3gdongle" src="http://blog2.forret.com/wp-content/uploads/2013/11/3gdongle1-300x140.jpg" alt="" width="300" height="140" srcset="https://blog.forret.com/wp-content/uploads/2013/11/3gdongle1-300x140.jpg 300w, https://blog.forret.com/wp-content/uploads/2013/11/3gdongle1.jpg 800w" sizes="(max-width: 300px) 100vw, 300px" />](http://blog2.forret.com/wp-content/uploads/2013/11/3gdongle1.jpg)
  * [TP-link TL-MR3420](http://www.mobielinternetstore.be/product/374100/category-221577-tp-link-/tp-link-3g-4g-wireless-n-router-tl-mr3420.html) 3G Wifi router (80€)  
    [<img  class="alignnone size-medium wp-image-1368" title="TL-MR3420-2.0-02" src="http://blog2.forret.com/wp-content/uploads/2013/11/TL-MR3420-2.0-021-300x284.jpg" alt="" width="300" height="284" srcset="https://blog.forret.com/wp-content/uploads/2013/11/TL-MR3420-2.0-021-300x284.jpg 300w, https://blog.forret.com/wp-content/uploads/2013/11/TL-MR3420-2.0-021.jpg 800w" sizes="(max-width: 300px) 100vw, 300px" />](http://blog2.forret.com/wp-content/uploads/2013/11/TL-MR3420-2.0-021.jpg)
  * [Telenet Kong Surf](http://telenet.be/nl/mobiel-internet/kong-surf): 10€/month for 2GB transfer (I am already a Telenet customer, that is the main reason for this)

The important details here are:

  * The Huawei stick is compatible with the TP-Link router.
  * The Huawei stick can be configured with &#8216;Save my PIN&#8217;, so that when it starts up, it connects to the 3G network without any manual intervention.
  * The TP-Link router runs on 12V DC (which is what a car has)

For the rest, the exercise was quite straight-forward: I configured the Huawei stick on my laptop with the right PIN code, popped it in myTP-Link router, configured the right 3G settings for Telenet (see [here](http://blog.forret.com/2012/10/ios6-losing-its-3g-cellular-data-settings-fix-for-belgium/)). Then I took an old 12V power transformer, chopped off the connector and linked it up to an old car cigarette lighter type of plug (sometimes it&#8217;s good to have an archive of obsolete cables and power supplies). I then hid the router under the base plate of my trunk, where there is also the battery (the BMW X1 stores the battery in the back, where you would normally have the spare tyre). I switch on the car and 20 seconds later, I have a Wifi network &#8220;_OnTheRoadAgain_&#8221; that is connected to the Internet. Proof of concept is OK!

The next step now is to add a (Synology) NAS, which also runs on 12V, and hook up my iPad to the car Wifi to view my collection of backed-up DVDs from that disk. And maybe run some extra programs (e.g. MRTG for monitoring) on that NAS. To be continued!
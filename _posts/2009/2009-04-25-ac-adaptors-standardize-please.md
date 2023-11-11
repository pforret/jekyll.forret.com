---
title: 'AC adaptors: standardize, please'
date: 2009-04-25T15:22:26+02:00
author: Peter
layout: post
permalink: /2009/04/25/ac-adaptors-standardize-please/
categories:
  - hardware
tags:
  - power
  - USB
---
I was just cleaning up around my computer and I got annoyed again because of the utter lack of common sense hardware vendors seem to have in their choice of AC adapters (I'm not the only one, [Douglas Adams](http://www.douglasadams.com/dna/980707-03-a.html) wrote about it before).  I made a list of all the devices in a radius of 3m around me:

| Brand    | Product                      | Plug | Volt  | Ampere | Watt
|----------|------------------------------|------|-------|--------|-----
| Apple    | Airport Extreme              | (proprietary) | 12V   | 1.8A   | 22W
| Apple    | Mac Mini                     | (proprietary) | 18.5V | 4.6A   | 85W
| Apple    | iPhone charger               | USB + mini USB | 5V    | 1A     | 5W
| Asus     | EeePC 1000H                  | Coax | 12V   | 3A     | 36W
| Canon    | Selphy ES1 Photo printer     | Coax | 24V   | 2.3A   | 55W
| Dell     | Latitude laptop (old)        | (proprietary) | 20V   | 2A     | 40W
| Iomega   | External USB disk            | Power DIN | 12V   | 1.5A   | 18W
| Jabra    | Bluetooth Jawbone headphones | (proprietary) | 5V    | 550mA  |2.8W
| Jabra    | Bluetooth headphones         |mini USB | 5V    | 180mA  |0.9W
| Logitech | Bluetooth headphones         |Coax | 6.5V  | 250mA  |1.6W
| Netgear  | Cable Router                 | Coax | 15V   | 1.2A   |18W
| Netgear  | External network disk        | Coax | 12V   | 5A     | 60W
| Nintendo | Gameboy                      |  (proprietary) | 5.2V  | 320mA  | 1.7W
| Nokia    | GSM Charger N-series         | Nokia plug small | 5V    | 890mA  | 4.5W
| Nokia    | GSM Charger pre-N-series     | Nokia plug big | 3.7V  | 355mA  | 1.3W
| QPS      | Digital photo frame          | Coax | 12V   | 3A     | 36W
| Trekstor | External USB disk            | Coax | 12V   | 2A     | 24W
| Tulip    | Laptop                       | Coax | 19V   | 3.4A   | 65W


In a sensible world, all &#8216;small' things would have a mini USB (5V) power connector, all &#8216;medium' things would run on 12V DC with 1 (one) standard coax connector and the rest would be on 220V AC. Let's see how far we are from that situation:

  * A USB connection can power up to 500 mA (900 mA in USB 3.0 &#8211; [wikipedia](http://en.wikipedia.org/wiki/Universal_Serial_Bus#Power)), although the iPhone  seems to draw up to 1A. So any device that required less than 5W or certainly less than 2.5W, can get all it needs from a USB connector. Why are there then so many GSM and Bluetooth device vendors that insist on using their own proprietary connectors? Samsung, SonyEriccson, LG &#8230; I'm looking at you! I remember having at one point 3 different Samsung phones in the house and they all used a different non-compatible power supply. Nokia at least tried to keep the same (coax-like) power connectors until they started making smartphones that needed more power, and they made adaptors with a smaller pin. But Nokia: if Apple can power their iPhones/iPods with USB, then you can do that too.
  * Some devices need more power, so there should be standard for 12V too. You can run hard disks, routers, laptops and even desktop computers on only 12V! (&#8220;_The Google plan calls for a shift from multivoltage power supplies to a single 12-volt standard_&#8221; &#8211; [NYTimes](http://www.nytimes.com/2006/09/26/technology/26google.html?_r=1) 2006). Unfortunately there is no such thing as &#8220;the 12V plug&#8221;. There are a number of similar but not compatible &#8216;coax' plugs around. If there would be a standard for 12V DC devices: you could have a 12V circuit in your home, or at least next to your computer, so that you power all devices with 1 big, efficient transformer. Also, you would have a collection of 12V transformers lying around that you could interchange without thinking. Compare that to having to buy an extra Apple Magsafe adaptor at 90 euro (the Magsafe for Mac Mini: 16.5 V &#8211; 3.7 A = 60W!).  
<img  class="alignnone" src="http://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Photo-RoundPowerConnectors.jpg/350px-Photo-RoundPowerConnectors.jpg" alt="" width="350" height="197" /> 
  * If you need more than 60W, you can either take AC or think of some 24V standard.

I know the GSM industry is already talking about it (&#8220;_The group agreed that by the 1st January 2012, the majority of all new mobile phone models available will support a universal charging connector_&#8221; &#8211; [GSMworld](http://www.gsmworld.com/newsroom/press-releases/2009/2548.htm)). Apparently they want to standardize on Micro-USB. It's a pity I haven't seen a lot of devices with Micro-USB yet. I hope we'll have Mini-USB to Micro-USB dongles so that we can keep on using our &#8216;old' power cables.

<figure style="width: 500px" class="wp-caption alignnone"><img  class=" " src="http://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/USB_types_2.jpg/500px-USB_types_2.jpg" alt="Micro /mini / USB-B / USB-A male / USB-A female" width="500" height="232" /><figcaption class="wp-caption-text">Micro /mini / USB-B / USB-A female / USB-A male  
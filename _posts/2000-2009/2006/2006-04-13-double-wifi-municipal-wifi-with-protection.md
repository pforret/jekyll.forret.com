---
id: 306
title: 'Double Wifi: municipal wifi with protection'
date: 2006-04-13T17:38:17+02:00
author: Peter
layout: post
guid: /2006/04/double-wifi-municipal-wifi-with-protection/
permalink: /2006/04/13/double-wifi-municipal-wifi-with-protection/
categories:
  - bandwidth
  - hardware
  - wifi
---
I have written about FON before (they provide a business model for sharing one's bandwidth through Wifi). They use a custom firmware for the Linksys WRT54G routers. I have the feeling that current Wifi routers (or access points) cannot offer a good balance of security/flexibility. Opening your own network for everyone is currently too dangerous. There's Wifi trolls that gobble up your bandwidth and there's hackers that scan your ports for vulnerabilities. My idea is that now you would need 2 Wifi zones, one behind the other, each having different security and different policies. With access points costing as little as [25 euro](http://es.fon.com/shop-eu/product_info.php?products_id=28), that is not a big investment.

I see 2 scenario's:  
**Scenario 1: first the public**  
[<img  src="http://static.flickr.com/46/127964026_7a9546cb6c.jpg" width="500" height="367" alt="Double Wifi: first the public" />](http://www.flickr.com/photos/pforret/127964026/ "Photo Sharing")

Description
:   The first router is connected to your broadband and serves the PUBLIC zone (e.g. SSID &#8220;FREEWIFI&#8221;). On one of the wired Ethernet connections (the Linksys has 4 of those) the other router is connected, that serves the PRIVATE zone (e.g. SSID &#8220;PROTECTED&#8221;). Both are in a different IP range. The PUBLIC one requires no login, the PRIVATE one requires WPA + maybe MAC address checking.

PRO
:   * both the Internet and the PUBLIC zone are outside your PRIVATE network, so you can have the same firewall settings for both, and &#8216;dangerous' traffic never passes over your INTERNAL network.  
    * the first router can be configured to prioritize traffic from the fixed ports i.e. the PRIVATE network.

CONTRA
:   * If the PUBLIC router does not support QoS (Quality of Service) or bandwidth shaping, then a wifi troll can consume all the available bandwidth, and the PRIVATE network is left without anything.  
    * if the PUBLIC router is broken (or switched off) no one has Internet connection.

<!--more-->

  
**Scenario 2: first the private**  
[<img  src="http://static.flickr.com/54/127964025_957e52d1aa.jpg" width="500" height="382" alt="Double Wifi: first the private" />](http://www.flickr.com/photos/pforret/127964025/ "Photo Sharing")

Description
:   The first router is connected to your broadband and serves the PRIVATE zone. On one of the wired Ethernet connections, the other router is connected, that serves the PUBLIC zone. Both are in a different IP range. The PUBLIC one requires no login, the PRIVATE one requires WPA + maybe MAC address checking.

PRO
:   * the PRIVATE network is closer to the bandwidth than the PUBLIC, bandwidth trolls only come second  
    * the 1st router can be configured to give less priority to the network port that the PUBLIC network is connected to.  
    * in case of abuse, you can just switch off the 2nd router and your PRIVATE network keeps running

CONTRA
:   * all traffic goes over the PRIVATE network, so a skilled hacker might try to hack in to that (would be hard with a good firewall, but anything's possible)

Another scenario might be (if your ISP supports it) to have 2 routers each taking a separate IP address from your ISP and working in parallel (instead of in series). Disadvantage would be that you could not give lower priority to PUBLIC or higher to PRIVATE so you might again be abused by bandwidth trolls.

Next to that, we also need routers that are bandwidth-limit conscious: let's say that I get 25 GB from my ISP. I might want to configure that once the PUBLIC network has taken 10GB, it is cut off or limited to 256 Kbps. Or I could limit the PUBLIC throughput to 1Mbps (so I have a guaranteed 5Mbps left for INTERNAL use). Or limit streaming and BitTorrent traffic &#8230;

[<img  src="http://static.flickr.com/48/127983841_141cb44fb0_o.jpg" style="float: right" width="249" height="263" alt="Double Wifi: prototype" />](http://www.flickr.com/photos/pforret/127983841/ "Photo Sharing")  
So if someone would come up with a double Wifi access point, that serves 2 different and separate Wifi zones (one on channel 6 and one on channel 11, say), with differents security (authentication) settings, that supports traffic shaping, bandwidth limits and abuse detection, and maybe even offers a Wifi VPN like Google was planning to, that would be the ideal router for municipal Wifi. Just glue those Linksys'es together!
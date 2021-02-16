---
id: 193
title: 'Public WiFi: the on-line consumer'
date: 2005-10-18T17:47:21+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/10/18/public-wifi-the-on-line-consumer/
permalink: /2005/10/18/public-wifi-the-on-line-consumer/
categories:
  - wifi
---
People who know me, have heard me nag about open hotspot cafés in Brussels. My vision is that within 6 months, there should be a couple of dozen open Wi-Fi hotspots in Brussels so a guy with a laptop (like me) can find one within 1 km of wherever I happen to be in Brussels. I&#8217;m developing an idea for creating a set-up that is interesting for the Wi-Fi end-users, the infrastructure owners (e.g. a bar owner) and the ISP (that&#8217;s the hard part). More about that later.

As usual, Silicon Valley is way ahead of us:

> &#8220;When I&#8217;m working at home, I wind up heading over there ([Ritual Coffee Roasters](http://ritualroasters.com/)) three or four times a day,&#8221; programmer Angus Durocher said in an e-mail interview. &#8220;The walk over there helps clear my head, flirting with the staff helps ensure I don&#8217;t lose all verbal communication skills, and at this point, I&#8217;m not sure I can survive without their coffee.&#8221;  
> from [Cafe 2.0: After the Gold Rush](http://www.wired.com/news/business/0,1367,69221,00.html?tw=wn_2culthead)

Because this should not lead to a bar full of laptop surfers not looking or talking at each other, there are even initiatives to limit that:

> &#8220;We thought about what if you could use technology to reduce the zombie effect or to promote (people) to be more conscious and less alienated from their neighbors,&#8221; Savage said.  
> Wi-Fi users in a certain cafe would encounter a login window when they first sign on, which would prompt them to enter a Friendster-like profile that would let other cafe dwellers know when they were in that cafe.  
> from [A Tool To Wake Up WiFi Zombies](http://www.wired.com/news/culture/0,1284,68056,00.html)

Check out [Plazes.com](http://www.plazes.com) for another social geolocation project, one that already works now!

**How is a public hotspot different from your home WiFi router setup?**  
Typically there are things that you want to avoid: 1 user gobbling up all the bandwidth with streaming video, people using BitTorrent (kills your upload bandwidth and as such your quality of service), people sniffing other people&#8217;s PCs to see if they can find a security hole. So you need bandwidth management, a better firewall, and maybe also a homepage when the user first starts up his browser. This is called a &#8216;wireless captive portal&#8217;.  
[<img border="0" src="http://images.amazon.com/images/P/B0001D3K8A.01._AA_SCMZZZZZZZ_.jpg" />](http://www.amazon.com/exec/obidos/redirect?path=ASIN/B0001D3K8A&link_code=as2&camp=1789&tag=bestdigital08-20&creative=9325)<img loading="lazy" src="http://www.assoc-amazon.com/e/ir?t=bestdigital08-20&#038;l=as2&#038;o=1&#038;a=B0001D3K8A" width="1" height="1" border="0" alt="" />  
Even if the standard consumer WiFi router does not do this yet, there are ways to make them better suited for the job &#8211; by upgrading the firmware. Most customized solutions seem to be based on the Linksys WRT54 (and later products), because they are really small Linux-based computers that can be easily upgraded to a modified firmware. _(Great thinking from Linksys! I just installed a new router and it&#8217;s the [WRT54GS](http://www.amazon.com/exec/obidos/redirect?path=ASIN/B0001D3K8A&link_code=as2&camp=1789&tag=bestdigital08-20&creative=9325), just for the reason of upgradeability)._

Here are some examples of software to enhance WiFi routers (mostly Linksys):

[Sveasoft Alchemy](http://www.sveasoft.com/) (yearly $20 USD subscription fee)</p> 
:   Our firmware adds dozens of sophisticated features to these sub-$100 routers turning them into the equivalent of products costing hundreds or thousands of dollars. (check [forum](http://www.sveasoft.com/modules/phpBB2/viewtopic.php?t=61) for features)</p> 
    
    [nocat.net](http://nocat.net/) (free)</p> 
    
    :   NoCatAuth is our original &#8220;catch and release&#8221; captive portal implementation. It provides a simple splash screen web page for clients on your network, as well as a variety of authenticated modes.</p> 
        
        [WiFiDog.org](http://www.ilesansfil.org/tiki-index.php?page=Wifidog)</p> 
        
        :   The Wifidog project is a complete and embeddable captive portal solution for wireless community groups or individuals who wish to open a free Hotspot while still preventing abuse of their Internet connection.</p> 
            
            [openwrt.org](http://openwrt.org/) (free)</p> 
            
            :   OpenWrt is a Linux distribution for the Linksys WRT54G. Instead of trying to cram every possible feature into one firmware, OpenWrt provides only a minimal firmware with support for add-on packages</p> 
                
                [eWRT](http://www.portless.net/menu/ewrt/) (free)</p> 
                
                :   At the time of writing, ewrt differentiates itself from the other WRT54G distributions by providing a captive portal based on NoCatSplash and a writeable jffs2 filesystem for storing content. </p> 
                    
                    [dd-wrt.com](http://www.dd-wrt.com/) (free)</p> 
                    
                    :   DD-WRT is simply a project which is based on the official GPL Sources of Sveasoft Alchemy.</p> 
                        
                        [hyperwrt.org](http://www.hyperwrt.org/) (free)</p> 
                        
                        :   The goal of this project is to add a limited set of features to the last Linksys firmware, extending its possibilities but staying close to the official firmware.</p> 
                            
                            [SputnikNet](http://www.sputnik.com/products/sputniknet.html) ($19.95 per access point per month)</p> 
                            
                            :   SputnikNet™ enables you to run a managed wireless network over the Internet. Simply plug Sputnik APs into broadband, and you’re ready to offer free, branded, or fee-based Wi-Fi service. SputnikNet is affordable: you can manage as many access points and wireless networks as you like.</p> 
                                
                                [PatronSoft FirstSpot](http://www.patronsoft.com/firstspot/) (from $95)</p> 
                                
                                :   FirstSpot is a Windows-based Wi-Fi hotspot management software (sometimes also known as hotspot access controller or wireless gateway) designed to track and secure your visitor-based networks or Wi-Fi Hotspots in a centralized way. </dl> 
                                    
                                    Technorati: <a href="http://technorati.com/tag/wifi" rel="tag">wifi</a> &#8211; <a href="http://technorati.com/tag/hotspot" rel="tag">hotspot</a> &#8211; <a href="http://technorati.com/tag/brussels" rel="tag">brussels</a> &#8211; <a href="http://technorati.com/tag/linksys" rel="tag">linksys</a>
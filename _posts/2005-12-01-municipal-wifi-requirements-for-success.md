---
id: 222
title: 'Municipal WiFi: requirements for success'
date: 2005-12-01T22:45:00+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/12/01/municipal-wifi-requirements-for-success/
permalink: /2005/12/01/municipal-wifi-requirements-for-success/
categories:
  - wifi
---
[<img  src="http://farm1.static.flickr.com/48/127983841_141cb44fb0_o.jpg" width="249" height="263" alt="Double Wifi: prototype" />](http://www.flickr.com/photos/pforret/127983841/ "Photo Sharing")  
Municipal Wifi is gaining speed. Some of the efforts are institutional ([Joy Ito joins the FON](http://english.martinvarsavsky.net/fon/joichi-fon-american-board.html) advisory board, networks are being installed in [San Francisco](http://news.com.com/Google+blankets+city+with+free+Wi-Fi/2110-7351_3-5956837.html?tag=st.ref.goo) and [New Orleans](http://muniwireless.com/municipal/projects/932)) and some are grassroots (John is setting up [a Wifi cloud in Rio](http://www.baeyens.net/baeyens/view.php?id=1547) &#8230;)

I&#8217;ve looked at the models and tools of providers like [FON](http://en.fon.es) and [WifiDog](http://www.ilesansfil.org/tiki-index.php?page=WiFiDog)/[OpenWRT](http://openwrt.org/) (any Linux), and I&#8217;ve done some testing as a provider myself. We&#8217;re not there yet.

### Wifi checklist

For grass-roots municipal WiFi to really take off, we need the following:

<table border="1">
  <tr>
    <td width="50%">
      <i>PROVIDER</i>
    </td>
    
    <td width="50%">
      <i>CLIENT</i>
    </td>
  </tr>
  
  <tr>
    <th colspan="2">
      SECURITY
    </th>
  </tr>
  
  <tr>
    <td>
      &#8211; separate VLANs for internal and external PCs,<br /> &#8211; standard firewall profiles (e.g. allow web, mail; disallow audio streaming, BitTorrent)<br /> &#8211; accountability: some kind of authentication
    </td>
    
    <td>
      &#8211; protection from other (rogue) clients<br /> &#8211; preferably some kind of VPN (no sniffing)<br /> &#8211; indication of connection security
    </td>
  </tr>
  
  <tr>
    <th colspan="2">
      BANDWIDTH
    </th>
  </tr>
  
  <tr>
    <td>
      &#8211; guaranteed personal bandwidth<br /> &#8211; traffic shaping for each connection (e.g. each PC
    </td>
    
    <td>
      &#8211; guaranteed minimum bandwidth<br /> &#8211; clear info on what is allowed (BitTorrent or not)
    </td>
  </tr>
  
  <tr>
    <th colspan="2">
      CONVENIENCE
    </th>
  </tr>
  
  <tr>
    <td>
      &#8211; cross-platform (e.g. not Linksys only)<br /> &#8211; wizard install (Next-Next-Finish)<br /> &#8211; outsourced authentication (like FON)<br /> &#8211; uptime tracking and &#8216;customer&#8217; feedback &#8211; to distinguish between live, working access points and dead ones (e.g. Plazes)
    </td>
    
    <td>
      &#8211; single sign-on (same password everywhere)<br /> &#8211; easy connect, log-on and surf away<br /> &#8211; easy detection of &#8216;friendly&#8217; access points<br /> &#8211; global coverage<br /> &#8211; map overview of all available points (like WifiDog/Plazes)
    </td>
  </tr>
</table>

Technorati: <a href="http://technorati.com/tag/free" rel="tag">free</a> &#8211; <a href="http://technorati.com/tag/wifi" rel="tag">wifi</a> &#8211; <a href="http://technorati.com/tag/municipal" rel="tag">municipal</a> &#8211; <a href="http://technorati.com/tag/grassroots" rel="tag">grassroots</a>
---
id: 176
title: Flickr changes image URLs with some glitches
date: 2005-09-02T18:35:36+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/09/02/flickr-changes-image-urls-with-some-glitches/
permalink: /2005/09/02/flickr-changes-image-urls-with-some-glitches/
categories:
  - internet
---
<table>
  <tr>
    <td>
      <img src="http://photos23.flickr.com/29305573_7c9bb5849e.jpg" border="0" /><br /> Old URL:<br /> <u>photos23.flickr.com</u>
    </td>
  </tr>
  
  <tr>
    <td>
      <img src="http://static.flickr.com/23/29305573_7c9bb5849e.jpg" border="0" /><br /> New URL:<br /> <u>static.flickr.com/23</u>
    </td>
  </tr>
</table>

Just this week I started getting problems with [Flickr](http://www.flickr.com) images that were embedded in my own sites. I got a &#8220;red cross&#8221; instead of a picture. When I checked the image URLs that I was using and the ones that Flickr currently uses, I saw they had changed, and the transition was not flawless (at that point).

Where each image used to reside on one of the [photosXX.flickr.com](http://photos23.flickr.com/29305573_7c9bb5849e.jpg) servers, they now have the URL [http://static.flickr.com/XX/&#8230;](http://static.flickr.com/23/29305573_7c9bb5849e.jpg) (with the same server id XX). Apparently in some cases, the image URLs were not automatically redirected to the new address, which caused the crosses. Some Flickr users were [complaining](http://www.flickr.com/forums/bugs/11414) [about](http://www.flickr.com/forums/help/11410) [the same problem](http://www.flickr.com/forums/help/11452) on the Flickr forums.

**While I am writing this, more and more URLs start working again, i.e. there is an automatic redirection to the correct URL.** But basically this 1 month old [explanation of the Flickr image URLs](http://digitalphotography.weblogsinc.com/entry/1234000650052735/) has to be updated:

> <u>http://photos{server-id}.flickr.com/{id}_{secret}_[mstb].jpg</u> becomes  
> **[http://static.flickr.com/{server-id}/{id}\_{secret}\_[mstb].jpg](http://static.flickr.com/23/29305573_7c9bb5849e.jpg)**

**FLICKR STORAGE HISTORY**  
In the early days of Flickr, the images were stored on separate servers: <u><a href="http://uptime.netcraft.com/up/graph?site=photos1.flickr.com">photos1</a></u> was 69.90.111.71, <u><a href="http://uptime.netcraft.com/up/graph?site=photos2.flickr.com">photos2</a></u> was 69.90.111.72, &#8230;, situated in [Vancouver, BC (Canada)](http://www.dnsstuff.com/tools/city.ch?ip=69.90.111.72): probably adding 1 storage server at a time while the gigabytes were pouring in. After the move to [Yahoo (Sunnyvale, CA)](http://www.dnsstuff.com/tools/city.ch?ip=68.142.213.135) in July of this year, all photoXX DNS names were changed to point to the same 68.142.213.135 IP address &#8211; or <u>storage1.flickr.vip.mud.yahoo.com</u>. 

Today, instead of maintaining the 33 DNS entries, they opted for working with 1 domain name <u>static.flickr.com</u> and let the load balancing/cache distribution ([analyze.forret.com](http://www.forret.com/projects/analyze/?url=http%3A%2F%2Fstatic.flickr.com%2F23%2F29305573_7c9bb5849e.jpg) shows there is a &#8220;`X-Cache = HIT`&#8221; HTTP header that is a caching directive) decide from which server the image should be grabbed. You can actually get an idea by this little hack:

  * [photos1](http://static.flickr.com/1/): &#8220;**storage3**.flickr.mud&#8221; shown on the &#8216;home&#8217; page 
  * [photos2](http://static.flickr.com/2/): &#8220;**storage5**.flickr.mud&#8221; 
  * [photos3](http://static.flickr.com/3/): &#8220;**storage3**.flickr.mud&#8221; 
  * [photos4](http://static.flickr.com/4/): &#8220;**storage7**.flickr.mud&#8221; 
  * [photos5](http://static.flickr.com/5/): &#8220;**storage4**.flickr.mud&#8221; 
  * &#8230; 

A total of 8 storage servers, I&#8217;m guessing.

Technorati: <a href="http://technorati.com/tag/flickr" rel="tag">flickr</a> &#8211; <a href="http://technorati.com/tag/yahoo" rel="tag">yahoo</a> &#8211; <a href="http://technorati.com/tag/storage" rel="tag">storage</a> &#8211; <a href="http://technorati.com/tag/images" rel="tag">images</a>
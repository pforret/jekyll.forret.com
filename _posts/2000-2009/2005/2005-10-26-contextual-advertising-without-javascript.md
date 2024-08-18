---
id: 199
title: Contextual advertising without JavaScript
date: 2005-10-26T17:05:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/10/26/contextual-advertising-without-javascript/
permalink: /2005/10/26/contextual-advertising-without-javascript/
categories:
  - Google
  - Web2.0
---
![](http://static.flickr.com/28/56664340_62d0683c1f.jpg?v=0)  
A recent article on Jensense: [Monetizing from those with javascript disabled](http://www.jensense.com/archives/2005/10/monetizing_from.html) made me ponder a bit on the possibilities of contextual advertising \*without\* JavaScript. This would be primarily for places where you cannot add JavaScript (e.g. in RSS feeds, in blog posts). And I think I have found a solution.

<div>
  Minimal Javascript code for Adsense<br /> <code>&lt;script type="text/javascript"&gt;&lt;br />
&lt;!--&lt;br />
google_ad_client = "(publisher-id)";&lt;br />
google_ad_width = (width);&lt;br />
google_ad_height = (height);&lt;br />
google_ad_format = "(format)";&lt;br />
//--&gt;&lt;br />
&lt;/script&gt;&lt;br />
&lt;script type="text/javascript" src="http:// pagead2.googlesyndication.com/pagead/ show_ads.js"&gt; &lt;/script&gt;</code>
</div>

**How does Adsense work?**  
To use Adsense now, you need to embed a piece of JavaScript code into your HTML pages. The first part sets your personal ID and the look and feel of your ads. The second part is a link to a piece of code that Google constructs on-the-spot. They can take into account:

  * WHERE: what is the content of the page the ad is featured in</p> 
      * WHO: who is the end-user: default language of the browser, IP-address (which can be resolved to a country + city location), maybe the time of day 
          * WHAT: what keywords do advertisers want to pay for</ul> 
            This is called _**contextual advertising**_: it is tailored for the page and the viewer.  
            Currently Google Adsense uses JavaScript, because it's the best way to insert full-featured HTML into someone else's web page.
            
            **Adsense without JS**  
            Imagine we don't need the whistles and bells of HTML, and just work with an image. Could we do contextual (i.e. tailored) advertising? Well, I think we can. Let me present &#8220;PicSense&#8221;:
            
              1. a publisher puts the following code into his HTML page:  
                `<a href="http://picsense.example.com/fwd/(client ID)/" > <img border="0" src="http://picsense.example.com/img/(client ID)/(format)"> </a>`  
                (from those who are not familiar with HTML, this creates a clickable image)
              2. when this HTML page is visited in a browser, the image `http://picsense.example.com/img/(client ID)/(format)` is requested from the example.com service.
            The server also receives in the request: the URL where the image is showing in (i.e. &#8220;WHERE&#8221;), and the details on the browser and network location (i.e. &#8220;WHO&#8221;). The server then selects one of the offers it has from advertisers (&#8220;WHAT&#8221;), and sends back a &#8216;302 redirect' to `http://picsense.example.com/adv/(advertiser ID)/(campaign)/(format)` (which means: go fetch the image from this other, new location).  
            So this is as much contextual as current Adsense advertising!
            
              3. the visitor sees an image appearing with an ad from advertiser X (maybe a colorful image, or just some lines of text rendered as a GIF file). If the offer interests him, he clicks on the image. 
                  * now comes the tricky part: the picsense.example.com service must use exactly the same decision algorithm to make sure that the visitor who clicks on the link arrives on the page of the right advertiser. The algorithm must be deterministic, there cannot be a random element in it. If there are e.g. 3 advertisers that offer a blogging service, then the service cannot pick 1 of the 3 images at random to show on a blog-related page, because there would be no way to send the visitor to the correct advertiser afterwards</ol> 
                    **Why no JavaScript?**  
                    Javascript is powerful and (therefore) dangerous. In some browsers it is disabled for security reasons. You cannot include JavaScript in a [Blogger](http://www.blogger.com) post. JavaScript is blocked in webmail (OK, sometimes images are blocked too, but less often than Javascript). It would be handy to have an option for inobtrusive advertising in those cases too.
                    
                    Technorati: <a href="http://technorati.com/tag/google" rel="tag">google</a> &#8211; <a href="http://technorati.com/tag/adsense" rel="tag">adsense</a> &#8211; <a href="http://technorati.com/tag/contextual" rel="tag">contextual</a> &#8211; <a href="http://technorati.com/tag/advertising" rel="tag">advertising</a> &#8211; <a href="http://technorati.com/tag/javascript" rel="tag">javascript</a> &#8211; <a href="http://technorati.com/tag/marketing" rel="tag">marketing</a> &#8211; <a href="http://technorati.com/tag/blog" rel="tag">blog</a>
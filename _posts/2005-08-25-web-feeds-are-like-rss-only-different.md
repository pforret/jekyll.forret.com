---
id: 171
title: Web feeds are like RSS, only different
date: 2005-08-25T11:15:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/08/25/web-feeds-are-like-rss-only-different/
permalink: /2005/08/25/web-feeds-are-like-rss-only-different/
categories:
  - RSS
---
<div>
  <img src="http://blog.forret.com/blog/uploaded_images/-WEBFEED-777827.png" border="0" alt="" /><br /> <img src="http://www.forret.com/projects/podcast/button_mp3.gif" border="0" alt="" />
</div>

There recently has been some commotion over the fact that [Microsoft is introducing RSS support in the new Internet Explorer 7](http://www.infoworld.com/article/05/08/15/HNmsrebranding_1.html?source=rss&url=http://www.infoworld.com/article/05/08/15/HNmsrebranding_1.html) (which is great), but **they call them &#8220;web feeds&#8221;**. Oh! My! God! [They are so evil](http://digg.com/technology/Microsoft_Renames_Rss_to_Web_Feeds)!

Actually, Microsoft has a point. Currently RSS is being used as a format to deliver all kinds of different stuff: blog posts, podcasts, images, videos, search results, weather reports, stock quotes, &#8230; While they all use RSS as underlying format, they are not all the same &#8216;kind&#8217; of information. I think it makes sense to distinguish between the technology/standard format &#8220;RSS&#8221; and the usages it enjoys.

So you could have:

  * **Web feeds**: feeds from blogs or other web sites 
  * **Podcast or Audiofeeds**: been around for over a year now, started out as RSS 2.0 + MP3 enclosures, but now also implies [Apple iTunes](http://usefulinc.com/edd/blog/contents/2005/06/28-rss-apple-itunes/read) and [Yahoo Media](http://search.yahoo.com/mrss) extensions. 
  * **Photofeeds**: a bit like the [podcasting for images](http://photofeed.forret.com), supported by the likes of [Flickr](http://www.flickr.com), [Smugmug](http://www.smugmug.com) and [Pixagogo](http://www.pixagogo.com) 
  * **Videofeeds** for &#8216;vlogs&#8217;: the logical successor of podcasts, but here the main issue will be: formats! Whereas MP3 works on almost every machine, there is no such universal format for video. MPG (MPEG-2)? WMV (Windows Media)? MOV (QuickTime)? 
  * **Search feeds**: the result of a search operation as a RSS feed, from [MSN](http://search.msn.com/), [Technorati](http://www.technorati.com), [Feedster](http://www.feedster.com) or [Blogdigger](http://www.blogdigger.com) 
  * **Stock feeds**: would contain Index, Change, Day&#8217;s Range and Year&#8217;s Range in specific extensions 
  * **Weather feeds**: would contain expected temperature, humidity, precipitation so your domotica system can open windows or light the heater 
  * &#8230;

In this logic the term &#8216;feed&#8217; would be synonymous for &#8216;based upon RSS&#8217;, and this means: a &#8216;channel&#8217; with one or more &#8216;items&#8217;, each one with at least a date, a unique ID and a title. (RSS is the cornerstone of the [&#8216;reverse chronological&#8217; movement](http://blog.forret.com/blog/2004/05/organising-my-cd-collection.html))

### Some of the arguments against

&#8220;Everyone calls it RSS&#8221;</p> 
:   I give you: [Firefox&#8217;s Live Bookmarks](http://forevergeek.com/news/microsoft_web_feeds.php)</p> 
    
    &#8220;But RSS has this whole &#8216;brand&#8217; recognition thing going for it!&#8221;</p> 
    
    :   Not really. Maybe for us web geeks, but not for [Mr/Mrs Average Webuser](http://www.theregister.co.uk/2005/08/24/rss_survey/). It is true that people like [Dave Winer](http://www.scripting.com) and [Steve Gillmor](http://blog.ziffdavis.com/gillmor/) have invested a lot of effort in evangilizing the usage of RSS, and that&#8217;s very good. It&#8217;s not because Microsoft picks a more sexy name that the standard will vanish, on the contrary.</p> 
        
        &#8220;RSS is not per-se a difficult/unsexy name&#8221;</p> 
        
        :   Of course people can remember acronyms, but only if they can visualize what they stand for: </p> 
            
              * a **DVD** is like a CD: same size, slightly different colour. They contain movies. 
              * **VHS** cassettes are black and chunky. They contained movies in the previous century. 
              * A **GSM** is like a phone with no wires (unless you&#8217;re charging it). 
              * An **SUV** is a really big car to go shopping with
            
            But try to explain a non-technical person the differences between HTML and HTTP, CSS and PHP?
            
            &#8220;Everyone uses the![](http://www.scec.org/sitegraphics/orange-xml.png) or![](http://www.droit-tic.com/images/rss/rss_logo.gif) button on their site to indicate their feed.&#8221;</p> 
            
            :   Glad you mentioned that. Why exactly would an orange [XML] button mean RSS? Isn&#8217;t Atom also XML? Isn&#8217;t KML, SOAP, &#8230; also XML? I would love to see the [XML] buttons disappear. Indicate what is important: a videofeed, OK, but is it QuickTime, DivX or Windows Media?</p> 
                
                &#8220;[Dave says we should stick with RSS](http://archive.scripting.com/2005/08/09)&#8221;</p> 
                
                :   Dave&#8217;s contribution to the popularity of RSS is quite considerable and he surely is entitled to his opinion. But I don&#8217;t agree on the naming issue.</p> 
                    
                    &#8220;It&#8217;s not good to have [multiple terms to refer to the same thing](http://hybrid28.ucr.edu/breilly/2005/08/24)&#8221;</p> 
                    
                    :   Correct. But it&#8217;s not because 2 systems use RSS as delivery format that they are the same thing. RSS is no longer just a way to syndicate blog postings, it&#8217;s become a building block, a bit like HTML and CSS. Personally I am more bothered in the case of [folksonomy](http://blog.forret.com/blog/2005/02/folksonomizer-generic-folksonomy.html): tags = keywords = labels. That&#8217;s confusing!</p> 
                        
                        &#8220;Microsoft should also support Atom.&#8221;</p> 
                        
                        :   Atom is a comatose patient that is being kept alive by Google/Blogger. Once Blogger starts using RSS, they will have to pull the plug. 

Technorati: <a href="http://technorati.com/tag/rss" rel="tag">rss</a> &#8211; <a href="http://technorati.com/tag/syndication" rel="tag">syndication</a> &#8211; <a href="http://technorati.com/tag/blogs" rel="tag">blogs</a> &#8211; <a href="http://technorati.com/tag/photofeed" rel="tag">photofeed</a>
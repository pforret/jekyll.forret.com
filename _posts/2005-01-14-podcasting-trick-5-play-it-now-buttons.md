---
id: 107
title: 'Podcasting trick #5: play-it-now buttons'
date: 2005-01-14T23:33:03+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/01/14/podcasting-trick-5-play-it-now-buttons/
permalink: /2005/01/14/podcasting-trick-5-play-it-now-buttons/
categories:
  - music
  - webdev
---
[<img alt="Traxsource podcast" border="0" src="http://www.pixagogo.com/S5!bRz4QtUrC-YLZfBZ8YA4AkjPR4Pd7JlI0MORYhBk0FPMUh!21bBmiE3fPtxSN-0oI91RJUVvAL5C28eLIhPQNHBcTYVJQpO0YPcRNpF7Ek_/traxicons.jpg" />](http://traxsource.blogspot.com)  
While working with Jurriaan on a podcast for [BeyondJazz.net](http://www.beyondjazz.net/) (with their [excellent sample spotters show](http://www.beyondjazz.net/viewtopic.php?t=6924)), I finished a small project I had been working on a couple of months ago: a web-based streaming media player for MP3/RAM/WMA files. I actually stopped it when I saw the excellent work Lucas Gonze had done with [Webjay](http://webjay.org). Didn&#8217;t feel like re-inventing the hot water.  
But now I have added a visual part: I wanted to have a one-click &#8220;play this in my media player and show me the playlist at the same time&#8221;. So I worked further on the formats that support playing audio while showing a web page at the same time: SMIL (works with RealPlayer and QuickTime) and ASX (Windows Media Player). Since the BeyondJazz blog is not yet public, I also used this system on the [Traxsource Cyberjamz Radio Show](http://traxsource.blogspot.com) (another one of my music podcast experiments, together with [Traxsource](http://www.traxsource.com)/Brian Tappert).

The idea is the following: instead of having the title of the post as a link to the MP3 (in some cases, when you click it, your browser starts downloading all those megabytes before the audio starts playing), I now have 3 icons: one for playing it in RealPlayer, one for Windows Media Player and one for direct downloading. To do this, I actually just edited the [Blogger](http://www.blogger.com) template as follows:  
`<h3 class="post-title"><$BlogItemTitle$><br />
<BlogItemUrl><br />
<a href="http://www.smoothouse.org/projects/media/player.asp? type=smil&url=<$BlogItemUrl$>&page=<$BlogItemPermalinkUrl$>"<br />
title="Click to open in your RealAudio player"><br />
<img border=0 width="20" height="20" alt="Click to open in your RealAudio player" src="http://www.smoothouse.org/projects/podcast/icon_ram.gif"><br />
</a><br />
<a href="http://www.smoothouse.org/projects/media/player.asp? type=asx&url=<$BlogItemUrl$>&page=<$BlogItemPermalinkUrl$>"<br />
title="Click to open in your Windows Media player"><br />
<img border=0 width="20" height="20" alt="Click to open in your Windows Media player" src="http://www.smoothouse.org/projects/podcast/icon_wma.gif"><br />
</a><br />
<a href="<$BlogItemUrl$>"<br />
title="Right-click to download"><br />
<img border=0 width="20" height="20" alt="Right-click to download" src="http://www.smoothouse.org/projects/podcast/icon_download.gif"><br />
</a><br />
</BlogItemUrl><br />
</h3>`  
(if you&#8217;re familiar with HTML and/or Blogger templates, try this at home. If you&#8217;re not, wear protection.)

I still have to work out some quirks with the Real/SMIL format (on some machines the HTML page does not show), but apart from that, it works like a charm: you click the icon, your player opens, the music starts playing and you see the associated post page in your player.

Remark: this trick does not affect the core podcast as such: the MP3 files, the RSS feed, &#8230; stay the same. It&#8217;s just a user interface enhancement for the associated blog, with a detailed description for Blogger users. The principle as such will work on any Movable Type, WordPress, or other Pivot.

PS: So what are podcasting tricks #1 to #4?  
Well, with all this mumbo jumbo I&#8217;ve already posted on podcasting, I couldn&#8217;t start counting at #1, now could I? Let me improvize:  
#1: [easy podcasting with Blogger and Smartcast](/2004/10/how-to-podcast-with-blogger-and-smartcast/)  
#2: [podcasting with Webjay](/2004/12/the-ideal-podcast-publisher-webjay-vs-blogger-smartcast/)  
#3: [ID3 tags for podcasting](/2004/11/id3-metatags-for-podcast-mp3s/)  
#4: [Podcast icons &#8211; the definitive collection](http://blog.forret.com/2004/12/podcast-icons-whats-available/) (also a [Pixagogo album](http://www.pixagogo.com/5111825842))  
\____  
Update Jan 19: the [Beyondjazz Podcast is now publicly available](http://www.beyondjazz.net/podcasts/).
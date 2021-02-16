---
id: 151
title: Using movies on a web page
date: 2005-06-09T12:21:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/06/09/using-movies-on-a-web-page/
permalink: /2005/06/09/using-movies-on-a-web-page/
categories:
  - media
  - webdev
---
![](http://www.pixagogo.com/S5vpfnjbBPdPlCvid7b390cO6czXTj2jFS29bvFmpspo4!AMIiMqFtHjGKqNnzx7UPd3xe4oZmN8!YKenVSHMhsmrUYBooIsWYntV3qODCHtivlCmKPbX6P7!RUwq3ZK42VyzahLk71WHKeTN2qxDiOg__/tango_dance.jpg)  
So you recorded those first steps of your youngest, your first public milonga performance, uncle Tom falling backwards into that cake, or auntie Janet dressed like a man. Now you want to show into to the world. You save the movie into a .WMV ([Windows Media &#8211; Video](http://en.wikipedia.org/wiki/WMV)), .RM ([Real Media](http://en.wikipedia.org/wiki/RealMedia)), .MOV ([Quicktime](http://en.wikipedia.org/wiki/QuickTime)), .MPG or .MP4 ([MPEG-2 or MPEG-4](http://en.wikipedia.org/wiki/MPEG)) , .SWF ([Shockwave/Flash](http://en.wikipedia.org/wiki/Swf)) or .AVI ([Microsoft Video for Windows](http://en.wikipedia.org/wiki/AVI)) file, sprinkled some Sorenson or DivX magic on it (if you&#8217;re not familiar with these terms, don&#8217;t worry. It&#8217;s another topic alltogether), upload it to your web server, and then what? What is the best way to present it to your visitors?

ANCHOR tag &#8211; a plain link</p> 
:   **Works**: everywhere 
:   **Description**: Provide just a link to the movie file, and count on the user&#8217;s browser to figure out which application it should give the URL to. WMV files will generally open in Windows Media Player, MOV files in Quicktime, but there is no way to be sure what AVI and MPG files will open in. This depends on the client&#8217;s configuration. An additional disadvantage is that a lot of browsers will first download the whole file and only then play it, so you lose the quasi-immediate start of a streaming experience. 
:   <textarea cols="65" rows="3"><a href="http://www.example.com/movie.mpg" title="The movie">Click to play</a></textarea></p> 
    
    [EMBED](http://msdn.microsoft.com/library/default.asp?url=/workshop/author/dhtml/reference/objects/embed.asp) tag</p> 
    
    :   **Works**: everywhere 
    :   **Description**: even if it is not part of the HTML specification, it should work everywhere. It can be as minimal as `<embed src="http://www.example.com/movie.avi">`, but also allows the specifying of size, [mime-type](http://en.wikipedia.org/wiki/MIME) and player controls. It does not allow you to specify what program (and what version) should be used to play it. It&#8217;s again the user&#8217;s (browser) configuration that decides. 
    :   <textarea cols="65" rows="7"><embed width=320 height=250 src=&#8221;http://www.example.com/movie.wmv&#8221; name=&#8221;player&#8221; id=&#8221;player&#8221; pluginspage=&#8221;http://www.microsoft.com/windows/windowsmedia/download/&#8221; type=&#8221;video/x-ms-wmv&#8221; ShowControls=&#8221;1&#8243; ShowDisplay=&#8221;0&#8243; ShowStatusBar=&#8221;0&#8243; autostart=&#8221;1&#8243; autorewind=0 ShowPositionControls=&#8221;1&#8243; ShowTracker=&#8221;0&#8243; ></embed><br /> </textarea></p> 
        
        [OBJECT](http://www.w3.org/TR/REC-html40/struct/objects.html#h-13.3) tag</p> 
        
        :   **Works**: everywhere 
        :   **Description**: this is the official way to do it (according to the HTML specs). You create an `<OBJECT> ... </OBJECT>` pair with a bunch of `PARAM` in between. Here is the way to do it with [Windows Media Player](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/wmplay10/mmp_sdk/paramtags.asp), [RealPlayer](http://service.real.com/help/library/guides/production8/htmfiles/control.htm), [QuickTime](http://developer.apple.com/documentation/QuickTime/Conceptual/QTScripting_HTML/QTScripting_HTML_Document/chapter_1000_section_3.html) and [Shockwave/Flash](http://www.macromedia.com/cfusion/knowledgebase/index.cfm?id=tn_4150). A very common practice is to combine the `EMBED` with `OBJECT`, like in the example below. 
        :   <textarea cols="65" rows="11"><OBJECT CLASSID="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" CODEBASE="http://www.apple.com/qtactivex/qtplugin.cab" HEIGHT="250" WIDTH="320" > <PARAM NAME="src" VALUE="http://www.example.com/movie.mov" > <PARAM NAME="AutoPlay" VALUE="true" > <PARAM NAME="Controller" VALUE="false" > <EMBED SRC="http://www.example.com/movie.mov" HEIGHT="250" WIDTH="320" TYPE="video/quicktime" PLUGINSPAGE="http://www.apple.com/quicktime/download/" AUTOPLAY="true" CONTROLLER="false" /> </OBJECT></textarea></p> 
            
            [IMG with dynsrc](http://msdn.microsoft.com/workshop/author/dhtml/reference/properties/dynsrc.asp)</p> 
            
            :   **Works**: only in Internet Explorer (Windows) 
            :   **Description**: very easy to use, but poorly supported. Allows for combining the classic `SRC` with the `DYNSRC` property, so that even if the browser does not show the movie, it can still show an image. 
            :   <textarea cols="65" rows="4"><img width="160" height="120" alt="The movie" /></textarea></p> 
                
                MEDIAPLAYER page</p> 
                
                :   **Works**: everywhere (if it&#8217;s done right) 
                :   **Description**: if you&#8217;re a bit handy, you can create a wrapper page for your streaming media. I use my [Cinema Tool](http://www.forret.com/tools/cinema.asp) to show movies. I just input the URL, the format and the size, and the rest is automatic. On podcasts like [Traxsource](http://traxsource.blogspot.com/), I use a special audio-only player page (not yet generally available) that shows the playlist (a web page) within the media player ([SMIL](http://www.w3.org/TR/REC-smil/) for Real & QuickTime/[ASX](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/wmplay10/mmp_sdk/creatingmetafileplaylists.asp) for WMV). 
                :   <textarea cols="65" rows="5"><a href="http://www.forret.com/tools/cinema.asp?w=320&h=260&type=video&format=WMF&url=http%3A%2F%2Fwww.example.com%2Fmovie.wmv">Click to play</a></textarea></p> 
                    
                    IFRAME with MEDIAPLAYER</p> 
                    
                    :   **Works**: everywhere (but watch out for Javascript scripts like Adsense/counter pages &#8211; they can give errors in frames) 
                    :   **Description**: If you don&#8217;t want to send your visitors to a new or a popup page, consider inserting a `IFRAME` into your page. You can then even trigger new movies by just adding a link with the right `TARGET`. Remark: if you add a link like described in the `ANCHOR` example above, even with the right `TARGET` specified, the file will probably open outside of the browser, and not in the `IFRAME` where you want it. Webmastering shouldn&#8217;t be THAT easy! 
                    :   <textarea cols="65" rows="11"><a href="http://www.forret.com/tools/cinema.asp?w=320&h=260&type=video&format=WMF&url=http%3A%2F%2Fwww.example.com%2Fmovie.wmv">Movie 1</a> &#8211; <a href="http://www.forret.com/tools/cinema.asp?w=320&h=260&type=video&format=WMF&url=http%3A%2F%2Fwww.example.com%2Fmovie2.wmv">Movie 2</a> <br /> </textarea> 

Also see: [fluffbucket.com](http://www.fluffbucket.com/html/videolink.htm) &#8211; [Comparison of media players](http://en.wikipedia.org/wiki/Comparison_of_media_players)

Technorati: <a href="http://technorati.com/tag/media" rel="tag">media</a> &#8211; <a href="http://technorati.com/tag/html" rel="tag">html</a> &#8211; <a href="http://technorati.com/tag/blog" rel="tag">blog</a>
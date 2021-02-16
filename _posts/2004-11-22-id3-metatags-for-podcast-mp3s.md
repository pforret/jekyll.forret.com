---
id: 80
title: ID3 metatags for podcast MP3s
date: 2004-11-22T19:52:40+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/11/22/id3-metatags-for-podcast-mp3s/
permalink: /2004/11/22/id3-metatags-for-podcast-mp3s/
categories:
  - podcast
---
There are 2 kinds of MP3 files I regularly download and throw on my iPod: podcasts and DJ mixes. Both suffer from the same problem: chaos and inconsistency in the usage of the ID3 metatags:

  * &#8216;Artist&#8217; and &#8216;Album&#8217; are not filled in 
  * the &#8216;Album&#8217; tag is used for the free-text description of the content 
  * Some podcasters keep the &#8216;Artist&#8217; field constant, some the &#8216;Album&#8217; field, some change their logic every now and then 
  * The &#8216;Title&#8217; field always starts with the same 50 characters, so that if you see a bunch of them listed on you iPod, there&#8217;s no telling them apart

[ID3](http://www.id3.org/) was clearly developed for CDs/albums and the podcasts/mixes above don&#8217;t really fit into that mould. Let&#8217;s elaborate on this.  
There are actually two main types of albums:

the &#8216;Artist&#8217; paradigm</p> 
:   [<img height="80" border="0" src="http://images-eu.amazon.com/images/P/B000001DTM.02.LZZZZZZZ.jpg" />](http://www.amazon.co.uk/exec/obidos/ASIN/B000001DTM/forretcom-21)A group or artists (e.g. &#8220;U2&#8221;) make a new album (e.g. &#8220;Achtung Baby&#8221;) at some point in time (e.g. 1991). All the songs on the album would have the same &#8216;Artist&#8217;, &#8216;Album&#8217;, &#8216;Genre&#8217; and &#8216;Year&#8217; tag. Each would have a different song title.</p> 
    
    the &#8216;Compilation&#8217; paradigm</p> 
    
    :   [<img height="80" border="0" src="http://images-eu.amazon.com/images/P/B0002XMELS.02.LZZZZZZZ.jpg" />](http://www.amazon.co.uk/exec/obidos/ASIN/B0002XMELS/forretcom-21)Here the &#8216;Album&#8217; tag is constant, but all other tags can change. Services like [GraceNote CDDB](http://www.gracenote.com/music/) or [FreeDB](http://freedb.org) actually link the main &#8216;Genre&#8217; and &#8216;Year&#8217; to the album, not the song, so those would be the same for all the songs. But the &#8216;Song&#8217; and &#8216;Artist&#8217; tag can change for each track. ([CDDB actually stores a bit field](http://www.gracenote.com/gn_products/cddb.html) to indicate whether an album is a compilation) 

Then you have the special cases:

&#8216;Mixed/chosen by&#8217; paradigm</p> 
:   [<img height="80" border="0" src="http://images-eu.amazon.com/images/P/B00004S5Z6.02.LZZZZZZZ.jpg" />](http://www.amazon.co.uk/exec/obidos/ASIN/B00004S5Z6/forretcom-21)&#8220;A night at the Playboy Mansion&#8221; is a compilation album (because it features songs by a bunch of people) but the album is released as a Dimitri from Paris one. I would consider this a compilation, just to get the correct (different) artist for each song. For this type of compilation (e.g. the [LateNightTales](http://www.whoamusic.co.uk) series), CDDB often gets it wrong: gives all songs the same &#8216;Artist&#8217; field.</p> 
    
    the &#8216;Remixes&#8217; album</p> 
    
    :   [<img height="80" border="0" src="http://images-eu.amazon.com/images/P/B0002XK55U.02.LZZZZZZZ.jpg" />](http://www.amazon.co.uk/exec/obidos/ASIN/B0002XK55U/forretcom-21)Contains songs by one group/artist, but they have been remixed. Who is the &#8216;Artist&#8217; of a remix? I&#8217;m not even gonna mention (legal) copyright issues here. For the &#8220;Depeche Mode: Remixes 81-04&#8221;, the DM fans will claim that the artist is still the same, which means that all the remixer information has to go in the &#8216;Artist&#8217; field, and leads to titles like &#8220;Master And Servant (An ON-Usound Science Fiction Dance Hall Classic &#8211; Adrian Sherwood)&#8221;. Do you want these tracks to show up when you select &#8216;Artist&#8217; = &#8220;Depeche Mode&#8221; as your playlist? I guess you would.</p> 
        
        &#8230;</p> 
        
        :   

**PODCASTS**  
So in what mould would podcasts fit? Let&#8217;s take three examples:

  * [Daily Sourcecode](http://radio.weblogs.com/0001014/categories/dailySourceCode/)  
    Adam is a podcasting pioneer so he has already figured out how to use the metatags on his MP3s:</p> 
![](http://www.pixagogo.com/S5O9iF!ik9WX4XwUTcVLXMUkfPfBSMQbXx7jMNBQ!SiHJNBy3Ay9zVRvtObJih8L!v9xA2CfUV20Myf8Kwe7yYcNueQTErEUc0POGxH1pe-xA_/podcast_DSC.jpg) </p> 
    
    Title: &#8220;DSC-2004-11-20&#8221;</p> 
    
    :   only 14 characters, to make sure you see the whole title on your iPod. Also, when you sort all songs alphabetically on &#8216;Title&#8217;, they are also sorted (reverse) chronologically. For a daily/weekly podcast, this makes a lot of sense. If the title contained a list of topics, it would be very hard to recall which ones you have already heard, whereas now you just need to remember how many days backlog you have.</p> 
        
        Artist: &#8220;Adam Curry&#8221;</p> 
        
        :   Well, the SourceCode is a one-man-show, so this is the only right &#8216;Artist&#8217; field!</p> 
            
            Album: &#8220;1st cast from the cottage&#8221;</p> 
            
            :   This is the tricky one. The &#8216;Album&#8217; field is the only one left to throw in some information on the contents, so that it shows up on the iPod. But having free-text bogus &#8216;Album&#8217; names in iTunes, means that the &#8216;Album&#8217; drill-down becomes very cluttered. A solution would be to use a &#8220;Daily Sourcecode: &#8230;&#8221; as &#8216;Album&#8217;, but unfortunately, the iPod only lets the &#8216;Title&#8217; field scroll when it&#8217;s too long, not the other fields. So you could get &#8220;Daily Sourcecode: some ranting abou&#8230;&#8221; as &#8216;Album&#8217; and that wouldn&#8217;t explain much. If Adam would have a lot of personal podcasts, then this should be &#8220;Daily Sourcecode&#8221;, and all variable information should go into the &#8216;Title&#8217; field. The way Adam did it, is better for iPod usage, and less for iTunes usage.</p> 
                
                Genre: &#8220;Podcast&#8221;</p> 
                
                :   Most podcasts put the &#8216;Genre&#8217; to &#8220;Podcast&#8221; or &#8220;Speech&#8221;. This is a very good practice, since you can use a Smart Playlist on your iPod that shows you all the files with Genre = &#8220;Podcast&#8221; and Play Count = &#8220;0&#8221;, i.e. &#8220;all new podcasts&#8221;. 

  * [ITConversations](http://www.itconversations.com/)  
    This is a great podcast, but not a one-man show (so there are different &#8216;Artists&#8217;). Doug Kaye has been publishing since 2002 so also here the ID3 tags are well thought through:</p> 
![](http://www.pixagogo.com/S5O9iF!ik9WX6y6Ary1nsTZ3pASOKNtj!MhhHzcCQ-nLwqM4qc!b!ld1TgOKdTfMNZx!fu-YK!FRRwJftWdMEdTTTRSYt86YKsL0pTfsZbuH8_/podcast_ITC.jpg) </p> 
    
    Title: &#8220;November 18, 2004&#8243;/&#8221;Elections 2004&#8221;</p> 
    
    :   For recurring programs with various topics (Gillmor Gang) just the date, and for events a short topic description. Best of both worlds!</p> 
        
        Artist: &#8220;The Gillmor Gang&#8221;/&#8221;Ed Cone&#8221;</p> 
        
        :   The &#8216;Artist&#8217; refers to the speaker(s) of the program.</p> 
            
            Album: &#8220;IT Conversations&#8221;/&#8221;Bloggercon III&#8221;</p> 
            
            :![](http://www.pixagogo.com/S5!pg7swZZxdHvEj25nCU8RASpU!uZo!K6CACP7B61d6!B8h2S6voIRRBA4rGQWTjf-bta26aJfFu!EF0BGjc4yFvt18CqdpuWuw4TYiYmSmc_/podcast_ITC2.jpg) ITConversations can be compared to a &#8216;Record Label&#8217; that produces &#8216;Compilations&#8217;. There is a &#8216;Gnomedex 4.0&#8217; compilation, a &#8216;Bloggercon III&#8217; compilation, and a general &#8216;IT Conversations&#8217; album that includes the Gillmor Gang.</p> 
                
                Genre: &#8220;Speech&#8221;</p> 
                
                :   Consistently used in all podcasts.</p> 
                    
                    Copyright: &#8220;RDS Strategies LLC&#8221;</p> 
                    
                    :   Interesting information, but no way to find out who RDS is, or how to contact them in case you would want to redistribute the content 

  * [WeFunk Radio](http://www.wefunkradio.com/)  
    Great music, but the MP3 tags leave something to be desired:</p> 
![](http://www.pixagogo.com/S5D5nbjPgLxIaSIjrbVW58PCkszrc6TOVNtSyxme1TfQSHC62Es!qt7QvJyt9yvJLGScXFTBQbInBcDLku7RnyIV0Bn3DcTylF1cnsSGCz6xQ_/podcast_WEFUNK.jpg) </p> 
    
    Title: &#8220;WeFunk\_Show\_354_2004-11-06&#8221;</p> 
    
    :   Just too long, and clearly the same as the filename (so underscores instead of spaces). Better would be: &#8220;WeFunk 2004-11-06&#8221; or &#8220;WeFunk Show #354&#8221;.</p> 
        
        The rest: empty</p> 
        
        :   Obviously not good 

Some more remarks:

  * If you have a website and you want visitors, include the URL in the metatags. The MP3 might start leading its own life (get copied, transferred) and an interested listener might not have seen the RSS/site the MP3 was published on. 
  * Why not include a link to a [Creative Commons license](http://creativecommons.org/technology/embedding)? 
  * With the ID3v2 tags, the tags should be in the beginning of the MP3 file. A cache/proxy could start streaming the MP3 and adapt e.g. &#8216;Copyright&#8217; and &#8216;Genre&#8217; fields in the first 5KB.
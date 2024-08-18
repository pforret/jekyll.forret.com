---
title: 'Migrating from blogspot to a ’real’ blog'
date: 2005-12-23T10:37:00+01:00
author: Peter
layout: post
permalink: /2005/12/23/migrating-from-blogspot-to-a-real-blog/
categories:
  - blogging
tags:
    - google
    - blogger
---

I have [often](/blog/2004/12/setting-up-new-blogger-site.html) [said](/blog/2004/10/podcasting-with-blogger.html) that Blogger is one of the easiest ways to get started for free with a blog. Even if you don't have an own domain name, you can start with a xyz.blogspot.com. However, there might come a time that you want to move that blog to another location: because you have bought your own domain, because you don't want to look like an newbie, &#8230; I've done that a couple of times (I have more than a dozen blogs on Blogger, and am now transferring the &#8216;serious' ones to my [www.smoothouse.com](http://www.smoothouse.com) domain) and these are some tips:

### Situation

  * you currently have a [Blogger](http://www.blogger.com) blog on **xyz.blogspot.com** 
  * you want to move all contents and continue blogging (with Blogger) on **www.example.com/xyz** 
  * This is NOT about moving to a WordPress/MoveableType blog on your own domain. That is a whole different story! 

### Prepare old pages on xyz.blogspot.com

  1. create a placeholder page that you can redirect to:  
    **www.example.com/xyz/index.html**  
    Take for instance the page that is currently on **xyz.blogspot.com/index.html**.  
    Remark1: you will probably need an FTP client to do the upload: [FileZilla](http://filezilla.sourceforge.net/) is excellent at unbeatable price (free).  
    Remark2: you might have to create the folder **/xyz** first. 
  2. change the Blogger template:  
    a) add the following redirect code right after the `<head ...>` tag:  
    `[meta http-equiv="refresh" content="2;url=http://www.example.com/xyz/"]` (_replace [ by < and ] by > &#8211; had to to this to avoid problems with my comment page_)  
    This will redirect both your visitors and the Google spiders to the new location.  
    b) add the following text in the page (e.g. just below the description <$BlogDescription$>):  
    `<p>This blog has now moved to <a href="http://www.example.com/xyz/">www.example.com/xyz</a>!</p>` 
  3. republish entire blog (and check the home page to see if you are redirected to the new page after 2 seconds) 
  4. add new post about the move (can be very short &#8220;We have moved&#8221; or might include an explanation &#8220;Finally have my own domain, &#8230;&#8221; 

### Create new pages on www.example.com

  1. in &#8220;Settings&#8221;/&#8221;Publishing&#8221;, choose the &#8220;Switch to FTP&#8221; and give your FTP publishing settings (check your ISP for that):  
    FTP Server: `ftp.example.com`  
    Blog URL: `http://www.example.com/xyz/`  
    FTP Path: `public_html/xyz/`  
    Blog Filename: `index.html`  
    FTP Username: `myusername`  
    FTP Password: `********` 
  2. in &#8220;Settings&#8221;/&#8221;Site Feed&#8221;, change the following settings (again, these are just example settings, your own settings depend on your ISP's configuration):  
    Site Feed Server Path: `public_html/xyz/`  
    Site Feed Filename: `atom.xml` (this will normally be correct)  
    Site Feed URL: `http://www.example.com/xyz/atom.xml`
  3. in &#8220;Settings&#8221;/&#8221;Archiving&#8221; change following settings:  
    Archive Path: `public_html/xyz/archive/<br />
` Archive URL: `http://www.example.com/xyz/atom.xml<br />
` Archive Filename: (same as it was, or e.g. old_posts.html)  
    (this part was added on Jan 31st, because I had forgotten it in the real post)`` 
  4. change template: remove the `<meta ...>` and `This blog has moved ...` lines we added above 
  5. do a &#8220;Republish Entire Blog&#8221; 
  6. Voila! You are now ready to continue on your new blog location. 

### Optional: FeedBurner

  1. if you have a [Feedburner](http://www.feedburner.com) feed (which is always a good idea), you have to change the source feed URL. Change it to the same `http://www.example.com/xyz/atom.xml` you specified above. 
  2. Big advantage: all persons subscribed to your feed don't have to do anything. Eventhough your blog's location has changed, the feed URL stays the same! 

### Optional: recover xyz.blogspot.com domain

  1. the moment you started publishing via FTP, your old blogspot domain became available. To prevent someone else from getting it, create a nex Blogger blog and use your old name as publishing target 
  2. You can publish a new post about the move. Your old post pages will **NOT** be overwritten, only the index (&#8216;home') page of the blog. 

Technorati: <a href="http://technorati.com/tag/blog" rel="tag">blog</a> &#8211; <a href="http://technorati.com/tag/google" rel="tag">google</a> &#8211; <a href="http://technorati.com/tag/blogger" rel="tag">blogger</a> &#8211; <a href="http://technorati.com/tag/blogspot" rel="tag">blogspot</a> &#8211; <a href="http://technorati.com/tag/migrate" rel="tag">migrate</a> &#8211; <a href="http://technorati.com/tag/template" rel="tag">template</a>
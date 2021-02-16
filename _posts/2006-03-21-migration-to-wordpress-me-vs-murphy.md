---
id: 282
title: 'Migration to WordPress: me vs Murphy'
date: 2006-03-21T06:51:43+01:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/03/migration-to-wordpress-me-vs-murphy/
permalink: /2006/03/21/migration-to-wordpress-me-vs-murphy/
categories:
  - Google
  - Wordpress
---
Some of you might have noticed my recent domain dance: blog.forret.com to peter.smoothouse.com to peter.forret.com and back. You might ask yourself the questions: why was that necessary, couldn&#8217;t he have done it in a smoother way and why did it take so long? Those would be three relevant questions. I am used to managing DNS and blogs for other people, so my pride got hurt in the process too.

**PROLOGUE: WHY BOTHER?**  
I have been blogging since 2004 and have built blog.forret.com up to Google Pagerank 6 and Technorati rank 8000. For the non-bloggers amongst you: it&#8217;s an ego thing. I don&#8217;t want to start again from a PageRank 0, Technorati rank ∞. So that&#8217;s why I didn&#8217;t stop until I got it back.  
<!--more-->

  
**SAGA 1: Blogger -> Bluehost**  
I started blogging in Feb 2004 through Blogger. I published my blog through FTP, first on www.forret.com, then on a subdomain blog.forret.com (on a shared hosting account of mine). I had already started my migration towards WordPress from the moment I saw WordPresss 2.0 supported import from Blogger.  
[<img src="http://img.bluehost.com/234x60/1.gif" alt="Bluehost" style="float: right; border: 0px" />](http://www.bluehost.com/track/pforret/MIGRATE)I had taken an account with [Bluehost](http://www.bluehost.com/track/pforret/MIGRATE), that I already use for my [Argentine Tango &#8216;tangopedia&#8217; wiki](http://www.easytango.com/), my [dutch poetry blog](http://www.samoera.com/), my [podcast feed validator](http://www.smoothouse.com/podcast/validator.php) &#8230; The main domain name is smoothouse.com, with a (WordPress) blog on [www.smoothouse.com/blog](http://www.smoothouse.com/blog/). This would turn out to be a crucial detail.  
I had installed a new WordPress on peter.smoothouse.com, done the import from my Blogger account (posts + comments &#8211; really neat!), and was playing around with themes and plugins to see what I wanted. Then Google/Blogger made the unfortunate decision to [mark my blog as a spamblog](http://blog.forret.com/2006/03/blogger-snafu-emergency-migration-to-wordpress/) and consequently mess up my whole blog setup. I was thoroughly pissed off (not having been warned, my template gone &#8230;), so I decided to give them the finger and switch immediately. I &#8216;just&#8217; needed to convert my peter.smoothouse.com blog into a blog.forret.com. How hard could that be? Then I discovered that Bluehost has limits to what it can do on DNS subdomain hosting:

  * the DNS servers of your domain (i.e. forret.com) should be the Bluehost ones
  * through Bluehost DNS management, you cannot map a subdomain onto an external server, i.e. add a &#8216;A&#8217; or &#8216;CNAME&#8217; DNS record. I have a lot of [forret web tools](http://www.forret.com/tools/) running on a Windows server, so I need www.forret.com to keep pointing to that server. With Bluehost, that was a no-go
  * a subdomain XYZ.forret.com WILL ALWAYS map to the subfolder /XYZ &#8211; you have no choice there. In my case: blog.forret.com maps to the folder /blog. Unfortunately smoothouse.com/blog/ is running from that folder too.

I had no time to lose, so I thought: too bad, there goes the domain name. I went ahead and redirected all requests on blog.forret.com to <u>peter.smoothouse.com</u>. I then figured out I could temporarily switch my forret.com DNS servers to the Bluehost servers, get Bluehost to accept to host forret.com domains and then switch back to my regular DNS provider. Once that was done, I could create a peter.forret.com that mapped to folder /peter, the same location as peter.smoothouse.com.

So this was the situation after 1 day: all my blog posts and comments were imported by my new WordPress on <u>peter.forret.com</u>, but this domain was virtually unknown, all Google results still pointed to <u>blog.forret.com/&#8230;</u> urls.  
I got confirmation from Bluehost tech support that there was no way I could map blog.forret.com to /peter. Darn. I tried some scenarios (throw away my Smoothouse blog, merge them, &#8230;) but I saw no elegant solution. So I went to step 2.

**SAGA 2: Bluehost -> Dreamhost**  
[<img src="http://www.dreamhost.com/images/rewards/234x60-a.gif" alt="Dreamhost" style="float: right; border: 0px" />](http://www.dreamhost.com/r.cgi?166410)I ordered a new hosting account on [Dreamhost](http://www.dreamhost.com/r.cgi?166410). Which means I now have 3 hosting accounts (not counting my Blogspot blogs) &#8211; my parents will be so proud. I already knew that Dreamhost was less strict on the DNS stuff. It is a good idea to host your DNS management with them also, but you don&#8217;t have to. So I configured it to host blog.forret.com and equiped it with yet another WordPress. And then: _how does one migrate from one WordPress host to another_? WordPress cannot import from another WordPress, because it prefers the _database backup on host 1, database restore on host 2_ method. So all I needed to do was a backup of my WordPress database on Bluehost. Unfortunately, Murphy kicked in again and made all my phpMyAdmin backup trials terminate abnormally. It was impossible to get a decent backup, and so I sent another email to Bluehost support. In the meantime I had a brand new, pre-paid-for hosting account, doing absolutely nothing. I was not happy.

Bluehost contacted me a couple of days later with another method to take a database backup. That worked, I did the backup, restored it to my new Dreamhost set-up, copied the theme and plugins and had a perfect copy running. Halleluiah! I also copied all the Blogger-generated archives to a subfolder /blog, so that every URL in Google would still point to an existing page. These &#8216;old&#8217; static HTML pages still had the old layout, but I didn&#8217;t care for that then. I switched DNS for blog.forret.com over to the new Dreamhost server, and lo and behold, everything worked.

**SAGA 3: rewrite and redirect**  
So I had 2 sets of pages:

  * OLD: <u>blog.forret.com/blog/2006/03/whatever-title-was.html</u>, my Blogger archive, static HTML files
  * NEW: <u>blog.forret.com/2006/03/whatever-the-title-was/</u> page, dynamically served by my new WordPress.

Visitors to my &#8216;old&#8217; pages were still redirected to Blogger when they wanted to add a comment. That was not how I wanted it. So I continued further with my `mod_rewrite/mod_alias` experiments.  
The monthly archives were easy to add to .htaccess in the /blog/ folder:  
`RedirectMatch permanent /archive/([0-9][0-9][0-9][0-9])_([0-9][0-9])_.*$ http://blog.forret.com/$1/$2/`  
The root of the folder was also easy  
`RedirectMatch permanent /$ http://blog.forret.com/<br />
RedirectMatch permanent /index.html$ http://blog.forret.com/`  
which took care of <u>blog.forret.com/blog/</u> and <u>blog.forret.com/blog/index.html</u>

But then: what to do with individual posts? The title-to-URL translation by Blogger is different from the WordPress rules (e.g. Blogger drops &#8216;the&#8217;, &#8216;a&#8217; and other common words, the &#8216;é&#8217; is dropped instead of being translated into &#8216;e&#8217;). So I decided on using the `?s=` querystring parameter (used for search terms). After some trial and error, I ended up with:  
`RewriteEngine on<br />
RewriteBase /blog/<br />
RewriteRule ^([0-9][0-9][0-9][0-9])/([0-9][0-9])/([a-z]*)-([a-z]*).*$ http://blog.forret.com/$1/$2/?s=$3+$4 [R,L]`  
So every post is mapped onto a list of (partial) posts of the same month that contain the 2 first words of the title. It&#8217;s not perfect, but the best I could do. Undoubtedly some of my blog URLs that can be found in Google will map to an Error-404 page. Can&#8217;t make an omelet without breaking eggs.

So this was my struggle with Murphy&#8217;s Law. It took me slightly less than 2 weeks to get everything sorted out, but here I am back, on my beloved &#8216;blog.forret.com&#8217; domain. One thing was really easy: my blog feed. It is managed through [Feedburner](http://www.feedburner.com), so stayed the same during the whole procedure. I had to change the source feed URL a couple of times, but my subscribers should not have noticed too much.
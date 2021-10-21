---
id: 258
title: Migrating from Blogger to WordPress 2.0
date: 2006-02-26T21:20:00+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2006/02/26/migrating-from-blogger-to-wordpress-20/
permalink: /2006/02/26/migrating-from-blogger-to-wordpress-20/
categories:
  - Wordpress
tags:
  - bluehost
  - dns
  - RSS
  - Wordpress
---
Ever since I saw the new &#8216;import from Blogger&#8217; functionality in WordPress 2.0, I&#8217;ve known I would eventually migrate my main blog. Blogger is a great way to start blogging , but I want categories, easy template updating (without republish) and all the WordPress plug-in sweetness. As a dress rehearsal, I migrated my Dutch poetry blog first: [Zo helpt Poezie &#8230;](http://www.zohelptpoezie.be).

### START SITUATION

  * The site was managed with Blogger but published via FTP on one of my own domains. Because my old hosting system did not support domain mapping while serving multiple domains, I had to publish each domain in a subfolder. All blog&#8217;s files were stored under [www.samoera.com/poezie/](http://www.samoera.com/poezie/).
  * The individual posts (one poem per post) were saved as `/poezie/[YEAR]/[MONTH]/[TITLE].html` (e.g. /poezie/2004/04/02/kwijt-bart-moeyaert.html). I always used &#8220;\[POEM TITLE\] ([POEM AUTHOR])&#8221; as title for a post. Since Blogger removes special characters, this means that the file name typically ends with the author&#8217;s last name (something I will try to use later).
  * The monthly archives were saved as `/poezie/[YEAR]_[MONTH]_01_gedichten.html` (e.g. /poezie/2006\_02\_01_gedichten.html).

### STEP 1: NEW HOSTING

[<img border="0" src="http://img.bluehost.com/234x60/1.gif" />](http://www.bluehost.com/track/pforret/BLOGGER)I have taken an account with [**Bluehost.com**](http://www.bluehost.com/track/pforret/BLOGGER). For $6.95 they offer 10GB storage, 250GB bandwidth and the excellent [CPanel](http://www.cpanel.net/)/Fantastico combo to easily configure sites, install software and manage your DNS.  
My Bluehost hosting is on [www.smoothouse.com](http://www.smoothouse.com). I use it already for stuff like the [podcast feed validator](http://www.smoothouse.com/podcast/validator.php) and other [small Smoothouse development projects](http://www.smoothouse.com/blog/).  
Another option is [Dreamhost.com](http://www.dreamhost.com/rewards.cgi?pforret): $7,99 per month, 20GB storage, 1TB bandwidth(!) but a less handy management panel. Don&#8217;t pay more than this.

### STEP 2: SET UP WORDPRESS

Setting up WordPress with Bluehost is quite easy: you go to the Fantastico page, select WordPress, decide on a subfolder name (in my case: &#8220;poezie&#8221;), click &#8220;Install&#8221; and all the rest is automatic. After this, the blog is installed on -in my case- www.smoothouse.com/poezie. Later I will have to map the poetry site to this folder (without the `/poezie` folder showing)  
Even if you don&#8217;t have the Fantastico wizard, WordPress is one of the easiest programs to install. Then take one of the standard templates

### STEP 3: IMPORT FROM BLOGGER

On the new blog, go to the `/wp-admin/import.php` page, and give you Blogger username/password. Then select the Blogger Blog you want to import and then let the import wizard run. It will import ALL POSTS and ALL COMMENTS! This is friggin&#8217; awesome! It might take 5-10 minutes if you have a large blog.

### STEP 4: MOVE ARCHIVE

Now download your full archive (via FTP with e.g. FileZilla) to your local drive and upload them to where they should be after you moved the domain. In my case: I uploaded them to www.smoothouse.com/poezie/poezie which will be mapped to www.samoera.com/poezie/ once the DNS transfer is done.  
The reason for this: all your posts will have new URLs and you don&#8217;t want people who find your old URLs in Google and click on them to get a &#8220;Error 404 not found&#8221; page. So you start by copying them to the new hosting server. We will do some more fancy redirect stuff later.

### STEP 5: DNS UPDATE

Now comes the tricky stuff: you want your domain name to point to the new host. So you edit the A or CNAME record for the domain name. This will take somewhere between 1 and 24 hours to propagate.  
In my case (Bluehost) this also meant I had to transfer DNS management for all subdomains to Bluehost (i.e. change the SOA records). Bluehost requires you to this because the whole DNS management is linked to the Fantastico wizards. In this case it just meant that it took a while longer. I then mapped the www.samoera.com domain to map to the same /poezie folder I just created.  
Once that the transfer is done, all your URLs should continue to work (since you took care of that in step 4)!

### STEP 6: CHANGE CONFIGURATION

Change WordPress root path to www.samoera.com instead of www.smoothouse.com/poezie/ (WordPress will adapt all links on the blog pages). I removed the index.html from archive root ([www.samoera.com/poezie](http://www.samoera.com/poezie/)) because a lot of sites link to it and replaced it by a index.php that redirects to [www.samoera.com](http://www.samoera.com).  
OPTIONAL: you can play with Apache Redirect/Rewrite rules to take every visitor to one of the old URLs automatically to the new URL. What I tried was:  
`<br />
### for the archives: easy to do!<br />
RedirectMatch permanent /poezie/([0-9][0-9][0-9][0-9])_([0-9][0-9])_01_.*html$ http://www.samoera.com/$1/$2/<br />
### for the post pages: this would have worked if Apache didn't have a bug<br />
#RedirectMatch permanent /poezie/([0-9][0-9][0-9][0-9])/([0-9][0-9])/.*-([a-z]*).html$ http://www.samoera.com/$1/$2<font color="#ff0000">/?s=$3</font>`  
I tried to use the fact that the author&#8217;s last name (a quite &#8216;unique&#8217; word) was the last word before the .html to construct queries like: [www.samoera.com/2006/01/?s=tellegen](http://www.samoera.com/2006/01/?s=tellegen) (which shows all posts from Feb 2006 with the string &#8216;tellegen&#8217; in the text &#8211; which almost always translates into 1 post). However, due to a bug in Apache (the &#8216;?&#8217; before the querystring is always translated into `%3f` and this results in invalid URLs) I haven&#8217;t found the right way to do it yet. I could have used  
`RedirectMatch permanent /poezie/([0-9][0-9][0-9][0-9])/([0-9][0-9])/.*html$ http://www.samoera.com/$1/$2/` but this maps onto a whole month &#8211; or up to 10 poems. Maybe I&#8217;ll find some other trick.

### STEP 7: EXTERNAL STUFF

Change your [Feedburner](http://www.feedburner.com) source to the new URL. Everyone that&#8217;s subscribed stays subscribed. Ain&#8217;t that neat? You don&#8217;t have a Feedburner feed? What, you only had Blogger Atom feed? Shame on you. Go get one!
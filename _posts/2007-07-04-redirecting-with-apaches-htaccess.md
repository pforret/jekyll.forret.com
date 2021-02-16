---
id: 641
title: 'Redirecting with Apache&#8217;s .htaccess'
date: 2007-07-04T14:09:27+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2007/07/redirecting-with-apaches-htaccess/
permalink: /2007/07/04/redirecting-with-apaches-htaccess/
categories:
  - Linux
---
When you migrate web sites from one place to another, and the URLS change, you don&#8217;t want to lose visitors that still use the old links. If your &#8216;old&#8217; website ran on Apache, you can use its mod\_alias/mod\_rewrite functionality to automatically redirect to the new URL. This involves adding redirect rules to the `.htaccess` file in the base folder of the redirects. Some examples:

**Generic structure of the .htaccess redirects**  
`<br />
<strong><a href="http://httpd.apache.org/docs/1.3/mod/mod_alias.html#redirect">Redirect</a></strong> permanent /(old url) (new url)<br />
Redirect ... (add all your one-2-one redirects here)<br />
RedirectMatch permanent ^/old_stuff/.*html$ http://www.example.com/<br />
RedirectMatch ... (add your catch-all redirects here)</p>
<p><strong>RewriteEngine</strong> on<br />
<strong>RewriteBase</strong> /blog/<br />
<strong><a href="http://httpd.apache.org/docs/1.3/mod/mod_rewrite.html#RewriteRule">RewriteRule</a></strong> ^([regex])$ http://blog.example.com/$1   [R,L]<br />
RewriteRule ... (add all your variable redirects here)`

**EXAMPLE: old Blogger site (on your own server) to new WordPress site**  
I&#8217;ve done [a migration from a blog published by Blogger (via FTP) onto my own webspace](http://blog.forret.com/2005/12/migrating-from-blogspot-to-a-real-blog/), to a blog run by WordPress. I&#8217;ve used the following Rewrite rules to handle the redirections.  
* HOMEPAGE:  
redirect /index.html and / to your new blog URL  
`Redirect permanent / http://blog.example.com/<br />
Redirect permanent /index.html http://blog.example.com/`

* FEED:  
redirect e.g. /atom.xml to your Feedburner feed  
`Redirect permanent /atom.xml http://feeds.feedburner.com/(exampleblog)`

* ARCHIVES:  
redirect e.g. /archive/2005\_03\_posts.html to the new WordPress archives  
`RedirectMatch permanent /archive/([0-9][0-9][0-9][0-9])_([0-9][0-9])_.*$ http://blog.example.com/$1/$2/`

* POST PAGES:  
This is tricky, because Blogger and WordPress do not use exactly the same rules for constructing the text-like URL (the &#8216;post slug&#8217;). E.g a post called _how-to-podcast-with-blogger-and.html_ on my old Blogger site became _how-to-podcast-with-blogger-and-smartcast/_ on the new WordPress one. So what I did consisted of 2 type of rules:  
a) redirecting individual pages  
`Redirect permanent 2004/10/how-to-podcast-with-blogger-and.html http://blog.example.com/2004/10/how-to-podcast-with-blogger-and-smartcast/`  
b) a generic rule for the others (this uses Rewrite instead of RedirectMatch!): each page is redirected to a search on the WordPress blog within the correct month with the two first words of the title:  
`RewriteRule ^([0-9][0-9][0-9][0-9])/([0-9][0-9])/([a-z0-9]*)-([a-z0-9]*).*$ http://blog.example.com/$1/$2/?s=$3+$4  [R,L]`  
This method is far from perfect, but will bring visitors a lot closer to the right page. If you use pretty distinctive words for titles (e.g. &#8220;[Myspace: bulletin and other spam](http://blog.forret.com/2006/10/myspace-bulletin-and-other-spam/)&#8220;), chances are the right page show up first. If you start all your posts with &#8220;The ten best ways to &#8230;&#8221; then you will need a more sophisticated rule; e.g. using the 6th and 7th word:  
`RewriteRule ^([0-9][0-9][0-9][0-9])/([0-9][0-9])/[a-z0-9]*-[a-z0-9]*-[a-z0-9]*-[a-z0-9]*-[a-z0-9]*-([a-z0-9]*)-([a-z0-9]*).*$ http://blog.example.com/$1/$2/?s=$3+$4  [R,L]`

**Not losing the querystring**  
Redirect and RedirectMatch cannot redirect to a URL with a querystring (e.g. to `newpage.php?param1=val1&param2=val2`). For that you will need to use the RewriteRule. An example: redirect all links like test.asp?param=value on the old domain to the new domain while keeping all querystring parameters:  
`RewriteRule ^tools/test.asp??(.*)$  http://web.example.com/tools/test.asp [L,QSA]`  
where the QSA = (query string append) keep existing querystring, and L = (last rule) stop looking further for rule matches.
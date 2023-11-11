---
title: No life without CURLs
date: 2004-05-03T13:10:23+02:00
author: Peter
layout: post
permalink: /2004/05/03/no-life-without-curls/
categories:
  - windows
---
If you're a web server administrator &#8211; as I am &#8211; every now and then, someone yells at you _&#8220;The site is down, fix it!&#8221;_.  
A tool you should always keep handy is [CURL](http://curl.haxx.se). It's a command-line web client (multi-platform &#8211; I use it on Win2K), that allows you to see the conversation between a web server and a client (like e.g. your browser).  
Let's say if you check out a page like this: `curl -I http://someserver.com/whatever`, you could get

  * `curl: (6) Couldn't resolve host someserver.com'`  
    &nbsp;&nbsp;&nbsp;can you CURL www.google.com? => you're using a wrong domain name (DNS record does not exist)  
    &nbsp;&nbsp;&nbsp;you can't CURL anything => your DNS settings are wrong, or your DNS server does not work as expected 
  * `curl: (7) Connect failed`  
    &nbsp;&nbsp;&nbsp;there is no web server answering on that port  
    &nbsp;&nbsp;&nbsp;=> is the server down? does site run on other port? does a restart help? 
  * `HTTP/1.1 401 Access Denied  [WWW-Authenticate: Basic realm="someserver.com"]`  
    &nbsp;&nbsp;&nbsp;you have to log in to this page &#8211; your browser would pop up a username/password screen 
  * `HTTP/1.1 403 Access Forbidden`  
    &nbsp;&nbsp;&nbsp;there is no &#8216;default' document in the folder you are requesting  
    &nbsp;&nbsp;&nbsp;=> option 1: there should be a document index.html, default.htm, &#8230; in each folder  
    &nbsp;&nbsp;&nbsp;=> option 2: you want the folder to be browsable, so you have to configure this on the server 
  * `HTTP/1.1 404 Object Not Found`  
    &nbsp;&nbsp;&nbsp;the document you ask for does not exist.  
    &nbsp;&nbsp;&nbsp;=> are you asking for the right document (typo)? on the right server? 
  * `HTTP/1.1 500 Server Error`  
    &nbsp;&nbsp;&nbsp;typically only for dynamic pages (asp/php/cgi), where the program code contains an error and there is no HTML result that can be shown.  
    &nbsp;&nbsp;&nbsp;=> go look into the web server or program logs in order to find the bug. 
  * `HTTP/1.1 302 Found  [Location: http://someotherserver.com/somepath]`  
    &nbsp;&nbsp;&nbsp;the site is redirecting you to some other URL, which itself might give an error 404/403/connect failed/&#8230;  
    &nbsp;&nbsp;&nbsp;302 codes are not errors, it's a common way of sending browser to the right location.  
    &nbsp;&nbsp;&nbsp;(for example: if this 302 redirects you to a wrong port http://someserver.com:88/whatever and nothing responds on that port, in your IE browser it looks like someserver.com is failing, whereas it really is someserver.com:88) 
  * `<b>HTTP/1.1 200 OK</b>`  
    &nbsp;&nbsp;&nbsp;This is the &#8216;normal' result of asking a web page.</p> 

For SSL/HTTPS problems, you better use `curl -Ivk`, because it gives you information on the server certificate.

Have CURL installed on all your machines, Linux or Windows. Actually, add [unxutils.sourceforge.net](http://unxutils.sourceforge.net/) to your Windows machine, so you can work with gawk and wget too.

CURL is not the same as a real browser (especially when working with cookies/sessions), but it can help you solve 90% of typical web server problems. If the problem is browser-related, and you want to see the actual conversation between your browser and the web server, use the [Ethereal network protocol analyzer](http://www.ethereal.com).

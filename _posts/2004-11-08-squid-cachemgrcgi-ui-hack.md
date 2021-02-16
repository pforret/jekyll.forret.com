---
id: 432
title: Squid cachemgr.cgi UI hack
date: 2004-11-08T16:01:00+01:00
author: Peter
layout: post
guid: http://blog.forret.com/2004/11/squid-cachemgrcgi-ui-hack/
permalink: /2004/11/08/squid-cachemgrcgi-ui-hack/
categories:
  - Linux
---
Squid has a little system statistics viewer built-in:

> The cache manager (cachemgr.cgi) is a CGI utility for displaying statistics about the squid process as it runs. The cache manager is a convenient way to manage the cache and view statistics without logging into the server.  
> (from [Squid FAQ](http://www.squid-cache.org/Doc/FAQ/FAQ-9.html))

The only thing is &#8230; it&#8217;s so ugly! It uses plain HTML and cannot be customized, the FAQ says. However, there is a way to do it:



  * copy `cachemgr.cgi` to `cachemgr2.cgi` so if you do something wrong, the original is not lost.
  * open the CGI file in a text-editor. I used `vi`, but if you&#8217;re not used to working with it, use something else (emacs?).
  * in the binary file, look for some text portions that look like HTML code
  * while keeping in mind that the # of characters should remain the same, change the <title> and <style> to something that suits you. You will have to do this at 2 locations in the file: one for the homepage template and one for the other pages&#8217; template.
  * suggestion: just let the CGI use a `style.css` file that you drop into the same folder.  
    `<link rel="stylesheet" type="text/css" href="style.css" mce_href="style.css" />` and fill up with spaces to keep the same # characters
  * verify that the `cachemgr` and the `cachemgr2` have the same # bytes
  * now use `cachemgr2` to display your statistics.
I did something a bit different (I wanted to use the CSS of my own website), so I &#8216;ll show you the difference between the two versions.  
In order to get to the following comparison, I did a `strings cachemgr.cgi > cachemgr.txt` to extract only the text parts, and I did a `<b>diff</b> cachemgr.txt cachemgr2.txt` to compare both files. You cannot do a file comparison of 2 binary files.  
`<br />
<em>173,174c173,174</em><br />
< <HTML><HEAD><TITLE>Cache Manager Interface</TITLE><br />
< <STYLE type="text/css"><!-- BODY{background-color:#ffffff;font-family:verdana,sans-serif} --></STYLE></HEAD><br />
---<br />
> <HTML><HEAD><TITLE>Cache Manager (pforret)</TITLE><br />
> <link rel="stylesheet" type="text/css" href="http://www.forret.com/forret/forret.css" mce_href="http://www.forret.com/forret/forret.css" /> </HEAD><br />
<em>199c199</em><br />
< <STYLE type="text/css"><!-- BODY{background-color:#ffffff;font-family:verdana,sans-serif} TABLE{background-color:#333333;border:0pt;padding:0pt}TH,TD{background-color:#ffffff}--></STYLE><br />
---<br />
> <link rel="stylesheet" type=text/css href="http://www.forret.com/forret/forret.css" mce_href="http://www.forret.com/forret/forret.css"><!-- TABLE{background-color:#333333;border:0pt;padding:0pt} TH,TD{background-color:#ffffff}--></STYLE><br />
`
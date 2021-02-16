---
id: 361
title: Google Site Search in Blogger
date: 2006-06-28T10:39:07+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/06/google-site-search-in-blogger/
permalink: /2006/06/28/google-site-search-in-blogger/
categories:
  - Google
---
Just so I don&#8217;t forget, this is how to put a Google Site Search (search within your domain) in your [Blogger](http://www.blogger.com) template:

<pre>&lt;FORM METHOD="GET" ACTION="http://www.google.com/search"&gt;
&lt;INPUT TYPE="hidden" name="num" value="10" /&gt;
&lt;INPUT TYPE="hidden" name="hl" value="en" /&gt;
&lt;INPUT TYPE="hidden" name="as_sitesearch" value="&lt;$BlogURL$&gt;" /&gt;
&lt;INPUT TYPE="text" NAME="as_q" style="width: 100px;" /&gt;
&lt;INPUT TYPE="submit" value="Search!" /&gt;
&lt;/FORM&gt;
</pre>

Copy/Paste into your Blogger sidebar and off you go!
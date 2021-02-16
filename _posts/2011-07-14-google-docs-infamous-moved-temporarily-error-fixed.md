---
id: 1277
title: 'Google Docs&#8217; infamous &#8220;Moved Temporarily&#8221; error &#8211; fixed!'
date: 2011-07-14T17:40:47+02:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1277
permalink: /2011/07/14/google-docs-infamous-moved-temporarily-error-fixed/
image: /wp-content/uploads/2011/07/docs_publish1.png
categories:
  - Google
tags:
  - api
  - csv
  - docs
  - export
  - Google
  - publish
  - spreadsheet
---
[<img loading="lazy" class="alignright wp-image-1278 size-medium" title="docs_publish" src="http://blog.forret.com/wp-content/uploads/2011/07/docs_publish1-276x300.png" alt="" width="276" height="300" srcset="https://blog.forret.com/wp-content/uploads/2011/07/docs_publish1-276x300.png 276w, https://blog.forret.com/wp-content/uploads/2011/07/docs_publish1.png 525w" sizes="(max-width: 276px) 100vw, 276px" />](http://blog.forret.com/wp-content/uploads/2011/07/docs_publish1.png)  
I store quite a lot of info in Google Spreadsheets, for the obvious reasons:

  * anyone can edit from any place, even at the same time
  * the servers are more reliable than a server at the office
  * I can use the info (with CSV/Excel export) in other programs through a web link

But there is a problem popping up at random moments with that last export or &#8216;publish&#8217; functionality. Sometimes when you download the published link of a CSV export (through [curl](http://curl.haxx.se/)), you get an error &#8216;_Moved Temporarily &#8211; The document has moved_&#8216; with a redirect to a www.google.com address. And if you don&#8217;t follow HTTP 302 redirects, you can&#8217;t get to the actual content. In the past I&#8217;ve always worked around it or waited until the error went away, but today I searched a bit further. So for [those](http://stackoverflow.com/questions/1646073/not-able-to-access-google-spreadsheet-from-app-engine-moved-temporarily) [who](http://stackoverflow.com/questions/5834821/read-csv-fails-to-read-a-csv-file-from-google-docs) [have](http://www.mail-archive.com/google-docs-data-apis@googlegroups.com/msg01998.html) the same question: read and learn!

The redirect is actually for authentication. Although I publish without requiring signing in, so one would expect no authentication process, there actually is one. See what it does (I used _wget_ in verbose mode to get the HTTP headers):

<pre class="wp-block-code"><code>>:~$ wget -v "https://spreadsheets.google.com/(...)&output=csv"
-- https://spreadsheets.google.com/(...)&output=csv
(...)
Location: https://www.google.com/... (first redirect)
-- https://www.google.com/(...)/ServiceLogin?=...
(...)
Location: https://spreadsheets.google.com/... (second redirect)
-- https://spreadsheets.google.com/(...)&output=csv&ndplr=1
(...)
Saving to: ...</code></pre>

So what is the solution: just add &#8220;**&ndplr=1**&#8221; to your URL and you will skip the authentication redirect. I&#8217;m not sure what the NDPLR parameter name stands for, let&#8217;s just call it: &#8220;**Never Do Published Link Redirection**&#8220;.
---
id: 1272
title: Repairing Amazon S3 downloads for IE
date: 2011-07-14T16:30:30+02:00
author: Peter
layout: post
guid: /?p=1272
permalink: /2011/07/14/repairing-amazon-s3-downloads-for-ie/
categories:
  - internet
tags:
  - amazon
  - cloud
  - s3
---
I use Amazon S3 for cloud storage of big digital-cinema files (up to 3GB) for distribution. It works fine most of the time, but I kept getting the odd complaint: &#8220;I can't download on my PC, I get an error&#8221;. Everytime I asked what browser they were using, it was Internet Explorer. I am a Google Chrome man, and I almost never do anything with IE, but still, customer is king, let's see what could be wrong. So I tested it myself with IE and yes, most files can be downloaded, but some couldn't. Sometimes one would get an empty page, sometimes the following: &#8220;_XML 5619: Incorrect document syntax_&#8221;

So I fire up  [Fiddler2](http://www.fiddler2.com/fiddler2/) &#8211; an invaluable tool to see what's going on under the hood of the communication between your web browser and the web server. I look at the client and server HTTP headers and see something interesting:

1) Download via Chrome

CLIENT:

> `User-Agent: Mozilla/5.0 (Windows NT 6.0) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30<br />
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8<br />
Accept-Encoding: gzip,deflate,sdch`

SERVER:

> `Content-Type: <strong>binary/octet-stream</strong><br />
Content-Length: 26176425<br />
Server: AmazonS3`

2) Download via IE for a file that can be downloaded:

CLIENT:

> `User-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)<br />
Accept-Encoding: gzip, deflate`

SERVER:

> `Content-Type: <strong>binary/octet-stream</strong><br />
Content-Length: 26176425<br />
Server: AmazonS3`

3) Download via IE for a file that can **NOT** be downloaded:

CLIENT:

> `User-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)<br />
Accept-Encoding: gzip, deflate`

SERVER:

> `Content-Type: <strong>application/x-zip-compressed</strong><br />
Content-Length: 687411306<br />
Server: AmazonS3<br />
` 

It was a consistent pattern: every time the Content-Type of a file was _x-zip-compressed_, I couldn't download . It might have something to do with [MS KB 841120](http://support.microsoft.com/kb/841120): the server that recompresses .zip files with gzip, and the browser mis-interpreting.

Anyway, I used [CloudBerry S3 Explorer](http://cloudberrylab.com/) to go and explicitly change every file's HTTP headers, and now I can download all files with IE. If I ever forget about this IE quirk, now I've written down the solution!
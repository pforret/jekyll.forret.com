---
id: 1333
title: 'Cleaning up an infected PHP server (Mal/Badsrc-M &#8211; Troj/PHPShll-B)'
date: 2012-10-29T15:45:24+01:00
author: Peter
layout: post
image: /wp-content/uploads/2020/06/image.png
permalink: /2012/10/29/cleaning-up-an-infected-php-server-malbadsrc-m-trojphpshll-b/
categories:
  - security
tags:
  - bash
  - malware
  - php
  - script
  - trojan
  - wordpress
---
I recently discovered that a number of sites of mine were considered unsafe by Google, Firefox, Yandex &#8230; The reason was they had detected malware being served to visitors of the site. I checked a bit further and I discovered it was the Mal/Badsrc-M &#8211; [Troj/PHPShll-B](http://nakedsecurity.sophos.com/2011/09/19/malware-wordpress-installations/) trojan. In each of my (WordPress and other) PHP files, the first line had been changed to:<figure class="wp-block-image size-large is-resized">

![](/wp-content/uploads/2020/06/image.png)

The file is easy to clean up: you remove the **eval** statement and that's it. Only, on this server several hundreds of PHP files (WordPress, MediaWiki, &#8230;) were affected. So I made a script to go through all of them and clean up. It uses the fact that

  * the whole injected statement is on the 1st line
  * no &#8216;decent', trustworthy program uses the _base64_ trick in its PHP code
  * <del>it moves the second <code>&lt;?php</code> to the second line and then removes the whole first line</del>
  * it does everything in 1 awk statement

So if you have the same problem, use a bash script like this and run it in the root of all your websites:

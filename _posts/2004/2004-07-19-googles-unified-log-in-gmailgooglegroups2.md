---
id: 44
title: 'Google&#8217;s unified log-in (Gmail/GoogleGroups2)'
date: 2004-07-19T18:29:32+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/07/19/googles-unified-log-in-gmailgooglegroups2/
permalink: /2004/07/19/googles-unified-log-in-gmailgooglegroups2/
categories:
  - Google
---
![Googles Gmail](http://mail.google.com/mail/help/images/logo1.gif)  
I just upgraded from Mozilla FireFox 0.8 to 0.9.2, for no other reason than because it was available. A sudden side-effect was that I could not login to Gmail anymore: I got an error 502. It still worked in IE, but FireFox is the browser I use for Gmail. I do unnecessary upgrading, I have multiple browsers, obviously I am not stopped by such a trivial error message.  
So I started to read the HTML code of the [Gmail login page](https://gmail.google.com/). It uses an IFRAME for the username/password form and lots of JavaScript, mainly for checking the browser brand/version. An IFRAME? The purpose seems to be to have within any xyz.google.com site the same login form: [Google Service Login Box](https://www.google.com/accounts/ServiceLoginBox). It always POSTs the form to itself and upon successful login, redirects the user to the right URL. It is currently used for Gmail, the new GoogleGroups2, the Google Web API account, but not for Adsense. 

Central authentication services (&#8216;single sign-on&#8217;) are a good and a bad idea: they create a single point of failure, but hopefully invite the developers to design their security very thoroughly. Microsoft has [Passport](http://www.passport.net). Yahoo has [Yahoo Login](http://login.yahoo.com). The latter uses e.g. the MD5 hashing algorithm in JavaScript to protect its forms.  
But Passport is [not](http://www.theregister.co.uk/2001/08/06/ms_passport_security_considered_harmful/) [perfect](http://avirubin.com/passport.html). And [Yahoo has had vulnerabilities](http://www.computerworld.co.nz/news.nsf/NL/A39CE646B1DA2397CC256DF2000D8A05). As Bruce Schneier puts it: &#8220;_Anyone can come up with a security system so clever that he can&#8217;t see its flaws_.&#8221;
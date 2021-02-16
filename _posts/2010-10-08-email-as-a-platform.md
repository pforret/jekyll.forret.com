---
id: 1191
title: 'Idea: email as a platform'
date: 2010-10-08T12:04:03+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2010/10/email-as-a-platform/
permalink: /2010/10/08/email-as-a-platform/
categories:
  - idea
  - technology
  - Web2.0
tags:
  - email
  - platform
---
**[<img loading="lazy" style="border-right-width: 0px; margin: 0px 0px 5px 5px; display: inline; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px" title="146354021_1c0f548dfe_m[1]" border="0" alt="146354021_1c0f548dfe_m[1]" align="right" src="http://blog2.forret.com/wp-content/uploads/2010/10/146354021_1c0f548dfe_m1_thumb1.jpg" width="175" height="244" />](http://blog2.forret.com/wp-content/uploads/2010/10/146354021_1c0f548dfe_m11.jpg)**Something has been bothering me for a while. I have a colleague that needs to post some files on a site every week, and she needs to do it via FTP. FTP is ‘geeky’ for most people. Their PC does not come with an FTP program installed, they never need it for daily web usage and they’re not sure how it is different from email/web upload. I ended up installing [Filezilla](http://filezilla-project.org/) for her and she manages, but it would be so much easier if I could tell her: just email it to <XYZ@example.com> and it will arrive on that FTP server. Sending email, everyone can do. 

Another issue I had is that I would like to offer a service (that involves audio manipulation of WAV files) and I would like people to send an email with the file attached and I send back the result. In both cases, the problem is the same: email now arrives in a mailbox and is expected to be handled manually. I would like a platform service: I pay for the usage of an email address, and every mail that arrives there triggers a number of actions that are automatic.

**Not just a service, a platform**

Of course I’m not the first one to think of this. Flickr allows for posting pictures via email (I use that a lot), you can send your blog posts via email with Tumblr, Posterous and even WordPress. Customer support services allow auto-responding on incoming emails with suggestions for resolutions. It’s just that all these services are specific to the provider. To do it, you have either poll for incoming email (check your POP3 box every N minutes) or build/configure an SMTP server that handles incoming email. If you’ve ever encountered the black magic involved in configuring a sendmail/postfix/qmail server, you know that’s not for everyone. Me as a web developer/hacker, I want to configure: mails sent to <XYZ@example.com> are posted to my web page with the email body, sender, attachments (as URL), or published via a private RSS feed, and that’s how I get them into my workflow.

The funny thing is that a much more limited communication method, SMS/texting, has these platforms. There’s Twilio, Fortumo, Tropo, that allow you to receive text messages and make them trigger things. The US providers even allow for setting up automated IVR (Interactive Voice Response – a.k.a. “Press 1 for …”) application through these services. 

**So, the idea**

So what could this platform look like?

  * I register for the service and I get the prefix ACME 
  * I then start defining my services: <acme.upload@example.com>, <acme.support@example.com>, <acme.register@example.com> 
  * I configure acme.upload to save attachments to an FTP server and send a confirmation email. 
  * I configure acme.support to send a confirmation email with a unique number and forward the email with this unique number in the subject. Also, I get an SMS. 
  * I configure acme.register to take .XLS files, convert them to TEXT and post them to a web service I have created. I also get the sent emails in an RSS feed. 
  * I now create my ‘public’ addresses: <upload@acme.com> / <support@acme.com> / <register@acme.com> and forward these to the email addresses I created above. 
  * I get daily/weekly reporting, spam detection, and unlimited scaling. </p> </p> </p> 

Do anything like this exist?
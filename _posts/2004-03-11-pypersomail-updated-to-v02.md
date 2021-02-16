---
id: 6
title: pyPersoMail updated to v0.2
date: 2004-03-11T21:55:20+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/03/11/pypersomail-updated-to-v02/
permalink: /2004/03/11/pypersomail-updated-to-v02/
categories:
  - internet
---
I actually use the script to send our customer mailings, so now it works ;-).  
<http://pypersomail.sourceforge.net/>

Some features:  
&#8211; sending personalised emails 1 by 1, using CSV file as input  
&#8211; throttling: the script waits for 60 seconds between batches of 500 mails, otherwise it can bring its SMTP server on its knees  
&#8211; progress: print a line of logging every 250 messages, so you see what&#8217;s happening

TODO:  
&#8211; automatically generate TXT template from HTML template  
&#8211; check for email address syntax (e.g. wrong TLD, no &#8216;@&#8217; sign, &#8230;)  
&#8211; send summary information to source email address when finished  
&#8211; find some system for processing of bounces  
&#8211; use a black-list of people never to send anything to
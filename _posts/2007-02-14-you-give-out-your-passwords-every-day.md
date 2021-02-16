---
id: 671
title: You give out your passwords every day
date: 2007-02-14T17:12:54+01:00
author: Peter
layout: post
guid: http://blog.forret.com/2007/02/you-give-out-your-passwords-every-day/
permalink: /2007/02/14/you-give-out-your-passwords-every-day/
categories:
  - security
---
_If you&#8217;re allergic to acronyms, don&#8217;t read on. I&#8217;ve reached an all-time <acronym title="Three Letter Acronym">TLA</acronym>/<acronym title="Four Letter Acronym">FLA</acronym> density high in the following article!_

[<img style="float: right" src="http://farm1.static.flickr.com/10/14497366_fc714e4397_m.jpg" alt="Lock - photo by mfshadow" />](http://www.flickr.com/photos/mfshadow/14497366/)**THE PROBLEM**  
Who knows the passwords you use for your email accounts? Who knows the password you use for your FTP account? Who knows the password to your blog admin page? There might be more than you thought! 

Imagine user John Doe, with username _jdoe_ who has the &#8216;strong&#8217; password &#8220;`p@ssw0rd`&#8220;. Let&#8217;s take a look at what conversation happens when his Outlook/Thunderbird email client connects to check for new messages, or when he uploads a new version of his website with Filezilla/Dreamweaver:

This is a typical [FTP conversation](http://www.w3.org/Protocols/rfc959/):

<pre>Response:	220 (ID of the FTP server)
Command:	USER jdoe
Response:	331 Password required for jdoe.
Command:	PASS <strong>p@ssw0rd</strong>
Response:	230 User jdoe logged in.
Command:	...
</pre>

This is a typical [POP3 (email) scenario](http://www.ietf.org/rfc/rfc1939.txt)

<pre>Command:	USER jdoe
Response:	+OK Password required for jdoe
Command:	PASS <strong>p@ssw0rd</strong>
Response:	+OK jdoe's maildrop has 2 messages (320 octets)
</pre>

_(remark: POP3 does have an APOP command that does not transfer the password in clear-text. It is however typically used for 2nd and following POP3 connections, using a piece of information that was given in the first transaction)_

[<img loading="lazy" style="float: right" src="http://farm1.static.flickr.com/134/390226502_34c2cc32a9_m.jpg" width="222" height="240" alt="Wordpress login" />](http://www.flickr.com/photos/pforret/390226502/ "Photo Sharing")Even more scary: when you log in to your blog/CMS software (that does not use a Google, Yahoo, MSN or Passport account), how does your password reach the server, you think? Encrypted? Not!

<!--more-->

  
In all those cases, the password was sent to the server in [clear text](http://en.wikipedia.org/wiki/Cleartext), i.e. readable and copy-able. Why is that bad? Anyone that is in the possibility to intercept the conversation, will have access to your password. You think that&#8217;s improbable? Well, let me introduce you to an elementary tool of any system administrator: the [packer sniffer](http://en.wikipedia.org/wiki/Sniffer) (e.g. [Ethereal](http://www.ethereal.com/)). This program will tell a network card to switch to &#8216;[promiscuous mode](http://en.wikipedia.org/wiki/Promiscuous_mode)&#8216; (listening to all network traffic instead of just those he participates in). It then allows the program to record any network conversation that passes on the local subnet (your office LAN, the Wifi network).

  * a LAN administrator (that guy with the [&#8220;I read your email&#8221; t-shirt](http://www.thinkgeek.com/tshirts/frustrations/31fb/)) can sniff anyone&#8217;s email (POP3) password and even the actual emails as they are downloaded by mail clients. I&#8217;m not saying he does, but he can.
  * that municipal Wifi network you connect to in that bar might also include a PC that records all FTP/POP3/HTTP conversations when they happen. You wouldn&#8217;t know.
  * same thing on conferences, meetings, when you just plug in or connect via Wifi to a network you don&#8217;t know.

Are FTP (RFC959 from 1985) and POP3 (RFC1939 from 1988) bad protocols? Not necessarily, it&#8217;s just that they were developed in an era where knowledgeable hackers were few, sniffing tools weren&#8217;t that prevalent and security wasn&#8217;t that big an issue. [SMTP (RFC821 from 1982)](http://www.ietf.org/rfc/rfc0821.txt) (for sending email instead of receiving) also started out with clear-text authentication, but since it was mostly used with only IP verification and without user/password, that was less of an issue. 

**SOME SOLUTIONS**

  1. PROTOCOL LEVEL: most modern protocols have been created/adapted to provide a more secure way of authentication, typically using salts, hashes and/or challenge-response systems, resulting in exotic names like e.g. [<acronym title="challenge-response authentication mechanism (with hashing algorithm) Message-Digest 5">CRAM-MD5</acronym>](http://en.wikipedia.org/wiki/CRAM-MD5).  
    Protocol changes are tricky, because there is (certainly for SMTP, POP3, HTTP and the likes) a huge installed base of &#8216;old&#8217; servers and clients that all have to be updated/patched to accept the new commands. Thanks to SMTP&#8217;s historical lack of security/authentication features, we now have an enormous spam problem (because anyone can send email on behalf of anyone to anyone else). Numerous proposals have been made to solve this, but if they include changes to the protocol, typically they don&#8217;t happen.
  2. TRANSPORT LEVEL: there is a generic mechanism based on PKI to start an authenticated and encrypted communication channel between two parties. It is called [<acronym title="Transport Layer Security">TLS</acronym>](http://en.wikipedia.org/wiki/Transport_Layer_Security) (successor of <acronym title="Secure Socket Layer">SSL</acronym>). Its best known application is HTTPS (URLs that start with `https://` and where the little lock is shown in the browser). But there is also FTPS, POP3S, SMTPS, IMAPS, &#8230; Since the protocol itself does not change, the server and client can be unaware of the fact that they run over a secure channel.  
    A concrete example: using [stunnel](http://www.stunnel.org/) to serve as [secure proxy of an insecure server](http://www.stunnel.org/examples/encrypt_services.html); all connections are encrypted between the outside world and the secure proxy, and the proxy just sends everything as-is to the actual server (but this insecure traffic is only visible on the server itself). 
  3. CONNECTION LEVEL: going still a level deeper, we can encrypt **all** traffic between two points (as opposed to the previous transport level, where it is always about the encryption of 1 channel, between 1 client and 1 server). [<acronym title="Virtual Private Network">VPN</acronym>s](http://en.wikipedia.org/wiki/VPN) work like that: you connect the client to the VPN server once, and all further traffic between them is encrypted. This is great for remote office connections and the like, but not an option for communicating with random servers.  
    This model was also used by [Google VPN for Wifi](http://google.blognewschannel.com/index.php/archives/2005/09/19/google-pulls-the-other-leg-with-secure-access/): you connect to any (insecure) Wifi network and the first thing you do is create a connection to the Google VPN gateway. From that moment, all traffic goes encrypted to the gateway and only then to the Internet, so that any rogue clients on the local Wifi network cannot see/understand the traffic that is passing by. Google has however limited access the software to the users of Google Wifi, the network operated by Google in San Francisco.

Next time: introduction into PKI encryption!
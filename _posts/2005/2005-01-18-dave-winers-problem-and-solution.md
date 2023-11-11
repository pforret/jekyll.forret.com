---
title: 'Dave Winer’s problem and solution'
date: 2005-01-18T11:37:42+01:00
author: Peter
layout: post
permalink: /2005/01/18/dave-winers-problem-and-solution/
categories:
  - spam
---
![Dave Winer](http://www.pixagogo.com/S5!bRz4QtUrC9nAN5ymeI1kzSot7bag3MMew8GHk2PJvQ6AMKpMLT6taL3zDP6hbkfTDoxKPs8a!2ki-Sekon!EnSGnRAa61jo1DbcU!ZNgM8_/DaveWiner.jpg)  
Dave Winer seems to be very excited about something but he can't say yet what it is:

> Last night I got an email from someone I've been wanting to hear from for a long time. There's a problem on the Internet, a big one, that only one entity can solve. The email outlined the solution and asked what I thought of it, and asked me not to say what it is publicly. I can live with that. I just want to mark this moment. A milestone. Real cooperation. I immediately implemented the feature on one of my sites. The same message was sent to a bunch of other people by the same person. I hope they did the same. When this is announced users everywhere will smile  
> (from [archive.scripting.com](http://archive.scripting.com/2005/01/14))

and a day later:

> Watch this space for an interesting announcement.  
> (from [www.bloggercon.org](http://www.bloggercon.org/2005/01/15#a3294))

First I thought it would be related to RSS. Maybe [RSS](http://blogs.law.harvard.edu/tech/rss) and [Atom](http://www.atomenabled.org/) are merging into 1 standard (but then what does he mean with _&#8216;implemented the feature on one of my sites'_?) or [Blogger](http://www.blogger.com) (Google) will now support RSS as well as Atom feeds (which would basically mean Atom dies)?

But speculation in the blogosphere tends to go in the direction of Google taking into account the `rel="nofollow"` attribute of a link, so bloggers can make a distinction between links that Google should follow (and transfer Pagerank to) or not. A promising solution for comment spam.  
(via [poorbuthappy.com](http://poorbuthappy.com/ease/archives/2005/01/17/2424/google-hits-comment-spammers-hard) / [gorissen.info](http://www.gorissen.info/Pierre/item/2005/1/17/einde-aan-comment-spam) / [phaedo.cx](http://phaedo.cx/archives/2005/01/16/relnofollow/))

Comment spam is a problem I almost never encounter. Most of my sites are created with Blogger, and they use a redirector script for outgoing links in comments:  
`http://www.blogger.com/r?http%3A%2F%2Fwww.example.com`.  
(cf [help.blogger.com](http://help.blogger.com/bin/answer.py?answer=808&topic=12))  
Neither [WordPress](http://codex.wordpress.org/Combat_Comment_Spam) nor [SixApart (Movable Type)](http://sixapart.com/pronet/comment_spam.html) mention in their comment-spam combat guide. If every blog software used this trick, it would make the comment-spamming tactic less attractive!
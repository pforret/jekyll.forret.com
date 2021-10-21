---
id: 487
title: 'MySpace: bulletin and other spam'
date: 2006-10-25T15:13:51+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/10/myspace-bulletin-and-other-spam/
permalink: /2006/10/25/myspace-bulletin-and-other-spam/
image: /wp-content/uploads/2006/10/TomMySpace-796x432-600x326.png
categories:
  - spam
tags:
  - hacking
  - myspace
  - spam
---
### MySpace spam

MySpace is a vast collection of web real estate begging to be spammed. I keep receiving spam bulletins from some of my MySpace friends, so this is a little explanation of what MySpace spam is and how it can be fixed:

### Tricks used by MySpace spammers

**Trick #1: hidden bulletin post form**  
As described by [ericis.com](http://www.ericis.com/posts/default.aspx?id=189), MySpace did not protect the bulletin submission page enough. Bulletins could be sent by an unsuspecting logged-in user through a hidden form, instead of only through the official submission form. So you might click on what seems to be just a link to a site/profile, but you are really sending a bulletin to all your friends. This mail might invite them to click on a link which hides another hidden form and &#8230;  
STATUS: This vulnerability has been addressed by MySpace, but whether it is completely fixed is another question.

**Trick #2: man-in-the-middle password theft**

You click on a link, and you are taken to what seems to be the MySpace login page. &#8220;_That&#8217;s weird_&#8220;, you think, &#8220;_I thought I was already logged in, but what the heck_&#8220;, you give your password and you get to the page you wanted to get to. In reality, the login page was not on a myspace.com server, but on a malicious site (they just used the exact same layout) and they now have your password (cf [chyna.wordpress.com](http://chyna.wordpress.com/2006/08/04/why-phish-myspace/))! They can now use automated scripts to log in and change your profile, or to send bulletins to all your friends. This password stealing technique is also called &#8216;phishing&#8217;.  
That sounds improbable? Well: it costs [$15 to send a bulletin to 100k](http://forums.digitalpoint.com/showthread.php?t=144917) MySpace &#8220;Friends&#8221;. Where do you think those 100.000 friends come from?  
A recent example: [Aug 27 2006](http://www.securityfocus.com/archive/1/444561/30/0/threaded).  
STATUS: the only way to protect against this would be to disable external links. I don&#8217;t see that happening, so this is still something to look out for!

**Trick #3: Cross-Scripting (XSS) or MySpace worms**  
As reported by [xavsec.blogspot.com](http://xavsec.blogspot.com/2005/12/new-myspace-xss-worm-circulating.html), [Kuro5hin](http://www.kuro5hin.org/story/2005/7/16/72023/9428) and [namb.la](http://namb.la/popular/tech.html), malicious Flash (SWF) files have been used to infect profiles: you get to a page, the SWF (which might be a visible animation or just hidden) detects that you are logged in on MySpace and uses a non-protected (unsanitized) variable to reset your MySpace name and profile.  
The first one of these was the &#8220;[Samy popularity worm](http://blog.outer-court.com/archive/2005-10-13-n73.html)&#8220;:

> 1 hour later, 9:30 am: You have 74 friends and 480 friend requests.  
> _Oh wait, it&#8217;s exponential, isn&#8217;t it. Shit._

STATUS: the known worms are blocked, new ones aren&#8217;t.

**Trick #4: fake MySpace profile pages**  
Profile pages that look like a real person (mainly female, young and attractive), but in the &#8216;Thank you for the add&#8217; comments the links are actually advertising for e.g. webcam sites. You get invited to become their friend and when you check out their profile page, you see the advertising. This could also be combined with any of the 3 above tricks for more damage. (via [photomatt.net](http://photomatt.net/2006/09/07/myspace-spam/))  
STATUS: if they misbehave too much, their profile might get deleted by MySpace. Otherwise, they&#8217;re still around.

The main reason why all this is possible on MySpace and not on most other sites is that

  * MySpace has a &#8220;everything is **allowed** except &#8230;&#8221; security policy for their content checking, instead of a safer &#8220;everything is **forbidden** unless &#8230;&#8221; approach.
  * MySpace allows anyone to insert whatever HTML + Javascript into their pages. JS is like a Swiss army knife evil: it can be very useful, but in the wrong hands, the effects can be devastating.

An example: at some point MySpace removed all `<script>` tags, but there were `<div id="mycode" expr="alert('hah!')" style="background:url('java<br />
script:eval(document.all.mycode.expr)')">` [tricks](http://namb.la/popular/tech.html) invented around that. Which MySpace then fixed. MySpace is continuously playing catch-up with inventive hackers.

I actually have some ideas of the hacks we will see in the future (it&#8217;s not that hard to predict), but I don&#8217;t want to help anyone that would use them, so I&#8217;ll just shut up. What I can say is:

### Protect yourself

  1. Do you get complaints from your friends about spam bulletins that were sent in your name? Bad sign!
  2. Check your &#8220;Sent&#8221; mail. Are there messages there that you did not send? Bad sign!
  3. Do you see friends on your list that you did not add yourself? Bad sign!
  4. Change your password: go to your &#8220;Account settings&#8221; and click &#8220;Change Password&#8221; (this reverses the effect of #2)
  5. Clean out your profile: go to your &#8220;Edit Profile&#8221; page and clean out the &#8220;About Me&#8221;, &#8220;I&#8217;d like to meet&#8221;, &#8220;Interests&#8221;, &#8230; text boxes. (this reverses the effect of #3)
  6. Don&#8217;t click on links in bulletins. Better still, don&#8217;t read your bulletins at all.
  7. If you unexpectedly get a MySpace login screen, make sure the URL starts with `http://login.myspace.com`.
  8. So if you use Myspace, use your head. Don&#8217;t download or install software from untrusted sources, even those apparently recommended by your friends ([Washington Post](http://blog.washingtonpost.com/securityfix/2006/05/when_spyware_performs_as_adver.html))
  9. [<img  style="float: right;" src="http://static.flickr.com/94/279062127_89fc490ffb_m.jpg" alt="Onslow (Keeping up Appearances)" width="240" height="180" />](http://www.flickr.com/photos/pforret/279062127/ "Photo Sharing")Only become &#8216;friends&#8217; with people you know or artists you know. This blonde chick from Houston with 5000 friends is dying to become your buddy? Chances are, &#8220;she&#8221; might actually look more like [Onslow](http://en.wikipedia.org/wiki/Onslow_(Keeping_Up_Appearances)). If that is actually your type, forget I said that.
 10. Go easy on the profile pimping. If you just take whatever HTML you get from some site and paste it in your profile, that&#8217;s like taking a drink from a stranger. Next thing you know you&#8217;re screwed.
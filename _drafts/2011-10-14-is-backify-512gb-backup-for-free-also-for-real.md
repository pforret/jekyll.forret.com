---
id: 1287
title: Is Backify (512GB backup for free) also for real?
date: 2011-10-14T22:54:59+02:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1287
permalink: /2011/10/14/is-backify-512gb-backup-for-free-also-for-real/
categories:
  - advertising
tags:
  - backify
  - backup
  - livedrive
  - online
---
**UPDATE 16 Nov 2011:**  
Message from Backify:

> _Dear Peter Forret,_  
> _First of all, we would like to thank you for using Backify. We hope you really liked our service and enjoyed using it._ _We regret to inform you that we can not provide free backup services anymore. All free Backify accounts will be closed on **November 22, 2011**._ _In order to prevent your account from deletion, please login into your account and update your Billing Details._

Message from LiveDrive:

> _We would also like to advise you that we have received a number of complaints about BACKIFY.COM from their customers and from industry organizations. We would like to advise you not to provide any credit card information to BACKIFY.COM. If you have provided credit card information to BACKIFY.COM then we would suggest contacting your card provider and informing them that your card may be used fraudulently. If BACKIFY.COM have charged your card for services not provided you should contact your card provider and ask them to initiate a chargeback procedure._

&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;-

I just read the [announcement](http://www.anandtech.com/show/4967/backify-up-to-512gb-of-free-online-storage) today of a very strong data backup offer: [backify.com](https://www.backify.com/) lets you use 512GB of backup space for free. If you compare that to the competition: [Dropbox](http://www.dropbox.com) and [Mozy](http://www.mozy.com) give you 2GB for free, [OpenDrive](http://www.opendrive.com), [SugarSync](http://www.sugarsync.com) and [Box.net](http://www.box.net) have a 5GB free account, although the latter has upped this to 50GB recently, when Apple also announced its 5GB free iCloud offering. [Microsoft Live SkyDrive](http://skydrive.live.com/) used to be the biggest free offer: 25GB (but no way to upgrade). So how can one company offer more than 20 times that space, and still not charge?

<img  class="alignnone" title="512 GB for free" src="http://farm7.static.flickr.com/6224/6244828930_c7428d73dd.jpg" alt="" width="500" height="295" /> 

There are a couple of things that made me doubtful.

  * **Too good to be true**: a previously unknown company (Google will try to correct a search on their name to Backupify, because the first mentioning of the company was yesterday) comes and offers you something HUGE for FREE. Hmmm. Where&#8217;s the catch?
  * **Business model doesn&#8217;t make sense**: if you offer any John Doe 512 GB, you can count on a lot of data coming in. There will always be some guys that will try to use all of it. You need thousands of terabytes, and those don&#8217;t come for free. You could use Amazon S3 or Microsoft Azure, but they will charge you $0.10 to $0.15 per month/GB. There is a [freemium model](http://en.wikipedia.org/wiki/Freemium) for storage, but the sweet spot seems to be: anything above 5 &#8211; 25 GB should be paid for.
  * **No believable team**: maybe this company has developed a new, revolutionary technology to make storage 10 times cheaper, but then they would show off their exceptional team. There would be a CTO or Chief Scientist with 30+ experience in data storage and some exotic patents in &#8216;_redundant sub-particle holographic storage_&#8216; or so. Here: nothing.
  * **Look and feel**: their page looks like it was made with a standard template and cheap stock photography. Like they couldn&#8217;t afford a decent web agency.
  * **Empty company blog**: that was a big red flag: they point to an empty blogspot as their &#8216;company blog&#8217;. This definitely smells like a scam.

<!--more-->So I started to dig deeper: what company is mentioned in the Terms & Conditions and the Privacy Statement? They talk about &#8216;Backify Internet Ltd&#8217;, but who knows if that company really exists. The address is interesting: it&#8217;s a Canadian one &#8220;Surrey, BC, Canada V3T 5L2&#8221;, that is shared with 2 other companies: 

[AptiQuant](http://en.wikipedia.org/wiki/AptiQuant) and atCheap. AptiQuant has come in the news some months ago with the article &#8220;_Is Internet Explorer For The Dumb?_&#8220;. It was a **[hoax](http://en.wikipedia.org/wiki/Hoax) study** (which was admitted afterwards), and the official explanation was that it was an effort &#8220;_to [create awareness](http://www.aptiquant.com/articles/396/) about the incompatibilities of IE versions 6.0 to 8.0_&#8220;. My thoughts: it was meant to drive traffic to the atCheap site, a comparison shopping site. Who is behind both companies? One person, Tarandeep Gill. And what was just added to that AptiQuant site? A link to Backify, free online backup. I checked the registration of the Backify domain: it&#8217;s the same guy. He registered the site in Feb 2009

So what does the Backify site actually offer? I downloaded the client, and here is the thing: it is not a &#8216;Backify&#8217; client, it is a [LiveDrive](http://www.livedrive.com/) client (for Windows). LifeDrive is a UK company, started by ex-[FastHosts](http://en.wikipedia.org/wiki/Fasthosts) people, notably founder Andrew Michael, who cashed £46mio or 72 mio $ when he sold his company. Also in the team (although non-executive) : [Nicholas Cowell](http://www.thesun.co.uk/sol/homepage/fun/gizmo/2757304/Simon-Cowell-helps-launch-Livedrive-online-back-up-solution.html), brother of Simon &#8216;Idol&#8217; Cowell, and a very rich UK real-estate entrepreneur. So these people do have cash, and, so it seems, a working product at pretty much the same prices as Backify is offering, except: they don&#8217;t have a 512GB for free offering, they only have a backup **trial for 2 weeks**! The Windows client works, you can upload files with it, and the files are actually stored at LiveDrive (I checked). The web interface doesn&#8217;t mention that I&#8217;m on a temporary plan. So LiveDrive seems to deliver.

<img  class="alignnone" src="http://farm7.static.flickr.com/6167/6244384663_f1837768e1.jpg" alt="" width="500" height="296" /> 

So what is my hunch: Backify (or Tarandeep) is just a [reseller for LiveDrive](http://www.livedrive.com/ForResellers), he pays 60$/month to get a Backify rebranded white-label online backup service, and LiveDrive runs the actual service. Noteworthy: neither the Terms of Use or the Privacy Statement mention the Livedrive company or product. Is the &#8216;512GB for free&#8217; Backify offer actually the LiveDrive &#8216;Unlimited backup trial, **free for 14 days**&#8216;, and so will it stop after 2 weeks? It&#8217;s either that, or Tarandeep has cut a better deal (&#8220;_let me offer a crazy amount of storage for free forever_&#8220;), which would be quite an accomplishment. Is it another stunt to drive traffic to atCheap (there are no links on the Backify site yet)? Is he branching out to a new niche? Time will tell. One thing is for sure: his press release has gotten huge coverage. And everyone seems to think Backify is a legit company.

[TL;DR](http://www.urbandictionary.com/define.php?term=tl%3Bdr): Is &#8220;512GB for free forever&#8221; also for real? My gut feeling says: no. Don&#8217;t put all your eggs in that basket.
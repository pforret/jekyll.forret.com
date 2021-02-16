---
id: 247
title: 'Why spam opt-out lists won&#8217;t work'
date: 2006-01-24T11:01:00+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2006/01/24/why-spam-opt-out-lists-wont-work/
permalink: /2006/01/24/why-spam-opt-out-lists-wont-work/
categories:
  - spam
---
![](http://us3.pixagogo.com/S5!bRz4QtUrC!BId1v47Bkf6F1JQW3yfpIqWI0aTGe1rJbtLV5rQkGJsy3GQoHvIrDibwVakU7ghlbog87Ygvr2pPsJZV-M1dbeUHCMKLt-P4_/spamkings.jpg)  
I was reading about a technique to discourage spammers: let an organised mob fill in thousands of fake submissions so that there is no way telling how to distinguish them from real responses. They targeted a known spammer, Alex Polyakov, currently #8 in [Spamhaus top 10](http://www.spamhaus.org/statistics/spammers.lasso) and he did feel the pain.

> During the 13-minute call, Polyakov claims that his &#8220;interest is only to make honest dollars.&#8221; As a peace offering, Polyakov proposes to create a global opt-out list, &#8220;the anti list of all anti lists.&#8221; Polyakov says he has no interest in sending spam to people who don&#8217;t want to receive it, and he guarantees that he will persuade all his spam-business associates to clean their mailing lists.  
> from [Spamkings blog](http://spamkings.oreilly.com/archives/2006/01/under_attack_spammer_begs_for_1.html) via [digg.com](http://digg.com/security/Kicking_A_Spammer_In_The_Nuts_Daily_Turns_Out_To_Be_Effective)

Let&#8217;s consider such a global opt-out list:  
DISTRIBUTED OPT-OUT LIST

  * let&#8217;s say it would be something like 1 million addresses (just a ballpark figure). All in lower case, with no funny characters.
  * In order to make sure the list is not used as a spamming list itself (since these guys are not known for playing by the rules), it should be communicated not as email addresses, but as a list of hashes (e.g. [MD5](http://en.wikipedia.org/wiki/MD5)/[SHA-1](http://en.wikipedia.org/wiki/SHA_hash_functions)) of email addresses. (Which means you cannot get back the email addresses from the hash)
  * SHA-1 is 160 bits or 20 bytes per address. MD5 is 128 bits or 16 bytes per address. MD5 is less secure but for this purpose, who cares (false positives are not a big issue).
  * The size of the list would be 16 bytes x 1 million = 16MB, which is manageable for daily/weekly updates.
  * One could accept domain wildcards (*@example.com) but since Hotmail, Yahoo, Gmail &#8230; would want to add a wildcard for their users, this would kill the spammers&#8217; lists so no one would use it. Plus, some people might object to the fact that they are not kept up-to-date with the latest Ci@lis/Vi@gr@ prices.
  * Let&#8217;s say a spammer would use a 100-million addresses target list. This means 100 million emails of something like 30 bytes on average (high estimate, I know). So he would need to calculate the MD5 for 100.000.000 x 30 bytes or 3GB. Looking at [some MD5 throughput stats (20MB/s)](http://www.twmacinta.com/myjava/fast_md5.php) this is a matter of minutes, not hours.
  * Then the spammer has to remove all addresses that feature in the opt-out list. This can easily be done as a merge of 2 sorted lists. The overhead is negligible.
  * If the opt-out list grows to 100 mio addresses, and the size to 1.6 GB, download is still done [in less than 1 hour](http://www.forret.com/tools/bandwidth.asp?speed=4.1&unit=Mbps&title=4Mbit+ADSL+%28%3C2+km%29+%5BBroadband%5D) over ADSL.
  * HOWEVER: dictionary attack! I am ruthless spammer and I just got a list of 1 million hashes? Mmm &#8230; I could create a dictionary of probable email addresses and see if they actually exist! An email consist of the letters [a-z], numbers [0-9] and the characters [-.\_] before the &#8216;@&#8217; sign. So all combinations up to 10 chars are around 40^10 (gross simplification, I know) or 10^16, and if I filter out the incorrect ones (44444444444@) and use the billion most probable ones (e.g. &#8220;jill.jackson@&#8221; is more probable than &#8220;a77..-\_-8@&#8221;), combined with the postfixes hotmail.com, yahoo.com, comcast.com, &#8230; I could probably find some addresses of notorious anti-spammers, send them loads of email and destroy the credibility of the opt-out list immediately.

EMAIL SERVICE PROVIDER

  * someone that sends email on behalf of spammers, that always uses the opt-out list, and that because of this admirable behaviour gets treated more leniently by anti-spam software.
  * Advantage: the opt-out list never has to be sent to spammers, and no mails go to the opt-outers.
  * Disadvantage: ain&#8217;t never gonna happen. Spammers would have to pay for this service and they won&#8217;t, the service would have to be operated by a trusted 3rd party but who would want to do that?

SELF-REGULATION  
The American Direct Marketing Association (DMA) has the [e-Mail Preference Service (e-MPS)](http://www.dmaconsumers.org/offemaillist.html), the Belgian Direct Marketing Association has the [Robinson-list](http://www.robinsonlist.be/). As I recall from my Direct Marketing days, the Robinson list was always used to clean up addresses.

But getting the emailers in the DMA to use a global opt-out list will only help very little. They&#8217;re not the real problem. The real problem are the Russian/American vilains on the [Spamhaus top 10](http://www.spamhaus.org/statistics/spammers.lasso).

Conclusion  
I would have to agree with Spamhaus:

> 1. For-a-fee Address Remove Lists are operated by conmen.  
> 2. No legitimate marketing firm sends Unsolicited Bulk Email in the first place.  
> 3. Can you imagine spammers doing this?  
> 4. All spammers believe their junk is different from the junk other spammers send.  
> from [spamhaus.org](http://www.spamhaus.org/removelists.html)

Technorati: <a href="http://technorati.com/tag/spam" rel="tag">spam</a> &#8211; <a href="http://technorati.com/tag/opt-out" rel="tag">opt-out</a> &#8211; <a href="http://technorati.com/tag/spammer" rel="tag">spammer</a> &#8211; <a href="http://technorati.com/tag/spamhaus" rel="tag">spamhaus</a>
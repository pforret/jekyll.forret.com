---
id: 27
title: Collaborative filtering on dating sites
date: 2004-06-04T13:01:40+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/06/04/collaborative-filtering-on-dating-sites/
permalink: /2004/06/04/collaborative-filtering-on-dating-sites/
categories:
  - Web2.0
---
Out of purely technological interest (obviously) I've been researching some dating sites recently. One feature I discovered most of them have is a kind of &#8216;short-list' of people you like. You look around and add the profiles you find appealing onto a list so you can access them easily when you're aiming for a next victim. Sometimes, the subjects in question are aware of their presence on your short-list, sometimes not. In any way they consist of links between people, links they've chosen to add themselves.

So I was thinking, do any of these sites use all this aggregated &#8220;X-likes-Y&#8221; information to suggest users new profiles to take a look at, basically like Amazon's _&#8216;people who like Zero7 also like Air'_. None of the sites I know has it. Via Google I found a service [Reciprodate.com](http://www.reciprodate.com) with &#8216;reciprocal collaborative filtering', but honestly, they remind me too much of all the &#8216;Rate-my-[bodypart].com' sites.

Some further googling brought me to a discussion at [pdesigner](http://www.pdesigner.net/1996/0450.html) from 1996(!) about why dating did not fit into classic collaborative filtering schemes:

  * _a &#8216;hit' removes both items from the pool_: if you define &#8216;hit' as &#8216;they marry each other' or, to be really sure, &#8216;commit joint suicide', I'd agree, but come on, it's dating, so more like serial prospection. 
  * _a &#8216;hit' is exclusive (monogamy, you know)_: it might be okay to own loads of CDs, but typically people limit themselves to 1 partner. True, but again, we're talking dating, not marriage.

If we take the hetero-sexual example of guys adding girls to their hotlists, I can see two ways of using collaborative filtering:

  1. **INDIVIDUAL**: if you add girl X, and other guys have added X too, what other girls have these guys added, that you might find appealing too? This kind of calculation could be done instantly, but there might be undesired side effects on an individual basis. If a girl convinces 10 guys to add her to their list, and also add all girls that look like Pamela Anderson, she might be presented to anyone who adds one of the Pamelas, even if she is an intelligent, medium-chested natural blond, and as such completely different. Once people get a feel of how individual decisions influence the system, they will try to manipulate it. 
  2. **CLUSTERED**: you could group girls into _clusters_: a more-or-less homogeneous group of persons that are similar (in age, hair colour, interests, chest size, or a combination hereof). It may sound demeaning, but these profiling cluster techniques have been used on people in direct marketing for years.  
    If a guy seems to tap mainly into the _&#8216;blond cheerleaders that like Ricky Martin and Brad Pitt'_ group, you could present him with girls from the same category. There might be people that are &#8216;unclusterable', but the results would be harder to manipulate through individual choices, since they are based on much more data from more people. The clustering is also not done in real-time, it's typically updated weekly/monthly (lots of calculations).

Since collaborative filtering [started around 1994](http://pespmc1.vub.ac.be/COLLFILT.html), and people were discussing using it in dating networks in 1996 (cf. [article in Infoworld](http://www.infoworld.com/pageone/opinions/metcalfe/bm031896.htm)), why hasn't it been used on dating sites? It's just the on-line version of your buddy telling you _&#8216;Hey, I'll introduce you to this girl, you'll like her, she's got piercings!'_ , right?

I can think of a couple of reasons people might object:

  * _&#8216;chemistry' can not be predicted by a machine_: of course it can't, that's what the dating is still for. But I bet that a person chosen by collaborative filtering has a greater chance of being &#8216;chemically' compatible than the average Jane. And anyway, the purpose is to improve, not to play God. 
  * _it's a machine &#8211; so impersonal_: would you feel awkward when a site tells you to &#8216;check out Amber, because we know you liked Britney and Christina'? It beats &#8216;check out Rosie, because she just joined'. 
  * _it only works when a profile has a history_: well, you could do some matching on hair color, size, favourite movies and location when there's no data on who likes the profile. 
  * _dating is not purchasing &#8211; it might work for CD's, but not for people_: It's not the same, but they're related. For one, they both depend a lot on personal taste. And on financials 🙂 
  * _privacy protection &#8211; you can't use that information_: Come on, it's just a matter of including it in your Terms & Conditions in a formulation no one would want to read.  
    > _&#8220;&#8230; you agree that SSN and each Partner (&#8230;) will at all times maintain a perpetual, irrevocable, royalty-free, worldwide, fully paid, assignable right and license to reproduce, repurpose, use, store, modify, edit, distribute or make available any portion or portions of such materials as they see fit in any medium &#8230;&#8221;_ &#8211; from [SpringStreet Networks' Terms of Service](http://www.springstreetnetworks.com/tos/index.asp), the people that operate a.o. Nerve Personals

Basically, apart from techophobia and privacy paranoia, I see no valid reason not to use collaborative filtering for dating. So, [Match.com](http://www.match.com), [Nerve.com](http://personals.nerve.com): my favourites are Meg Ryan, Christy Turlington and Penelope Cruz! Fetch!

<div>
  [Listening to: &#8220;Haven't you heard&#8221; &#8211; <b>Patrice Rushen</b> &#8211; Sampled Vol 4 (CD 2/2)]
</div>
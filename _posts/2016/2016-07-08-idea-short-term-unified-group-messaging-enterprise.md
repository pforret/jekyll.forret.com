---
id: 1447
title: 'Idea: short-term unified group messaging enterprise'
date: 2016-07-08T17:03:35+02:00
author: Peter
layout: post
guid: /?p=1447
permalink: /2016/07/08/idea-short-term-unified-group-messaging-enterprise/
image: /wp-content/uploads/2018/03/fig-12-03-2018_23-51-31.jpg
categories:
  - idea
tags:
    - smartphones
    - Web2.0
    - airbnb
    - communication
    - idea
    - messaging
    - phone
    - saas
    - sms
    - text
    - uber
---
I was driving for 6 hours the other day and my wife was asleep, so what does one do: work out the details for a new kind of hosted communication service in my head.

If you are a user of AirBNB, you might have noticed that when you get messages from your hosts in the app, you also get an SMS/text with (the first 140 chars) of the message. The number you get it from, is not the phone number of the host. In my case it was more often a US number. So I started thinking: how does this work? Obviously this is not a phone number per customer, since that would be impossible/unaffordable. If they use N phone numbers to send these messages, when someone replies, how do they know who to forward the message to? It's not rocket science.

A typical user has one &#8216;current' transaction with AirBNB (i.e. &#8216;where do I sleep tonight?'). If that user (whose phone number we know) sends a message, we know it is concerning that transaction. In the worst case the person stays in a different AirBNB place every night, and you want the group chat to be available 2 weeks before until 1 week after the transaction. That can be managed with 21 different phone numbers. For the hosts that manage several apartments or rooms, they might have up to 100 group chats that are active at the same time. Still, 100 different phone numbers, that's still doable.

So then I thought, what if you would have a service that allows any company to do this? They want to set up a temporary group chat with different channels (their own app, email, SMS, WhatsApp, Messenger, &#8230;) but not manage the details. So that idea crystallised into a** short-term unified group messaging enterprise &#8211; STUGME**.

<!--more-->So this is how it works:

  * company MARKET is a service/website that allows 2 or more people to engage in a transaction. This can be: renting a place to stay, renting a car, selling a motorcycle, organize a concert, &#8230;
  * imagine a specific transaction: between persons A (&#8216;Andre') and B (&#8216;Boris'), will take place on 1st of August, and we want them to be able to communicate with each other until then, without giving each one the contact details of the other.
  * MARKET has an account with the STUGME company, and makes an API call: give me a conversation between &#8216;Andre' (with phone number and email) and &#8216;Boris' (WhatsApp and email), valid from now until August 8th (allowing 1 extra week of conversation after the event)
  * STUGME gives MARKET a unique conversation ID ZZZZZZ. MARKET starts the conversation by sending a 1st message via API.
  * Andre, living in Germany, gets the message in his email (coming from ZZZZZZ.PW@conv.MARKET.com) and via SMS (coming from a German number, unknown to him).
  * Boris, living in UK, gets the message via WhatsApp (coming from a UK number, known as STUGME UK) and via email (same as above).
  * When Andre replies via SMS, STUGME receives the message, sees that the combination of sending and receiving number points to conversation ZZZZZZ. STUGME now forwards the message to MARKET (via callback API) and person B (again via WhatsApp and email). His message is prefixed with the name given by MARKET to this member: &#8220;_[Andre] Hi, I just wanted to ask &#8230;_&#8220;
  * On August 8th, the conversation lease ends. New messages receives from person A will be replied to with some variation of &#8220;Cannot deliver your message&#8221;.

This kind of service would be handy in the following cases:

  1. a company service has a large number of stand-alone transactions, each one with 1 or more &#8216;normal' people.
  2. the conversation traffic is temporary, with a clear end date.
  3. the different members of the conversation do not want to share their contact details with everyone. They prefer a sort of &#8216;semi-anonymity'.

Examples: AirBNB, obviously (since they are using this already), Uber, classifieds, events, &#8230;

Since I don't have time to develop this as a startup, I'm just throwing it out there.

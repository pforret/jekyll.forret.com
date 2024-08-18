---
id: 1181
title: 'Idea: hosted classification service'
date: 2010-05-26T21:40:18+02:00
author: Peter
layout: post
guid: /?p=1181
permalink: /2010/05/26/idea-hosted-classification-service/
categories:
  - idea
  - spam
---
Yesterday evening I was watching &#8220;How to replace yourself with very small shell script&#8221; by [Hilary Mason](http://www.hilarymason.com/).

[youtube width=&#8221;500&#8243; height=&#8221;360&#8243;]http://www.youtube.com/watch?v=IoQ4tka1zNk[/youtube]

In short: she uses some scripts to process incoming mail and send outgoing reminders. The part that really interested me is the one where she uses classification, probably [naive Bayes](http://en.wikipedia.org/wiki/Naive_Bayes_classifier), to extract topics from the tweets of her friends.

That made me think about Paul Graham's famous [spam essay](http://www.paulgraham.com/spam.html) (2002), which boosted the development of Bayesian spam filters for email. A Bayesian spam filter will, in very broad terms, analyze the words in a message, compare them to words typically used in a &#8216;spam' or &#8216;ham' collection, and come back with either a binary classification (spam/ham) or a spamminess score. The first time I read that article must have been back in 2003 or 2004. I recall installing one of the early versions of [POPFile](http://getpopfile.org/), a spam filter written in Perl. It worked as a POP3 proxy and did a pretty good job. POP3 made sense, because at that time, the only spam we had was email spam. Now there's blog spam, comment spam, trackback spam, Twitter spam &#8230;

But these are the cloud days, right? If you think about it, [Akismet](http://akismet.com/) (WordPress) and [Mollom](http://mollom.com/) (Drupal) offer cloud-based spam filtering. Before them, Postini (now part of Google) offered hosted spam filtering services for email. But would it be possible to offer a very generic web service-like document classification service? Imagine the service **classifier.com**:

  * you register and get your own subdomain at myapp.clasifier.com
  * you choose whether your service will return one of a number of classes (ham/spam or urgent/normal/ignore &#8230;) or a numerical score.
  * you choose a tokenizer: defines what words will be extracted from your input: e.g. you can ignore, include or reformat email headers, you can ignore or transform HTML code, &#8230;
  * you create a corpus per category, the service will tell you if you have enough input
  * you call the service with an HTTP POST with an API key and the new document content to be classified, and you get back (in JSON/XML) the result

Sounds like something Google would offer? Well, they do, in some way: <http://code.google.com/apis/predict/> Now if someone would develop a nice and easy interface around it &#8230;
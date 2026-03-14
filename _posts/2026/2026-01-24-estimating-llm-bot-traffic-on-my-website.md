---
title: Estimating (LLM) bot traffic on my website
layout: post
image: /wp-content/uploads/2026/01/unsplash.bot.jpg
permalink: /2026/2026-01-24/estimating-llm-bot-traffic-on-my-website/
date: 2026-01-24
categories:
    - devops
tags:
    - bots
    - analytics
---
> TL;DR: I configured local log analytics reporting on my site with `goaccess` and [pforret/goax](https://github.com/pforret/goax), a bash wrapper script, to analyse regular, SEO and LLM bot traffic. 
I then also extended my `fail2ban` configuration to ban vulnerability scanning bots.

![](/wp-content/uploads/2026/01/unsplash.bot.jpg)
<!-- more -->

## toolstud.io

I have a mildly popular website of [web calculators and converters](https://toolstud.io/), that sees a decent amount of traffic per month. 
But just how much of that traffic is OpenAI/ANthropic/Google/Meta/... scraping my content?
How can I get a view on that, because the bots don't show up on my SimpleAnalytics dashboard?


## Bot traffic

When we talk about bot traffic, we mean automated HTTP requests — not humans clicking around, but scripts and crawlers hitting your server. They usually identify themselves via the `User-Agent` header, though some lie or omit it entirely.

* The classic bots are **SEO crawlers** like Googlebot, Bingbot and DuckDuckBot. They index your content for search results, generally play nice, and respect your `robots.txt`. You want these.
* Then there's the newer wave of **LLM bots** — GPTBot (OpenAI), Claude-Web (Anthropic), CCBot (Common Crawl), Bytespider (ByteDance). These scrape content for AI training data or RAG retrieval systems. This category is growing fast, and whether they respect `robots.txt` varies.
* Finally, you have **vulnerability scanners** probing for exposed `.env` files, `/wp-admin` endpoints, SQL injection paths, and other low-hanging fruit. Some are legitimate security researchers, many are not.

If you're using an external analytics service like [SimpleAnalytics](https://www.simpleanalytics.com/)/Google Analytics, you're only seeing human/browser visitors. These services work by injecting a JavaScript snippet into your pages. Bots don't execute JavaScript — they fetch the raw HTML and move on. Your analytics script never runs, so these requests are invisible.  To see the full picture, you need to use the server-side logs. Your Apache or Nginx access logs record every HTTP request, regardless of whether JavaScript was executed. That's where the bots live.

## GoAccess

I quickly figured out that the best program to use for this would be [GoAccess](https://goaccess.io/): a web log analyzer that can generate static HTML reports. It parses Apache, Nginx, and other common log formats out of the box.

It would have been fairly easy to just run a daily `goaccess /var/log/nginx/[logfile] -o [webpage] --log-format=COMBINED` job, but I created a [pforret/goax](https://github.com/pforret/goax) bash wrapper to do something more sophisticated:

* first `cat` and `gunzip` all relevant log files into one big file.
* run the access report not just on all of it, but also for subselections of the total data: only the bots, only the LLM bots, everything except the bots.
* put those reports in one special folder withing the website, with an index.html frame around to easily switch between them. ![](/wp-content/uploads/2026/01/goaccess_index.png)
* help with putting password protection on that special folder
* delete the temp joined log file

This is scheduled as a daily job in Laravel Forge ![](/wp-content/uploads/2026/01/goax_job.png)


## Results

So how much of my traffic is bot traffic?

* this is my overall traffic: 994K requests, from  160K visitors. ![](/wp-content/uploads/2026/01/goaccess_all.png)
* this is how much of those are 'normal' users: 286K requests (30%), from 96K visitors (60%) ![](/wp-content/uploads/2026/01/goaccess_nobots.png)
* if we look at all bots (SEO/LLM/...), we see it's the remainder: 708K requests (70%) from 65K visitors (40%) ![](/wp-content/uploads/2026/01/goaccess_bots.png)
* if we zoom in on only the LLM bots: 335K requests (35%) from 50K visitors (30%) ![](/wp-content/uploads/2026/01/goaccess_llm.png)

So these LLM bots, who are they? It's mainly GPTBot (OpenAI), Bytespider (Bytedance/TikTok) and then a bit of Meta/Facebook and ClaudeBot (Anthropic). The rest is _de minimis_.

![](/wp-content/uploads/2026/01/goaccess_llm_agents.png)

Even compared to the 'classic' search bots, ChatGPT is very active.

![](/wp-content/uploads/2026/01/goaccess_bot_agents.png)

## fail2ban

While checking the results, I saw a lot of vulnerability scanning activity, looking for URls like `/wp-admin/..`. and `/wp-login.php` (WordPress). I knew I already had [fail2ban](https://github.com/fail2ban/fail2ban) running on that server, which detects suspect traffic and then blocks the responsible IP addresses for N minutes. However, it was only active for SSH vulnerability scans. With some help of Claude Code, I set up a new rule to include those scanners.

```
[Definition]
failregex = ^<HOST> - - \[.*\] "(GET|POST|HEAD) .*(/wp-login\.php|/xmlrpc\.php|/admin\.php|/wp-admin|/\.env|/\.git).*
ignoreregex =
```
---
title:  Relaunch of launch.nuuz.io
layout: post
image: /wp-content/uploads/2024/10/launch-nuuz-io.png
permalink: /2024-10-06/relaunch-nuuz-io/
categories:
    - tool
tags:
    - nuuzio
    - launch
    - startup
    - news
    - sideproject
---
Thi Saturday morning, I was browsing through my [SimpleAnalytics stats](https://www.simpleanalytics.com/) and saw one sorry number for a side-project I had forgotten about: [launch.nuuz.io](https://launch.nuuz.io/). All of zero visits in the last month. This was a one-page website of mine that listed a number of launch sites for new projects (e.g. ProductHunt, HackerNews, Reddit etc.), and what the public consensus was on the **best day-of-the-week and/or time-of-day** for posting a new project. It also showed a countdown for that ideal submission moment.

I checked how I created this project, and to my surprise it was a Laravel 10 project. That seemed like a bit of overkill. Since I hadn't decided yet what I would procrastinate on this weekend, I decided to give this project a little love.

I quickly decided on a tech stack of [mkdocs-material](https://squidfunk.github.io/mkdocs-material/), since that is my favourite way of creating content these days, ever since I created [pforret/mkdox](https://github.com/pforret/mkdox/) to make it even easier. Since this is a static site generator, and my web pages would be all static HTML, I would need to redevelop the countdown and timezone logic in JavaScript. Thanks to GitHub Copilot in PHPStorm, that was a breeze. Today, a mere 36 hours later and with only a few hours of actual work, I am proud to announce the **relaunch of [launch.nuuz.io](https://launch.nuuz.io/)**.

[![](/wp-content/uploads/2024/10/launch-nuuz-io.png)](https://launch.nuuz.io/)

There is now a page per launch website (many more added to the original 5), a blog with related content (like "[Launching On Betalist – 50 Entrepreneurs Share All](https://launch.nuuz.io/blog/2023/06/launching-on-betalist--50-entrepreneurs-share-all/)"), amounted to a total of more than 50 separate pages, which should be good for the SEO. 

The tricky parts were:
{% raw %}
* finding out in which country each service was based. This matters, because I need to know what timezone they operate in. Some services do a reset at midnight, or start processing new submissions at 9am, so knowing if they're in Pacific Standard Time or Indian Standard Time is crucial. E.g. for [SideProjectors.com](https://www.sideprojectors.com/) I'm still not sure. Even the Terms and Conditions and Privacy Statement don't mention a country.
* figuring out how 'important' each service was. Ideally I need an estimate of monthly traffic (how many visitors might I get through this site) and domain authority of the domain (how valuable are backlinks from this site). But SimilarWeb and Ahrefs don't give me all the data, unless I take a paid subscription. I get why, but it's still something I would like to add.
* I would love to have a {% for page in pages %} loop in my custom page layout, but a loop that has access to all the page's metadata, not just the URL and the title. I'm sure there's a way to do this, but I haven't found it yet.
{% endraw %}
Now I just need submit the site to all different launch websites. And now it's easy to know **when** I should do this. 

![](/wp-content/uploads/2024/10/countdown.png) 

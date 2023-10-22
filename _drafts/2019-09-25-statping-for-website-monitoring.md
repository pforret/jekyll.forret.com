---
id: 1872
title: Statping for website monitoring
date: 2019-09-25T15:52:30+02:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1872
permalink: /2019/09/25/statping-for-website-monitoring/
image: /wp-content/uploads/2019/09/1_xzffcsom1NdDpyD7pfIgTg-600x501.png
categories:
  - technology
tags:
  - alert
  - docker
  - monitor
  - security
  - statping
  - uptime
---
When you run a sh*tload of web sites and APIs, you need to check continuously whether they are still running or not. For public websites you can find quite a lot of freemium or paid SaaS services but, like me, you might need something that also works on your local network (LAN). For that, you need a self-hosted open-source software, that you can run on an internal server or Docker container. So I started looking around for a self-hosted solution.

First off, this is what I had in mind: I wanted a worthy local alternative for [Freshping](https://www.freshworks.com/website-monitoring/). We use it for monitoring of public websites, it comes with 50 URL checks for free, with status pages and alerting, it&#8217;s great. But an external SaaS cannot monitor your internal (LAN) services. 

So this means concretely:

  * just monitor URLs, not machine stats like disk space, CPU%, and also no local agents required
  * definition of &#8220;down&#8221; can be customized: no response, wrong status code (e.g. error 500) or also &#8220;does not contain string XYZ&#8221;
  * grouping URLs in collections (e.g. different teams are responsible for different URLs)
  * a public dashboard page with what&#8217;s up and what&#8217;s down
  * alerts (email/slack/twilio) when a site goes down
  * time series graphics for each URL (not required)

After going through like 50 different tools, I found only one that was simple enough and did what I wanted: [Statping by Hunterlong](https://github.com/hunterlong/statping).<figure class="wp-block-image">

![](https://img.cjx.io/statupsiterun.gif)   

It even has a mobile app, Slack notifications and can be set up in minutes thanks to [its Docker image](https://hub.docker.com/r/hunterlong/statping).
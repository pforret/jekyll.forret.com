---
title: Migrating my blog from Wordpress to Jekyll
author: Peter
layout: post
image: /wp-content/uploads/2021/02/jekyll.jpg
categories:
    - Wordpress
tags:
    - jekyll
    - static
    - cms
---
I used to consider myself somewhat of a Wordpress expert. I was (am) running, privately and for work combined, [more than 40 
Wordpress blogs](/2020/04/25/securely-manage-multiple-wordpress-blogs/), I wrote several custom Wordpress plugins for internal use, 
I could install a new Wordpress website with a nice theme, crucial plugins and excellent SEO capabilities in less than 1/2 hour. 
I even wrote scripts for cloning Wordpress sites from a standard template.
It was my go-to CMS for any website, I was a WP-fanboy.

{% include img.html
src="/wp-content/uploads/2021/02/jekyll.jpg"
description="WP Fanboy" %}

But the cost of that Wordpress focus has been a constant worry for hacks. I've installed Wordfence on all blogs, configured weekly backups, update all my plugins through InfiniteWP at least 2x/month, but still I get one of my blogs hacked like every 6 months. It always happens at a bad time, and it takes me at least an hour 


I have been running this blog since 2004 on Wordpress. 
I liked the concept of having pages and posts, the Wysiwyg editor, the RSS support.
Since then, I have added [more than 10 Wordpress websites](/2020/04/25/securely-manage-multiple-wordpress-blogs/) to my portfolio.
This has taught me a lot about hosting, sysadmin and Wordpress plugin development.
Unfortunately it has also caused me lots of headaches because Wordpress blogs are continuously under attack and get hacked.

Even if you use a (free) security plugin like [WordFence](https://www.wordfence.com/) in your website, 
you might still get hacked. The signs? Weird `@include` statements in your PHP files, 
weird popups when you visit the site, random new files appearing in different places in your WP installation.



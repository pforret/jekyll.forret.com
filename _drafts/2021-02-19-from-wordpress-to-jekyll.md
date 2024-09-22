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
WordPress blogs](/2020/04/25/securely-manage-multiple-wordpress-blogs/), I wrote several custom WordPress plugins for internal use, 
I could install a new WordPress website with a nice theme, crucial plugins and excellent SEO capabilities in less than 1/2 hour. 
I even wrote scripts for cloning Wordpress sites from a standard template.
It was my go-to CMS for any website, I was a WP-fanboy.

{% include img.html
src="/wp-content/uploads/2021/02/jekyll.jpg"
description="WP Fanboy" %}

But the cost of that WordPress focus has been a constant worry for hacks. I've installed WordFence on all blogs, configured weekly backups, update all my plugins through InfiniteWP at least 2x/month, but still I get one of my blogs hacked like every 6 months. It always happens at a bad time, and it takes me at least several hours to investigate, clean up, and secure the site again. 

I've been looking at static site generators for a while now. I like Jekyll, because it's built-in to GitHub Pages. 
So I gave it a try. I used a WordPress exporter 

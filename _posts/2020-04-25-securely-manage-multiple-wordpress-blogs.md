---
id: 2165
title: How to securely manage multiple WordPress blogs
date: 2020-04-25T14:42:33+02:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2165
permalink: /2020/04/25/securely-manage-multiple-wordpress-blogs/
image: /wp-content/uploads/2020/04/fikret-tozak-rfNLa1HL7eY-unsplash.jpg
categories:
  - security
  - Wordpress
tags:
  - hosting
  - infinitewp
  - wordfence
---
Let&#8217;s say you are in my case: you manage **multiple WordPress blogs** on multiple servers for yourself, your friends, your family, your company, your customers. How do you keep them from being hacked or infected? How do you securely manage multiple WordPress blogs?

## Use a WP Site Manager

First of all, you absolutely need a WP Site Manager application like [InfiniteWP](https://infinitewp.com/) or [ManageWP](https://managewp.com/). I am a very happy user of InfiniteWP, the free version for at home, and the paid version for at the office. It takes care of WordPress/theme/plugin updates and (manual) backups. It&#8217;s also the unique dashboard with easy login to all your WP websites.

Put your Site Manager on a separate `[subdomain].[yourdomain.com]`&#8216;. Then install the client plugin on **each of your WP blogs** and add them to your repository of managed blogs. Add them **all**, because one forgotten &#8216;_it was just for testing_&#8216; WordPress blog can be the weakest link that allows a hacker to infect all your other blogs on that server.<figure class="wp-block-image size-large">

<img  width="1024" height="615" src="https://blog.forret.com/wp-content/uploads/2020/04/iwp3_overview-1024x615.png" alt="InfiniteWP dashboard interface" class="wp-image-2166" srcset="https://blog.forret.com/wp-content/uploads/2020/04/iwp3_overview-1024x615.png 1024w, https://blog.forret.com/wp-content/uploads/2020/04/iwp3_overview-300x180.png 300w, https://blog.forret.com/wp-content/uploads/2020/04/iwp3_overview-768x462.png 768w, https://blog.forret.com/wp-content/uploads/2020/04/iwp3_overview.png 1421w" sizes="(max-width: 1024px) 100vw, 1024px" />  InfiniteWP Dashboard Interface</figcaption>  

## Indispensable WP security plugins

### [InfiniteWP client](https://wordpress.org/plugins/iwp-client/)

This is the first plugin I install on any new WordPress. Makes sure that your list of WordPress blogs in your Site Manager is exhaustive. Allows you to update everything remotely.

### [Wordfence Security](https://wordpress.org/plugins/wordfence/)

This is the second plugin I install. Pimps up your security, even in the free version. Will detect changes to the WordPress files, new files in places where there shouldn&#8217;t be any, brute force attacks on your wp-admin login, &#8230; Popularity: `3 million installations.`

### [Jetpack by WordPress](https://wordpress.org/plugins/jetpack/)

This one really locks you into the WordPress eco-system. It has a lot of functionalties, including brute-force attack protection, but also auto-update of plugins, making your life even easier. Popularity: `5 million installations`

## WP Life Pro Tips

### Force the server to use HTTPS

This goes without saying: it is 2020, there is no excuse why your website would still be on http:// instead of https://. Why? Because you never give your password on a http;// site.  
Any hosting service that&#8217;s any decent will allow you to active a [Let&#8217;sEncrypt](https://letsencrypt.org/) free certificate on your domain. If they don&#8217;t you can add https:.. through a (free) service like [Cloudflare](https://blog.forret.com/2017/09/21/how-to-add-cloudflare-ssl-to-a-wordpress-website/).

Your `http://[yourdomain.com]` should always forward to the https:// version. You can this through the [toolstud,io redirection check](https://toolstud.io/network/redirect.php). 

### Use a password manager

Use a browser-plugin password manager to keep track of your long, complicated and always unique passwords for each site. There is [LastPass](https://www.lastpass.com/), 1Password, Dashlane, Zoho Vault, I am a long-time LastPass user, I use it on my iPhone, Macbook and various Windows/Linux machines, I have all passwords available on all platforms, it&#8217;s a life-saver.

### Use Wordfence two-factor authentication (2FA)

When you use the [Wordfence](https://wordpress.org/plugins/wordfence/) plugin, you will get warnings when someone has tried too many times to guess your password. And you will realize just how often that is. Your blogs are constantly under attack. If you want to make it harder for an attacker to log in, enable Wordfence&#8217;s 2-factor authentication. You will need your phone every time you log in as an administrator. 

### Use visitor password protection for &#8216;intranet&#8217; websites

If you create a WordPress site that is only meant to be read/used by a select number of people (e.g. your company, your club), add a password plugin like [Password Protected](https://wordpress.org/plugins/password-protected/), give all the intended users that password and maybe whitelist your office&#8217;s IP address. Another layer of security!

### Use [Cloudflare](https://wordpress.org/plugins/cloudflare/) for high-traffic sites

Not for every site, but will help a lot with with content-delivery and also with security: there&#8217;s a web firewall, and your origin server is invisible to the Internet.

### Use a dedicated WordPress admin email address

Your WordPress blog will send you messages regularly (like when a user was added). Your Site Manager will send you message regularly (like when you really need to update some sites). Your integrity protection (e.g. Wordfence) will send you regular emails (like when an attacker is blocked automatically). You need a place to receive all these messages, but you don&#8217;t want them mixed into your day-to-day communication,

Set up a forwarding email address for those messages (e.g. `wordpress@[yourdomain.com]`) and let all those emails go there, Then set up a rule to automatically move the emails to a folder &#8216;WordPress&#8217;. If in the future you would want those emails to go somewhere else, it&#8217;s one easy redirection change.
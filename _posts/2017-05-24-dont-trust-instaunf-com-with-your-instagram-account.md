---
id: 1531
title: 'Don&#8217;t trust instaunf/instaunfapp with your Instagram password'
date: 2017-05-24T10:11:10+02:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1531
permalink: /2017/05/24/dont-trust-instaunf-com-with-your-instagram-account/
attitude_sidebarlayout:
  - default
image: /wp-content/uploads/2017/05/instaunf.jpg
categories:
  - security
tags:
  - authentication
  - harvesting
  - https
  - instagram
  - login
  - oauth
  - phishing
  - security
  - turkey
  - unfollow
  - warning
---
> UPDATE July 2017: the suspect site I talk about here, has changed their domain name since my post about them and is now _instaunfapp.com_ . And they have implemented https (secure connection). The fact still remains that they ask for your clear-text Instagram password, and Instagram doesn&#8217;t permit that. ([Never give your password to someone you don&#8217;t know and trust](https://help.instagram.com/369001149843369)).

When you search for &#8220;instagram unfollow&#8221;, one of the top results in Google is &#8216;_instaunf.com_&#8216; (not linked on purpose). The website looks legit: a homepage that says &#8220;_Check who unfollowed you, who doesn&#8217;t follow you back and more._  
 _It&#8217;s free, it&#8217;s easy to use, it&#8217;s quick_.&#8221; with the familiar button &#8220;Sign in with Instagram&#8221;.  
[<img  class="alignnone size-full wp-image-1532" src="//blog.forret.com/wp-content/uploads/2017/05/instaunf.jpg" alt="" width="758" height="456" srcset="https://blog.forret.com/wp-content/uploads/2017/05/instaunf.jpg 758w, https://blog.forret.com/wp-content/uploads/2017/05/instaunf-300x180.jpg 300w" sizes="(max-width: 758px) 100vw, 758px" />](//blog.forret.com/wp-content/uploads/2017/05/instaunf.jpg)

The fishy part comes when you click that button. You get a minimal page that tries really hard to look like a instagram.com login page. It asks for your Instagram username and password <span style="text-decoration: underline;">over an unencrypted link</span>. This is very suspect.

[<img  class="alignnone size-full wp-image-1533" src="//blog.forret.com/wp-content/uploads/2017/05/instaunf2.jpg" alt="" width="520" height="446" srcset="https://blog.forret.com/wp-content/uploads/2017/05/instaunf2.jpg 520w, https://blog.forret.com/wp-content/uploads/2017/05/instaunf2-300x257.jpg 300w" sizes="(max-width: 520px) 100vw, 520px" />](//blog.forret.com/wp-content/uploads/2017/05/instaunf2.jpg)<!--more-->

[Instagram uses OAuth2.0](https://www.instagram.com/developer/authentication/) which means: if you are already logged in to Instagram, you just need to push a button &#8216;Allow xyz.com access to your account&#8217;, or if you&#8217;re not logged in yet, you log in **on the instagram.com website**, over a **secure https link**. <span style="text-decoration: underline;">An external party should never get your password</span>.

So my guess is: this web site is used for phishing: harvesting other people&#8217;s Instagram username & passwords, in the hope of a) hijacking the account for a ransom, b) hijacking the account to use for promoting another IG account, c) downloading photos from (private) Instagram accounts, d) &#8230;

**Who is behind the website?**

The domain name was registered by someone from Yalova, Turkey in March 2015. The first website on the domain appears one year later, but it is completely in Turkish. In August 2016, it changes into the modern-looking, English spoken website it is now.
---
id: 1613
title: GDPR Plugins for WordPress
date: 2018-03-13T00:12:01+01:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1613
permalink: /2018/03/13/gdpr-plugins-for-wordpress/
image: /wp-content/uploads/2018/03/fig-12-03-2018_23-41-09.jpg
categories:
  - gdpr
tags:
  - europe
  - https
  - law
  - privacy
  - ssl
  - wordpress
---
Europe&#8217;s General Data Protection Regulation (GDPR) jumps into action on 25 May 2018. This has a lot of implications for every company in Europe, but also worldwide. And what does it mean for us, owners of a WordPress blog?

### What is the [GDPR](https://www.eugdpr.org/)?

In short, the GDPR is a set of rules concerning digital privacy and security of European citizens, valid for all companies (also not-European) who treat/receive personal data of European citizens. It implements the _data protection by design_ and _by default_ principles. Non-compliance will be costly. This three-sentence description, as a resume of a document of 11 chapters with 99 articles, is obviously neither complete, nor even 100% correct.

### What are the GDPR implications for a WordPress site?

In most cases, you -as the owner/editor of the site/blog- are the _data controller_, and your website host, your mailing list provider, your advertising network provider, your invoicing/payment provider &#8230;  are the _data processors_.

  * **Always HTTPS**:  
    it&#8217;s obviously necessary that your website offers encrypted traffic on the pages where you allow visitors to enter their personal data. But this is 2018, and you should just use HTTPS everywhere, since [Google Chrome](https://www.theverge.com/2018/2/8/16991254/chrome-not-secure-marked-http-encryption-ssl) will mark all non-HTTPS sites as insecure (from July 2018 onwards) and non-HTTPS sites are punished in [Google Search](https://thenextweb.com/google/2015/12/17/unsecured-websites-are-about-to-get-hammered-in-googles-search-ranking/) results too (since 2015). HTTPS is not anymore an expensive add-on. Your hosting company should support [LetsEncrypt](https://letsencrypt.org/)&#8216;s free certificates and otherwise there is [Cloudflare](https://www.cloudflare.com/ssl/)&#8216;s free plan. These services both have strong encryption, universal browser recognition and auto-renewal of certificates.
  * **Data Collection**:  
    if you have any kind of contact, subscription, purchase, reply or comment form where you ask the visitor for personal data (name, email, phone, age, country), you need to explicitly ask for permission (&#8216;opt-in&#8217;). You should also inform them of their &#8230;</p> 
      * **Right to Access**:  
        any user should have a possibility to request you for all the information you have on him. So you need to provide a form for that.
      * **Right to Be Forgotten**:  
        if a user asks for you to delete all the data you have on him/her, you need to comply with that request. So you need tools to search for and delete that data. And you have to remember that that user does not want their information stored.
      * **Data Portability**:  
        every user has the right to demand an export of all the personal data you have on them
  * **Privacy statement**:  
    every website should have a privacy statement. Every page on your website should contain a link to this privacy statement. The privacy statement should GDPR compliant: clear, concise, understandable language (no &#8216;_legalese_&#8216;). It should mention the following topics:</p> 
      * **what** information do you collect: for an anonymous visitor, for an identified visitor (e.g. a newsletter subscriber), for a customer (if you sell something).
      * **who** collects this info: give your company or personal coordinates: company name and unique ID, address, phone number, email
      * **how** do you collect this info: voluntary (subscription) or involuntary (cookies)
      * **why** do you collect this info
      * **how long** do you keep this information
      * **with who** is this information shared
      * **what rights** does the visitor have: right to access, be forgotten and data portability, exceptions for customers or other legal limits.
      * **from where** are the 3rd party data processors and are they GDPR compliant (you might need to check the [www.privacyshield.gov](https://www.privacyshield.gov/list) website for US companies)
  * **Third party plugins/services**:  
    some of your WordPress plugins handle private data. Typical examples are: contact form, mailing list or subscription. You need to be sure that the company that handles that information (e.g. [Mailchimp](https://www.privacyshield.gov/participant?id=a2zt0000000TO6hAAG&status=Active), [Stripe](https://www.privacyshield.gov/participant?id=a2zt0000000TQOUAA4&status=Active), [Google](https://www.privacyshield.gov/participant?id=a2zt000000001L5AAI&status=Active)) is GDPR compliant. For instance: this is the [PrivacyShield entry for Automattic](https://www.privacyshield.gov/participant?id=a2zt0000000CbqcAAC&status=Active), the company that makes WordPress (the open-source software), WordPress.com (the hosted blog service), Akismet (the anti-spam service), Jetpack (the security/stats plugin for WordPress). It currently only covers WordPress VIP (the paid wordpress.com sites) but Automattic also keeps [an ongoing log on all their GDPR efforts](https://en.support.wordpress.com/automattic-gdpr/).
  * **Data breach communication**:  
    Under the GDPR, a notification must be sent within 72 hours of first becoming aware of a breach. Data processors are also required to notify users as well as the data controllers, immediately after first becoming aware of a data breach.

Some more in depth information on the implications of GDPR on marketing and web professionals can be found on [appinstitute.com/gdpr-guide/](https://appinstitute.com/gdpr-guide/)

### What GDPR WordPress plugins are available now?

[table id=1 /]

&nbsp;

&nbsp;

&nbsp;
---
id: 1457
title: 'Idea: using a helpdesk app as an Applicant Tracking System (ATS)'
date: 2016-12-03T21:16:43+01:00
author: Peter
layout: post
guid: /?p=1457
permalink: /2016/12/03/idea-using-a-helpdesk-app-as-an-applicant-tracking-system-ats/
image: /wp-content/uploads/2018/03/fig-12-03-2018_23-47-12.jpg
categories:
  - idea
tags:
  - application
  - ats
  - freshdesk
  - hiring
  - hr
  - interview
  - jobs
---
> Update Sept 2017: FreshDesk just release a new product [FreshTeam](https://www.freshworks.com/applicant-tracking/) that does exactly what I specified below.

I recently found myself in the position of having to [hire a new colleague](http://www.brightfish.be/nl/topics/jobs-nl/) for the first time in a long while. This means, I get lots of emails with attached PDFs from people I've never heard of, I have to filter out the good ones, invite those and send a thank-you-email to all the other ones. I then evaluate the candidates after their first conversation, maybe invite them for a second interview. A classical funnel workflow. Surely this can be automated and optimised, I told myself (_as I caught myself adding colours to Outlook mails in my &#8216;Applicants' folder, in order not to forget who I invited and/or answered_.)

<!--more-->

So I checked what SaaS vendors there are in this solution space, which is called &#8220;ATS&#8221; for [Applicant Tracking Systems](https://www.datanyze.com/market-share/recruitment/).

  * [bamboohr.com](https://www.bamboohr.com) (starts at $49/month)
  * [breezy.hr](https://breezy.hr/) (free 1 person trial)
  * _[clearcompany.com](http://info.clearcompany.com/) (pricing unknown)_
  * [cvwarehouse.com](http://company.cvwarehouse.com/) (starts at 50€/month)
  * [crelate.com](https://www.crelate.com) (starts at $65/month)
  * _[greenhouse.io](https://www.greenhouse.io) (pricing unknown)_
  * [jazzhr.com](https://www.jazzhr.com) (starts at $89/month)
  * _[jobvite.com](http://www.jobvite.com/) (pricing unknown)_
  * _[kenexa.com (IBM)](http://www-03.ibm.com/software/products/en/ibm-kenexa-brassring-on-cloud) (pricing unknown)_
  * [recruitee.com](https://recruitee.com) (starts at $19/month)
  * _[silkroad.com](http://www.silkroad.com/) (pricing unknown)_
  * _[taleo.net (Oracle)](http://www.oracle.com/us/products/applications/taleo/enterprise/overview/index.html) (pricing unknown)_
  * [workable.com](https://www.workable.com) (starts at $39/month)
  * [zoho.com](https://www.zoho.com/recruit) (starts at $50/month)

(Mind you, most of these services do more than just ATS, they try to automate hiring, on-boarding, contracting, &#8230; So the prices are not always comparable)

Then I was thinking how I could build an ATS for myself using existing software components/services. A software that can process incoming emails, analyse them and forward them to a person who should take care of follow-up. A system that has standard reply templates, that has an escalation process, that will show you what emails still have to be treated. That sounds just like the [Freshdesk](https://freshdesk.com) I'm using at work for technical support!

Imagine I redirect all emails that I receive on to jobs@mycompany.com to mycompany@myhelpdesk.com. Every applicant becomes a ticket. He gets an email confirming his application was well received and will be treated by the hiring manager.  The manager in question sees a dashboard of unanswered mails that he has to go through and either decline (template mails) or accept (standard mail with contact details and date propositions). I bet that I could start with a basic Freshdesk set-up, spend a day customising the mail templates, configuring the question categories as company departments etc, and I'd already have an ATS that does a pretty good job. Maybe when I need to hire ten more &#8230;

<span style="border-radius: 2px; text-indent: 20px; width: auto; padding: 0px 4px 0px 0px; text-align: center; font: bold 11px/20px 'Helvetica Neue',Helvetica,sans-serif; color: #ffffff; background: #bd081c no-repeat scroll 3px 50% / 14px 14px; position: absolute; opacity: 1; z-index: 8675309; display: none; cursor: pointer; top: 20px; left: 20px;">Bewaren</span>

<span style="border-radius: 2px; text-indent: 20px; width: auto; padding: 0px 4px 0px 0px; text-align: center; font: bold 11px/20px 'Helvetica Neue',Helvetica,sans-serif; color: #ffffff; background: #bd081c no-repeat scroll 3px 50% / 14px 14px; position: absolute; opacity: 1; z-index: 8675309; display: none; cursor: pointer;">Bewaren</span>
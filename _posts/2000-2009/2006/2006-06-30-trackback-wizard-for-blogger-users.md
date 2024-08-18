---
id: 365
title: Trackback wizard for Blogger users
date: 2006-06-30T11:18:29+02:00
author: Peter
layout: post
guid: /2006/06/trackback-wizard-for-blogger-users/
permalink: /2006/06/30/trackback-wizard-for-blogger-users/
categories:
  - Google
---
[Trackbacks](http://en.wikipedia.org/wiki/TrackBack) are a good way to alert other bloggers that you citing them on your blog. It also helps to drive traffic to your own site (if your comment was insightful or tempting).  
Unfortunately, some blog hosts like [Blogger](http://www.blogger.com), [Skynetblogs](http://www.skynetblogs.be) do not automatically send a trackback ping to all the blog URLs in your blog post. So how do you send such a trackback from your blogspot.com site to other blogs (provided they support receiving them, obviously)?

  1. put the following code in your Blogger template (e.g. below the actual post): <div style="overflow: auto; font-family: courier, fixed">
      http://web.forret.com/tools/trackback.asp?title=<$BlogItemTitle$>& blog_name=<$BlogTitle$>& url=<$BlogItemPermalinkURL$>
    </div>

  2. write your blog post with some links to trackback-able blogs
  3. go to the post page (typically /2006/06/this-is-my-title.html)
  4. open the [trackback wizard](http://web.forret.com/tools/trackback.asp) by clicking the link that should now be below the post (in a new window)
  5. for each of the external trackback-able links: open it in a new window, find the trackback URL that is announced on the page and copy/paste it into the &#8220;Cited Blog &#8211; Trackback URL&#8221; of the trackback wizard
  6. find the relevant piece of text in **your** blog post concerning that link (typically the text right before and/of after the link) and copy/paste it into the &#8220;Citing Blog &#8211; Excerpt&#8221; field.
  7. Click &#8220;Submit Trackback&#8221; &#8211; you should get an &#8220;OK!&#8221; if the trackback was accepted

If the trackback was not accepted, it could be for one of the following reasons:

  * the cited blog does not support trackbacks: nothing you can do about it.
  * the trackbacks are closed (article is too old or too spammed): nothing you can do about it
  * caught by spam control (security is very strict): if you feel strong about the topic, contact the author
  * caught by spam control because you are a spammer: get a life
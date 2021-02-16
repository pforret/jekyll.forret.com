---
id: 245
title: Recent posts + comments in Blogger
date: 2006-01-19T14:28:08+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2006/01/19/recent-posts-comments-in-blogger/
permalink: /2006/01/19/recent-posts-comments-in-blogger/
categories:
  - Google
tags:
  - blogger
  - comments
  - Google
  - trick
---
[<img loading="lazy" width="170" src="http://static.flickr.com/25/88553681_6753586547.jpg" alt="blogger_recent_comments" height="329" style="float: right" />](http://www.flickr.com/photos/pforret/88553681/ "Photo Sharing")  
One of the disadvantages of using [Blogger](http://www.blogger.com) is that by default, you don&#8217;t have categories and recent comments on your blog. There is a trick to put recent comments on [this Blogger help page](http://help.blogger.com/bin/answer.py?answer=1205&topic=41). It involves introducing a new `<Blogger> ... </Blogger>` loop in the blog template. A nice trick, but I don&#8217;t like the fact that they only show the comment dates.

So I developed the idea a bit further: on the main and archive pages of my blog, you now see the normal &#8220;_Recent Posts_&#8221; in the sidebar, but the posts that have comments also have those listed (see image at the right). On the individual post pages, I have the normal list of recent posts. I put each comment in a `div` with a height of 25 pixels and with `overflow: auto` (defined in the CSS file) so that long comments don&#8217;t take too much space. The layout of the thing (e.g. each comment starts with a clickable &#8220;>&#8221;) is easy to adapt.

This is the Blogger template code (in the standard templates, put this instead of the existing code that is much like the part here between the `<ItemPage> ... </ItemPage>` tags). Feel free to use it if you want to.

`<br />
<ItemPage><br />
<h2 class="sidebar-title">Previous posts</h2><br />
<ul id="recently"><br />
<BloggerPreviousItems><br />
<li><a href="<$BlogItemPermalinkURL$>" mce_href="<$BlogItemPermalinkURL$>"><$BlogPreviousItemTitle$></a></li><br />
</BloggerPreviousItems><br />
</ul><br />
</ItemPage><br />
<MainOrArchivePage><br />
<h2 class="sidebar-title">Previous posts</h2><br />
<ul><br />
<Blogger><br />
<li><a href="<$BlogItemPermalinkURL$>" mce_href="<$BlogItemPermalinkURL$>"><$BlogItemTitle$></a><br />
<BlogItemCommentsEnabled><br />
<BlogItemComments><br />
<div class="recent_comment"><br />
<a href="<$BlogCommentPermalinkURL$>" mce_href="<$BlogCommentPermalinkURL$>">></a> <$BlogCommentBody$><br />
</div><br />
</BlogItemComments><br />
</BlogItemCommentsEnabled><br />
</li><br />
</Blogger><br />
</ul><br />
</MainOrArchivePage><br />
` 

You will need a CSS class (in your CSS file, or in the first part of your Blogger template) with something like the following code:

<pre>.recent_comment  { 
   overflow: auto; 
   border-bottom: 1px #999 dashed; 
   font-size: .8em; 
   height: 25px; 
}</pre>
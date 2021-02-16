---
id: 1147
title: Newscorp is indeed dropping out of Google
date: 2009-12-01T19:04:28+01:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1147
permalink: /2009/12/01/newscorp-is-indeed-dropping-out-of-google/
categories:
  - Google
  - news
tags:
  - murdoch
  - newscorp
---
#### The big disappearing act

When Rupert Murdoch [announced that he would remove his sites](http://www.guardian.co.uk/media/2009/nov/09/murdoch-google) from Google (in order to [make a deal with Microsoft](http://www.wired.com/epicenter/2009/11/news-corp-microsoft-seek-to-pressure-google-into-paying-for-news/), so that only Bing would have the NewsCorp pages, as we now assume), he apparently wasn&#8217;t kidding. Although all Google _web_ sites still indicate that e.g. MySpace has 179 million pages in the index, the Google API is currently returning another number for that: only 7 million. The total number of NewsCorp pages (a [sum of MySpace, IGN, RottenTomatoes, &#8230;](http://tools.forret.com/newscorp/)) has dropped from 192 million to **12 million**.

[<img loading="lazy" src="http://farm3.static.flickr.com/2680/4149930709_33164c5646.jpg" alt="Newscorp is dropping out of Google" width="500" height="114" />](http://www.flickr.com/photos/pforret/4149930709/ "Newscorp is dropping out of Google by Peter Forret, on Flickr")

(trend via <http://trend.visualizor.com/g/1011> )

#### Which sites are Newscorp?

Let me give you some of his &#8216;big&#8217; sites and how their # indexed pages have dropped:

  * Myspace: from 179 mio to 7 mio
  * RottenTomatoes: from 4 mio to 100.000
  * IGN: from 4 mio to 300.000
  * Stats.com: from 2.4 mio to 50.000
  * News.com.au: from 1.2 mio to 70.000
  * Sky.com: from 1.4 mio to 85.000

I suspect the Fox, National Geographic, Daily Telegraph, and other sites will soon follow.

#### Did he send in the robots?

I checked to see if NewsCorp finally started using the `robots.txt` file, because that&#8217;s the way you&#8217;re supposed to remove content from Google, not with press conferences.

Myspace:

<pre>User-agent: *
Disallow:</pre>

RottenTomatoes:

<pre>User-agent: Mediapartners-Google
Disallow:</pre>

And the answer there is &#8220;no&#8221;. So I&#8217;m not sure how they tell the Google crawler to stay out.

### &#8212; UPDATE &#8212;

#### Source of the data:

The numbers come from <http://tools.forret.com/newscorp/>, which uses the [Google Search API](http://code.google.com/apis/ajaxsearch/). I double-checked the replies from the API: for MySpace.com I get `"estimatedResultCount": "6950000"` so 7 million, not 179 million. If there&#8217;s an error, it&#8217;s in the Googleplex.
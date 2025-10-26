---
id: 685
title: "Idea: Pipes + SQL = Structured Web Query Language"
date: 2007-02-21T17:00:25+01:00
author: Peter
layout: post
guid: /2007/02/pipes-sql-structured-web-query-language-swql/
permalink: /2007/02/21/pipes-sql-structured-web-query-language-swql/
categories:
  - idea
tags:
   - sql
   - yahoo
---
Let's remix 2 original observations:

> In [Yahoo! Pipes](http://pipes.yahoo.com/), what used to be a table in the relational database is now: a web page, an RSS feed, etc. The current list of sources includes: Yahoo! Search, Yahoo! Local, Fetch (RSS feeds), Google Base and Flickr. Each source can be searched or queried using either pre-defined or user-defined parameters. For example, there can be a search of all french restaurants in Chicago via Yahoo! Local. The data source and the searches can be mixed together (think emergence), using a reach set of operators. Among them is the iterator (which lets the user loop through the results), a counter and many other functions that facilitate cleaning, manipulating and recombining the information.  
> [Yahoo! Pipes and The Web As Database](http://www.readwriteweb.com/archives/yahoo_pipes_web_database.php) via [PoorButHappy](http://poorbuthappy.com/ease/archives/2007/02/14/3505/)

and this one:

> Command line interfaces. Once that was all we had. Then they disappeared, replaced by what we thought was a great advance: GUIs. GUIs were – and still are – valuable, but they fail to scale to the demands of today’s systems. So now command line interfaces are back again, hiding under the name of search. Now you see them, now you don’t. Now you see them again. And they will get better and better with time: mark my words, that is my prediction for the future of interfaces.  
> [jnd.org](http://www.jnd.org/dn.mss/ui_breakthroughcomma.html)

<!--more-->

### Pipes + SQL = SWQL

Imagine Yahoo! Pipes had a command-line interface too:

* An RSS or Atom feed acts like a small table. The columns for each item are: title, link, description, date, author, categories, enclosure, geo:coordinates. The object &#8220;feed&#8221; itself also has properties like title, link, description. To get a list of feed items sorted by title, and filtered on existence of an enclosure: 

```sql
SELECT title, description, enclosure
FROM rss:http://podcast.example.com/feed/ as rss_feed
WHERE len(rss_feed.enclosure) > 0
ORDER BY rss_feed.title
```

* A web page is like a 1 record-table, with a title, body and date (if given by the server). If we take it even larger, any URL can be an object with a MIME-type (text/html for web pages, audio/mp3 for MP3 files, application/pdf for PDF files &#8230;), a title (empty except for web pages, feeds, PDF), a body (readable for HTML, XML &#8230; or just a blob for MP3, MPEG, FLV, &#8230;). XML files can also easily be accessed. Wouldn't this be nice: 

```sql
SELECT trailers.title, trailers.description, trailers.enclosure
FROM xml:http://apple-trailers.example.com/hd/trailers.xml as trailers
WHERE trailers.title in
( SELECT TOP 100 title
FROM xml:http://www.imdb.com/chart/top/top250.xml as imdb
WHERE imdb.release_date &gt; '1 Jan 2000'
ORDER BY imdb.score DESC )
ORDER BY imdb.release_date
```
    
Almosty reads like English, doesn't it?

* There should be operators for comparing stuff, for parsing and iterating comma-separated lists (like the categories in a feed), for parsing HTML. Try to guess what the following would do: 

```sql
FOR blogpost IN rss:http://blog.example.com/feed/
LOOP
INSERT INTO links (href, title, inner_html,date)
SELECT href, title, inner_html,blogpost.date
FROM htmlparse(blogpost.description,"&lt;a&gt;")
END LOOP

SELECT title, href as title, inner_html as description, date
INTO special:output_rss
FROM links
```
    
Because, sometimes, a GUI is too much.
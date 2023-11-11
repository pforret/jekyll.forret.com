---
id: 431
title: 'Perl HTML scraping part #1'
date: 2005-01-21T18:05:07+01:00
author: Peter
layout: post
guid: /2005/01/perl-html-scraping-part-1/
permalink: /2005/01/21/perl-html-scraping-part-1/
categories:
  - Linux
---
Here we are, back at the scene of the crime. Yes, I know it's been a while. And the task of the day is:

GOAL:
:   make an HTML scraper, i.e. a script that grabs another URL and outputs the results to the screen 

TOOL:
:   let's say &#8230; Perl (in my case: Perl 5.8 on RedHat) 

INPUT:
:   a URL 

OUTPUT:
:   the HTML code of that URL

The actual HTML retrieval is easy: you need `get()` from the LWP::Simple module:  
`use LWP::Simple;<br />
my $page = get($url);`

Some remarks:

</p> 

  * Since you are generating a web page, you need the CGI module (to take care of the HTTP headers and stuff).


  * The URL input parameter will be given as an HTTP querystring: `?url=http://www.example.com/path/page.htm`. When no url parameter given, we will generate a form where it can be filled in.


  * We calculate the time it takes to retrieve the original page


``

#!/usr/bin/perl -w  
use strict;  
use CGI qw(:standard);  
use LWP::Simple qw(!head);`my $query = new CGI;<br />
my $url = $query->param('url');<br />
my $debug = 0;`

print header();  
if(length($url) > 0) {  
print getpage($url);  
} else {  
showform();  
}

sub getpage{  
my $url = shift;  
my $time1 = time();  
debuginfo(&#8220;Scraping <a target=_blank href='&#8221; . $url . &#8220;&#8216;>link</a> &#8230;&#8221;);  
my $page = get($url);  
my $time2 = time();  
debuginfo(&#8220;Time taken was <b>&#8221; . ($time2 &#8211; $time1) . &#8220;</b> seconds&#8221;);  
debuginfo(&#8220;Total bytes scraped: <b>&#8221;. length($page)/1000 . &#8220;KB</b>&#8221; );  
return $page;  
}

sub debuginfo{  
if ($debug > 0) {  
my $text = shift;  
print &#8220;<small>&#8221; , $text , &#8220;</small><br />n&#8221;;  
}

}

sub showform{  
print(&#8220;<html><head>&#8221;);  
print(&#8220;<title>SCRAPER</title>&#8221;);  
print(&#8220;<link rel=stylesheet type=text/css href=http://www.forret.com/blog/style.css>&#8221;);  
print(&#8220;</head><body><center>n&#8221;);  
print(&#8220;<form method=GET action='scrape.pl'>&#8221;);  
print(&#8220;URL: <input name=url type=text size=60 value=http://www.forret.com>&#8221;);  
print(&#8220;<input type=submit></form>n&#8221;);  
print(&#8220;</center></body></html>n&#8221;);  
}

Next step: making sure image `src=` and hyperlink `href` keep on working (so convert relative links to absolute links!).
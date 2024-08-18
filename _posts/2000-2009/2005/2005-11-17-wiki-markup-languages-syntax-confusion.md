---
id: 217
title: 'Wiki markup languages: syntax confusion'
date: 2005-11-17T23:24:00+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/11/17/wiki-markup-languages-syntax-confusion/
permalink: /2005/11/17/wiki-markup-languages-syntax-confusion/
categories:
  - Web2.0
---
![](http://www.pixagogo.com/S5vpfnjbBPdPkpwuXFLFrK!ESZBkrMrWMhu8nXJ0tt!-SU0QSdGseNjs1OJegVEQGe-OMz65ZURp0SlFV151gxbY3EmSl74Q98p-8qTyPON3qDkdfSlJMVajr0pf8D4Wk2yWrs7Z3VIOn6ldkvk3JFcHvSUTSeUYZY/2b-or-not-2b_sepia.jpg)  
In the last couple of months I have been working with [Twiki](http://twiki.org/), [PhpWiki](http://phpwiki.sourceforge.net/), [MediaWiki](http://www.mediawiki.org), [WordPress](http://www.wordpress.org) and [PBwiki](http://www.pbwiki.com) (oh, the joys of being a freelancer). They all have their own pros and cons, but unfortunately also almost all have their own markup dialect. With markup I mean: the way you should indicate in regular text which parts should be bold/ italic/ heading/ code/ links/ &#8230; 

The original C2 Wiki (1995) started with [CamelCase](http://en.wikipedia.org/wiki/CamelCase) keywords and &#8221;'bold&#8221;' (that's three single quotes) for bold, but quite some variants (sometimes improvements) have been created. The problem is that for each wiki system you use (admitted, I might be a heavier user than the average Joe) you have to reprogram your habits: how do I put a link, an image, a bullet list, a piece of code? It's like switching between VBScript, VB.Net and C#, or QWERTY and AZERTY all the time.

### Standard markup dialects

My suggestion: 

  * create a limited number of standard wiki markup syntaxes (let's say 4), 
  * let every wiki system offer their users a choice between them. 

I'm used to working on Wikipedia? I use the WikiText syntax everywhere. Or Textile, or Markdown. That way I just have to get used to one way of doing things.

### Lightweight Markup languages

**[Wikimedia syntax](http://meta.wikimedia.org/wiki/Help:Editing)**  
As used by [Wikipedia](http://www.wikipedia.org): also called [WikiText](http://en.wikipedia.org/wiki/Wikitext)

<table border="0" cellspacing="4" cellpadding="0">
  <tr>
    <th>
      Internal link
    </th>
    
    <td>
      <code>[[keyword]]</code> or <code>[[keyword][text to show]]</code>
    </td>
  </tr>
  
  <tr>
    <th>
      External link
    </th>
    
    <td>
      <code>[http://www.example.com text to show]</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Image
    </th>
    
    <td>
      <code>[[Image:example.jpg|Text to show]]</code>
    </td>
  </tr>
  
  <tr>
    <th>
      <strong>Bold</strong>/<em>Italic</em>
    </th>
    
    <td>
      <code>'''bold'''</code>/<code>''italic''</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 1
    </th>
    
    <td>
      <code>=HEADING1=</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 2
    </th>
    
    <td>
      <code>==HEADING==</code>
    </td>
  </tr>
</table>

**[Twiki syntax](http://twiki.org/cgi-bin/view/TWiki/TextFormattingFAQ)**

<table border="0" cellspacing="4" cellpadding="0">
  <tr>
    <th>
      Internal link
    </th>
    
    <td>
      <code>CamelCase</code> or <code>[[keyword][text to show]]</code>
    </td>
  </tr>
  
  <tr>
    <th>
      External link
    </th>
    
    <td>
      <code>http://www.example.com</code> or <code>[[http://xml.org XML]]</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Image
    </th>
    
    <td>
      <code>http://www.example.com/image.jpg</code>
    </td>
  </tr>
  
  <tr>
    <th>
      <strong>Bold</strong>/<em>Italic</em>
    </th>
    
    <td>
      <code>*bold*</code>/<code>_italic_</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 1
    </th>
    
    <td>
      <code>---+HEADING1</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 2
    </th>
    
    <td>
      <code>---++HEADING</code>
    </td>
  </tr>
</table>

**[PBWiki syntax](http://yummy.pbwiki.com/WikiStyle)**  
Used on [pbwiki](http://www.pbwiki.com) hosted wikis.

<table border="0" cellspacing="4" cellpadding="0">
  <tr>
    <th>
      Internal link
    </th>
    
    <td>
      <code>CamelCase</code>
    </td>
  </tr>
  
  <tr>
    <th>
      External link
    </th>
    
    <td>
      <code>http://www.example.com</code> or <code>[http://www.example.com|text to show]</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Image
    </th>
    
    <td>
      <code>http://www.example.com/image.jpg</code>
    </td>
  </tr>
  
  <tr>
    <th>
      <strong>Bold</strong>/<em>Italic</em>
    </th>
    
    <td>
      <code>**bold**</code>/<code>''italic''</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 1
    </th>
    
    <td>
      <code>!HEADING1</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 2
    </th>
    
    <td>
      <code>!!HEADING</code>
    </td>
  </tr>
</table>

**[Textile syntax](http://textism.com/tools/textile/)**  
Available as a plug-in for WordPress and some wiki systems 

<table border="0" cellspacing="4" cellpadding="0">
  <tr>
    <th>
      Internal link
    </th>
    
    <td>
      &#8211;
    </td>
  </tr>
  
  <tr>
    <th>
      External link
    </th>
    
    <td>
      <code>"This is a link ":http://www.example.com</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Image
    </th>
    
    <td>
      <code>!http://www.example.com/image.jpg!</code>
    </td>
  </tr>
  
  <tr>
    <th>
      <strong>Bold</strong>/<em>Italic</em>
    </th>
    
    <td>
      <code>*bold*</code>/<code>_italic_</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 1
    </th>
    
    <td>
      <code>h1. HEADING1</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 2
    </th>
    
    <td>
      <code>h2. HEADING</code>
    </td>
  </tr>
</table>

**[Markdown syntax](http://daringfireball.net/projects/markdown/syntax)**

<table border="0" cellspacing="4" cellpadding="0">
  <tr>
    <th>
      Internal link
    </th>
    
    <td>
      <code>[text to show][id]</code>
    </td>
  </tr>
  
  <tr>
    <th>
      External link
    </th>
    
    <td>
      <code>[This link](http://example.net/)</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Image
    </th>
    
    <td>
      <code>![text to show](http://www.example.com/image.jpg)</code>
    </td>
  </tr>
  
  <tr>
    <th>
      <strong>Bold</strong>/<em>Italic</em>
    </th>
    
    <td>
      <code>**bold**</code>/<code>_italic_</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 1
    </th>
    
    <td>
      <code># HEADING1</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 2
    </th>
    
    <td>
      <code>## HEADING</code>
    </td>
  </tr>
</table>

**[BBCode syntax](http://en.wikipedia.org/wiki/BBCode)**  
Used on lots of forums

<table border="0" cellspacing="4" cellpadding="0">
  <tr>
    <th>
      Internal link
    </th>
    
    <td>
      &#8211;
    </td>
  </tr>
  
  <tr>
    <th>
      External link
    </th>
    
    <td>
      <code>[URL=http://example.net/]Text to show[/URL]</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Image
    </th>
    
    <td>
      <code>[IMG]http://www.example.com/image.jpg[/IMG]</code>
    </td>
  </tr>
  
  <tr>
    <th>
      <strong>Bold</strong>/<em>Italic</em>
    </th>
    
    <td>
      <code>[b]bold[/b]</code>/<code>[i]italic[/i]</code>
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 1
    </th>
    
    <td>
      &#8211;
    </td>
  </tr>
  
  <tr>
    <th>
      Heading 2
    </th>
    
    <td>
      &#8211;
    </td>
  </tr>
</table>

And some more examples on [List of lightweight markup languages](http://en.wikipedia.org/wiki/List_of_lightweight_markup_languages).
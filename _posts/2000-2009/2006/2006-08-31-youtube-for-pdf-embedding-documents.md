---
id: 442
title: 'Youtube for PDF: embedding documents'
date: 2006-08-31T18:35:19+02:00
author: Peter
layout: post
guid: /2006/08/youtube-for-pdf-embedding-documents/
permalink: /2006/08/31/youtube-for-pdf-embedding-documents/
categories:
  - Web2.0
---
### PDF Documents

Playing around with [embedded Google calendars](/2006/08/brussels-tango-on-google-calendar/) and reading &#8220;[Google Apps and the power of embedded functionality](http://www.longtail.com/the_long_tail/2006/08/google_apps_and.html)&#8220;, I got to thinking: what would be other good candidates for a _1-click-embedding_ provider of other types of documents. I wondered e.g. whether there was something like Youtube for audio (yes, there is. [GoEar.com](http://www.goear.com) is one example). But then I thought of a document type we all have learned to love and hate: Adobe's Portable Document Format or [PDF](http://en.wikipedia.org/wiki/PDF).

The idea behind the PDF file format is valuable: create a cross-platform standard for exchanging and printing documents that includes the text, images, fonts and their layout. The Acrobat Reader is a free application, and while Adobe's PDF Writer is a commercial product (from $299), there are [enough](http://www.pdf995.com/) [free](http://www.cutepdf.com/) [alternatives](http://www.primopdf.com/) to counter that. The thing is: PDF is great for printing, but not for browsing. 

When you click on a PDF link, one of multiple things might happen:

  * If the web server does not send a header &#8220;`Content-Type: application/pdf`&#8220;, your browser has no clue what to do with the file: it will let you download the file and that's all
  * if Acrobat is not installed, you can also only download the file, because your browser will not know what to do with files of type `application/pdf`
  * if Acrobat is installed, but you work with a browser that is not tightly linked to the OS (e.g. Firefox on Windows), it still might not open in Acrobat.
  * if your browser has configured Acrobat as a _helper_ application, the file will download and will then be opened with the reader. So you will have 2 applications open: your browser and Acrobat Reader. This is actually the best method.
  * With Internet Explorer on Windows, Acrobat will open _inside_ your browser, and your menu bar will become an interesting mix of IE and Acrobat options. (Where is the print button? Ah-ha!!) When you close the browser, a copy of Acrobat will continue to run in an invisible way, taking up some 32MB of memory
  * If you had no indication how big the PDF file was, you might be fiddling your thumbs for the next 5 minutes while the document is being downloaded.
  * If the document uses fonts that you don't have, you might be looking at a very weird layout

So you are screwed if you don't have Acrobat, if it is a really big document or if you access through a misconfigured browser. This is the equivalent of clicking on a .AVI movie file without a clue of how big the movie is, whether you have the necessary audio and video codecs to see it, and whether it's worth it. If that was largely solved by a service provider like Youtube, what would a similar service for .PDF files look like?  
<!--more-->

### Youtube/Flickr for PDF files

Let's call this web site PDFViewr. When you want to embed a PDF into your web site / blog, you first upload it to PDFViewr. There the document information is extracted (title, author, # pages, filesize, fonts, &#8230;) and a preview of the first page is generated as a JPG/PNG image. You can edit that info and add tags or notes (e.g. _&#8220;Skip the first 15 pages, the juicy bits are page 16 to 23&#8221;_). You are then given a short piece of code that you can embed into your own site. The result would be like this (taking an example from a 13MB PDF from [taschen.com](http://www.taschen.com/pages/en/downloads/browse/37.htm)):

<div style="border: 2px #666 solid; height: 400px; font-size: .8em;">
  <img src="http://static.flickr.com/98/229969112_d85e8d88f9_m.jpg" style="margin-right: 5px; width: 240px; heigth: 196px; float: left" alt="Taschen magazine" /></p> 
  
  <table style="margin: 0px" cellspacing="0" cellpadding="0" border="0">
    <tr>
      <td>
        Title:
      </td>
      
      <td>
        <b>TASCHEN Magazine Summer 2006</b>
      </td>
    </tr>
    
    <tr>
      <td>
        Author:
      </td>
      
      <td>
        <u>Taschen.com</u>
      </td>
    </tr>
    
    <tr>
      <td>
        Info:
      </td>
      
      <td>
        92 pages, 13.8MB, full color
      </td>
    </tr>
    
    <tr>
      <td>
        Tags:
      </td>
      
      <td>
        <u>taschen</u>, <u>magazine</u>, <u>germany</u>, <u>art</u>, <u>erotic</u>
      </td>
    </tr>
    
    <tr>
      <td>
        Link:
      </td>
      
      <td>
        <input value="http://www.pdfviewr.com/poi8uyt5rez2" style="font-size: .9em; width: 200px" />
      </td>
    </tr>
    
    <tr>
      <td>
        Embed:
      </td>
      
      <td>
        <input value="<script src=&quot;http://www.pdfviewr.com/js/poi8uyt5rez2.jssrc=&quot;></script>" style="font-size: .9em; width: 200px" />
      </td>
    </tr>
    
    <tr>
      <td colspan="2">
        <u>Read in Acrobat</u> &#8211; <u>Read as HTML</u> &#8211; <u>Slideshow</u>
      </td>
    </tr>
    
    <tr>
      <td colspan="2">
        <u>Download PDF</u> &#8211; <u>Download ZIP</u> &#8211; <u>Save for later</u>
      </td>
    </tr>
    
    <tr>
      <td colspan="2">
        <u>Send to friend</u> &#8211; <u>Print & bind</u>
      </td>
    </tr>
  </table>
</div>

Actually it wouldn't be that hard to set up: 

  * The difference between automatically downloading or opening a document can be controlled with the `Content-Type` HTTP header.
  * the JPG preview of a PDF file can be created with [ImageMagick + GhostScript](http://answers.google.com/answers/threadview?id=134543) (free)
  * you could easily add the same services for remote PDFs, i.e. the customer gives a URL instead of uploading a document. There is a whole copyright minefield there that I will wisely ignore.
  * Since we will have stored or cached each PDf file, it's easy to let users add PDFs to their own PDFviewr storage account.
  * A connection to a remote print and bind service like [Print(fu)](http://printfu.org/) is very easy to make. It's a pity Print(fu) does not ship to Europe yet, because I would surely use them to have e.g. the [DCI specs](http://www.dcimovies.com/) (176 pages) printed in a nice booklet.
  * The equivalent for Youtube's video format conversion (Quicktime, MPEG4, AVI &#8230; to Flash video) is our PDF conversion to HTML, JPG.
  * Since documents are normally formatted in portrait orientation (higher than wide) and computer screens are normally in landscape orientation (wider than high), they are no natural match. To view a PDF document on screen, one could use a two-facing-pages layout for large screens, or a half-a-page-at-a-time approach for smaller screens.
  * In all our web 2.0 enthousiasm, we could add folksonomy (tags), comments, ratings &#8230; so that &#8220;good content&#8221; would float up.
  * Monetisation? Well, add a payment system for commercial documents. 

Any ideas?
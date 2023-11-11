---
id: 81
title: 'Idea: using a URI for sending email'
date: 2004-11-25T16:28:03+01:00
author: Peter
layout: post
permalink: /2004/11/25/idea-using-a-uri-for-sending-email/
categories:
  - idea

tags:
    - email
---
In order to send an email over [SMTP](http://www.networksorcery.com/enp/rfc/rfc2821.txt), you need 2 sets of information:

  * **WHAT**: the content of the email, i.e. from-address, subject, to/cc addresses and the actual message (in TXT and/or in HTML) 
  * **HOW**: you also need the name/address of an SMTP server (and its SMTP port), and optionally [a username/password to authenticate](http://www.networksorcery.com/enp/rfc/rfc2554.txt) to the server ([ESMTP](http://www.networksorcery.com/enp/rfc/rfc2821.txt)) &#8211; these would typically be fixed for the email sending application.

On the other hand, you have the HTTP GET format where you can put everything you need to execute the request in 1 string:  
<u>http://james:password@www.example.com /hr /request /?type=holiday&start=2004-11-22&end=2004-11-24</u>  
No need to save the &#8216;server/port' data separate from the &#8216;request' location or from the actual content.

Which inspired me to a similar format for sending email:

> <u>smtp://[username[:password]]@server[:port] /from:address [/subject:text] [/to:address] [/cc:address] [/bcc:address] [?[subject=text] [&message=text] [&to=text] [&cc=text] [&bcc=text] [&attachment=file]]</u>

Some examples:

  * <u>smtp://relay.example.com /from:me@example.com /subject:Test+was+OK%21 /to:james@destination.com /?message=Here+I+am%21</u>
  * <u>smtp://localhost:2525 /from:monitor@example.com /subject:webserver+3+is+down ?to=support@example.com&message=webserver+3+is+down+(time-out+after+10+seconds)</u>
  * <u>smtp://james:password@localhost /from:james@example.com /subject:this+is+authenticated /to:test@example.com</u>

Keep in mind: a URL is typically limited to 255 characters (depending on implementation), and a querystring (the part after the &#8220;?&#8221;) is limited to 4KB.

  * Out of principle, the from address should always be specified as the 1st level pseudo-folder `/from:address/`. Because it should never be longer than 100 characters, and there should always be one, and only one. 
  * If your subject is more than 200 characters, you need the `?subject=text` notation. Otherwise the `/subject:text/` is preferable because you would be less inclined to specify more than 1 subject. 
  * If your message content is more than 200 characters, you need the `?message=text`. If you need more than 4KB, you could use the equivalent of a [HTTP POST](http://www.networksorcery.com/enp/rfc/rfc1945.txt), i.e. not specify it in the URL string, but stream the whole this after giving the request. 
  * You could allow multiple `/cc:address/` entries, or just use a `/cc:addr1;addr2;addr3/` 
  * to allow &#8216;pretty' email addresses, you could allow `/from:peter@example.com:Peter+Forret/`. (Any better suggestions for that?) 
  * You could allow a `smtp://default/...` if you still want your email sending application to choose its SMTP server. 
  * Attachments can be specified with an address on a local disk, or on the Internet (with another URI) 

The advantages of this system?

  1. you can specify a complete email in 1 single text string (with size limitations) 
  2. one could easily specify a lists of emails to be sent (e.g. a text file with 1 email per line), and use different SMTP servers for some of them (e.g. send the Hotmail/MSN ones directly to _mx?.hotmail.com_ for speedy delivery) 
  3. it can be interpreted by the SMTP client (email sending application), that translates it into a [regular SMTP conversation](http://www.networksorcery.com/enp/rfc/rfc2821.txt) (`HELO ... MAIL FROM ... RCPT TO ... DATA`) 
  4. it could easily be accepted by a web server, that accepts the URI with the `smtp://` replaced by `http://`. One could send an email by just clicking on a link in a browser. The server would of course not accept these requests from anyone, otherwise it would be an easy spam machine. But one could send emails with cURL or WGET. How about that? 
  5. if a company stores all sent messages on a special server, you could have a search-within-your-emails-site with +- the same URI format:  
    <u>http://peter:password@searchmail.example.com /from:peter@example.com /?subject=*contract* &notbefore=2004-11-15 &notafter=2004-11-20 &to=*robert*</u> 
  6. One could also adopt `smtps://` for [SMTP over TLS](http://www.networksorcery.com/enp/rfc/rfc3207.txt).

If anyone can do something useful with this, be my guest!

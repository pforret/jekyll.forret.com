---
id: 10
title: Fancy redirection on IIS 5
date: 2004-04-24T01:42:21+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/04/24/fancy-redirection-on-iis-5/
permalink: /2004/04/24/fancy-redirection-on-iis-5/
categories:
  - windows
---
The task seemed easy enough: 

> set up a new web site _sub.domain.com_ such that every URL <u>http://sub.domain.com/some_path</u> is automatically redirected to <u>process.aspx/?path=some_path</u> (on the same domain or on www.domain.com &#8211; both have .Net running)

Because we run our sites on Win2K/IIS the following options were immediately discarded:

A. Install & configure Apache</p> 
:   I like Apache, let there be no mistake about that, but it&#8217;s just too much hassle managing 2 different web servers on 1 machine. I like having one management interface. Mind you, it would have been so easy:  
    `RedirectMatch /(.*) http://www.domain.com/process.aspx?path=$1`</p> 
    
    B. Develop a Python daemon</p> 
    
    :   What&#8217;s wrong with being a geek 🙂 ? This is after all a simple single-purpose web site, you have an _HTTP GET_ coming in and a _302 Redirect_ going out with super-basic parsing (check out the regular expression above). But again: having several web servers on 1 machine is asking for chaos. Plus, how robust is the Python _SimpleHTTPServer_? Has it been tested with attacks from Blaster/Mydoom and the likes? 

Ok, this leaves us with the IIS server. So I create a new IIS site, that takes all the **sub**.domain.com requests (using a host-header). And now just add redirection, right? Let&#8217;s see &#8230;

C. /default.asp page</p> 
:   This might have worked if all the incoming URLs were like <u>http://sub.domain.com/<b>?</b>some_path</u> (see the question mark?). But that&#8217;s not the case. </p> 
    
    > _BTW: Why .asp instead of .aspx? Because it&#8217;s basically a hack, and hacking is way easier in ASP (if you&#8217;re me)._
    
    D. Custom 404 script</p> 
    
    :   Configure the IIS to redirect all not found pages (&#8216;404&#8217; errors) to a /404.asp script. The script basically has to do:  
        `Response.Redirect "/process.aspx?path=" & Request.ServerVariables("URL")`  
        Only that I get as URL &#8220;/404.asp&#8221; instead of the original URL. I can&#8217;t seem to get the _some_path_. So I try this for 10 minutes and then move on, basically because I &#8216;m thinking the last method will be the fastest. If I would have looked further, the QueryString contains &#8220;_404;http://sub.domain.com/some_path_&#8220;, and I could have parsed it out.</p> 
        
        > Additional remark here: if your home directory is empty, and you call <u>http://sub.domain.com/</u> (home page), you get an error _403 Access Forbidden_ error, instead of _404 Page not found_. So you would have to either remap that error 403 too, or create a /default.asp that catches this case.
        
        E. Use IIS redirection</p> 
        
        :   Sure, IIS supports automatic redirection out of the box! Regular expressions and everything! Let&#8217;s elaborate on this method.  
<img src="http://www.pixagogo.com/Tools/Thumbnails.aspx?thumb=S5!pg7swZZxdGySkzoV6UdRRGBYy27Dx231pXzkPFQN6rt!caqTYQBqShGA4fxQYH8O9VDTK3uFtpjSRuPWLzhsWc2VmA8r9DLpypUAvMwPW0_" alt="IIS redirection" border="0" /> </p> 
            
              * Trial E.1: Redirect all URLs to **/process/?path=$V** (_$V_ would translate here in &#8220;/some_path&#8221;). Only, when you redirect everything to to a subfolder, this policy is inherited by this subfolder, and you also redirect calls to that subfolder. So you get a nice endless redirection loop that creates links like _/process/?path=process/?path=process/?path=process/?path=&#8230;_ 
              * Trial E.2: oh, but that is what the checkbox &#8216;A directory below this one&#8217; is for. Only, it doesn&#8217;t work: I get 404 errors. I&#8217;m probably doing something wrong. 
              * Trial E.3: oh, but you can use a more sophisticated redirection, and turn off redirection for subfolders with &#8220;!&#8221;. Ok, I try _\*;/process/\*;!/*;/process/?path=$0_. Nope. Try setting &#8220;!&#8221; as redirection for /process/ folder. Syntax error. Try &#8220;\*;\*;!&#8221; as redirection for /process folder. Nope, I get get redirection to a non-existent page &#8220;!&#8221;. Ok, drop this one. 
              * Trial E.4: wait, what if I don&#8217;t redirect to a script one folder lower, but just to <u>/process.aspx?path=$V</u>? Ta-daaa! Here&#8217;s the endless loop again! 
              * Final try E.5: This is what worked at last: install the process.aspx on the destination server and redirect to it (in other words, exactly what I would have done if I had used Apache)  
                `*;/*;http://www.domain.com/process.aspx?path=$0` 

Trivial, right? Did I &#8216;solve&#8217; the redirection spaghetti in IIS? Not really. Did I get a final result that worked? Yep. Who&#8217;s the man?
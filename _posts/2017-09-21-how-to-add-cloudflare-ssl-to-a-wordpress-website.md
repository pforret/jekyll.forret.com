---
id: 1563
title: How to add Cloudflare SSL to a WordPress website
date: 2017-09-21T21:02:08+02:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1563
permalink: /2017/09/21/how-to-add-cloudflare-ssl-to-a-wordpress-website/
attitude_sidebarlayout:
  - default
image: /wp-content/uploads/2017/09/ssl-600x386.png
categories:
  - security
  - Wordpress
tags:
  - certificate
  - cloudflare
  - crypto
  - encryption
  - https
  - pki
  - rewrite
  - security
  - ssl
  - tls
  - web
  - Wordpress
---
### Why SSL?

Google Search and Google Chrome are making it more and more unattractive to still have an HTTP (insecure) website, and are pushing publishers to go &#8220;**HTTPS Always & Everywhere**&#8220;. Offering HTTPS used to require an expensive SSL certificate, but thanks to Cloudflare and Let&#8217;sEncrypt, this is not longer the case. Here follow the steps you should take if you have a self-hosted WordPress site and you want to add Cloudflare SSL.

### The steps to take

  1. set up your [Cloudflare account](https://www.cloudflare.com) 
      1. Select the &#8216;Free plan&#8217;
      2. let Cloudflare scan your top domain DNS settings
      3. make sure your blog domain goes through Cloudflare  
<img  class="alignnone" src="http://www.clipular.com/c/6111939934814208.png?k=OHBajC1tFf1WN_5ixJTGmeSnS78" alt="" width="301" height="55" /> 
  2. change your DNS nameservers 
      1. Cloudflare will propose the new names of your DNS servers  
        [<img  class="alignnone size-full wp-image-1564" src="//blog.forret.com/wp-content/uploads/2017/09/nsservers.jpg" alt="" width="239" height="176" />](//blog.forret.com/wp-content/uploads/2017/09/nsservers.jpg)
      2. Configure these in the admin interface of your domain name service (tip: if you want to know what they are now, use the tool [dnscheck.pingdom.com](http://dnscheck.pingdom.com))
  3. WP plugin: Cloudflare 
      1. [add new plugin](https://wordpress.org/plugins/cloudflare/) (search on &#8216;cloudflare&#8217;)  
<img  class="alignnone " src="http://www.clipular.com/c/5031502391017472.png?k=VWKOfI0W-netJW6ZVZV3pQu-Wx4" width="301" height="135" /> 
      2. get your Cloudflare API key: go to your [Cloudflare profile page](https://www.cloudflare.com/a/profile) and copy the Global API Key
      3. configure plugin: fill in your email, paste your API key and save API credentials
      4. click &#8216;Optimize Cloudflare for WordPress&#8217;
  4. WP plugin: HTTP / HTTPS Remover 
      1. [Add new plugin](https://wordpress.org/plugins/http-https-remover/) (search on &#8216;https&#8217;)  
<img  class="alignnone " src="http://www.clipular.com/c/5784384656637952.png?k=hliN7lWZXxdfWUHd8keESATSx-o" width="301" height="112" />  
        this will replace the &#8220;http://&#8221; in front of your images into &#8220;//&#8221; which is the correct way to work in both https and http
  5. WP plugin: Disable Emoji (optional) 
      1. Add new plugin (search on &#8216;disable emoji&#8217;)  
        [<img  class="alignnone wp-image-1570" src="//blog.forret.com/wp-content/uploads/2017/09/disableemojis.jpg" alt="" width="302" height="97" srcset="https://blog.forret.com/wp-content/uploads/2017/09/disableemojis.jpg 513w, https://blog.forret.com/wp-content/uploads/2017/09/disableemojis-300x96.jpg 300w" sizes="(max-width: 302px) 100vw, 302px" />](//blog.forret.com/wp-content/uploads/2017/09/disableemojis.jpg)  
        because otherwise this one .js file will keep on popping up as the 1 file you still keep fetching over http. If you really need emoji recognition in your text, then skip this step.
  6. enable Cloudflare SSL 
      1. Wait for your SSL certificate in Cloudflare  
        it will go from this  
<img  class="alignnone " src="http://www.clipular.com/c/6478947977265152.png?k=c_FccrFeOyprrVSuSh5crWF0kDM" width="299" height="58" />  
        to this  
<img  class="alignnone " src="http://www.clipular.com/c/6555686694813696.png?k=u8_8VL_fWmsATWmk6gdpZMlldCM" width="299" height="56" />  
        While there is no certificate yet, you will get the following error if you try to use https anyway (in Chrome):  
        [<img  class="alignnone wp-image-1565" src="//blog.forret.com/wp-content/uploads/2017/09/httpserror.jpg" alt="" width="299" height="121" srcset="https://blog.forret.com/wp-content/uploads/2017/09/httpserror.jpg 603w, https://blog.forret.com/wp-content/uploads/2017/09/httpserror-300x121.jpg 300w" sizes="(max-width: 299px) 100vw, 299px" />](//blog.forret.com/wp-content/uploads/2017/09/httpserror.jpg)
      2. Crypto settings 
          1. SSL: Flexible (or Full, Cloudflare will normally detect this correctly)
          2. Enable &#8220;Always use HTTPS&#8221;  
<img  class="alignnone " src="http://www.clipular.com/c/6041586600509440.png?k=Z9U6GVn3VmheLz8-OI529fCndHQ" width="301" height="93" /> 
          3. Enable &#8220;Automatic HTTPS Rewrites&#8221;  
<img  class="alignnone " src="http://www.clipular.com/c/5022188997705728.png?k=SiH3bsUS2MWaR5CmVX8zD0XoyQc" width="301" height="98" /> 
  7. check your SSL settings 
      1. Enter your blog domain name in [toolstud.io HTTPS Readiness check](https://toolstud.io/network/https.php)

<span style="border-radius: 2px; text-indent: 20px; width: auto; padding: 0px 4px 0px 0px; text-align: center; font: bold 11px/20px 'Helvetica Neue',Helvetica,sans-serif; color: #ffffff; background: #bd081c no-repeat scroll 3px 50% / 14px 14px; position: absolute; opacity: 1; z-index: 8675309; display: none; cursor: pointer; top: 815px; left: 100px;">Bewaren</span>
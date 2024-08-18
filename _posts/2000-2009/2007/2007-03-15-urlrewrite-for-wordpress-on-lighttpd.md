---
id: 706
title: url.rewrite for WordPress on Lighttpd
date: 2007-03-15T14:12:12+01:00
author: Peter
layout: post
guid: /2007/03/urlrewrite-for-wordpress-on-lighttpd/
permalink: /2007/03/15/urlrewrite-for-wordpress-on-lighttpd/
categories:
  - Wordpress
---
<img src="http://farm1.static.flickr.com/36/122571807_97bd810dd7_t.jpg" style="float: right" alt="Lighty" />This blog now runs on a [Lighttpd](http://www.lighttpd.net/) (Lighty) webserver instead of Apache, and this means the configuration for &#8216;pretty URLs' or permalinks of [WordPress](http://wordpress.org) doesn't work like it used to.  
(As you might have noticed, I use permalinks like _/2007/02/this-is-permalink/_)

Whereas WordPress can automatically adapt the Apache .htacccess file to something like  
`<IfModule mod_rewrite.c><br />
RewriteEngine On<br />
RewriteBase /<br />
RewriteCond %{REQUEST_FILENAME} !-f<br />
RewriteCond %{REQUEST_FILENAME} !-d<br />
RewriteRule . /index.php [L]<br />
</IfModule>`  
it does not do anything automatically for your Lighty .conf configuration file (which is logical, since an application should not be allowed to mess with a central config file).  
<!--more-->

  
So what you have to use is:

  1. a WordPress blog installed in the root of your (sub-) domain:  
    `$HTTP["host"] =~ "{yourdomain}" {<br />
    var.app  = "{yourdomain}"<br />
    accesslog.filename = base + "/logs/" + app + ".access.log"<br />
    server.errorlog = base + "/logs/" + app + ".error.log"<br />
    load php app<br />
    url.rewrite = (<br />
        "^/(wp-.+).*/?" => "$0",<br />
        "^/(sitemap.xml)" => "$0",<br />
        "^/(xmlrpc.php)" => "$0",<br />
        "^/(.+)/?$" => "/index.php/$1"<br />
        )<br />
}` 
  2. a WordPress blog installed in a subfolder (e.g. /blog/)  
    `$HTTP["host"] =~ "{yourdomain}" {<br />
    var.app = "{yourdomain}"<br />
    accesslog.filename = base + "/logs/" + app + ".access.log"<br />
    server.errorlog = base + "/logs/" + app + ".error.log"<br />
    load php app<br />
    url.rewrite = (<br />
        "^/?$" => "/blog/index.php",<br />
        "^/blog/(wp-.+)$" => "$0",<br />
        "^/blog/xmlrpc.php" => "$0",<br />
        "^/blog/sitemap.xml" => "$0",<br />
        "^/blog/(.+)/?$" => "/blog/index.php/$1"<br />
        )<br />
}` 

The xmlrpc.php rule is necessary for external access (like, publishing from del.icio.us or Flickr), and the sitemap.xml file is something for Google Sitemaps.

For those stubborn visitors who always precede their URLs with www, you can also add a redirect:  
`<br />
$HTTP["host"] =~ "www.blog.forret.com" {<br />
url.redirect = ( ".*" => "")<br />
}<br />
`
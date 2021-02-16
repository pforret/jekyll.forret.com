---
id: 305
title: Bluehost vs Dreamhost
date: 2006-04-14T22:12:44+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/04/bluehost-vs-dreamhost/
permalink: /2006/04/14/bluehost-vs-dreamhost/
categories:
  - bandwidth
  - internet
---
As you might have read in my [Migrating to WordPress](http://blog.forret.com/2006/03/migration-to-wordpress-me-vs-murphy/) article, I am now the proud owner of both a Bluehost and Dreamhost account. These two shared hosting providers have similar strong offerings for a similar low price, but they&#8217;re nevertheless different. Let&#8217;s compare both:

**The raw numbers**

<table width="480">
  <tr>
    <th width="50%">
      <a href="http://www.bluehost.com/track/pforret/COMPARE">BLUEHOST.COM<br /> <img style="border: 0px; width: 234px" src="http://img.bluehost.com/234x60/1.gif" alt="Bluehost" /></a>
    </th>
    
    <th width="50%">
      <a href="http://www.dreamhost.com/r.cgi?166410">DREAMHOST.COM<br /> <img style="border: 0px; width: 234px" src="http://www.dreamhost.com/images/rewards/234x60-a.gif" alt="Dreamhost" /></a>
    </th>
  </tr>
  
  <tr>
    <th colspan="2">
      PRICE
    </th>
  </tr>
  
  <tr>
    <td>
      $6.95/mon (2 years prepaid)
    </td>
    
    <td>
      $7.95/mon (2 years prepaid)
    </td>
  </tr>
  
  <tr>
    <th colspan="2">
      FEATURES
    </th>
  </tr>
  
  <tr>
    <td>
      <ul>
        <li>
          10 GB storage
        </li>
        <li>
          250GB/mon bandwidth
        </li>
      </ul>
    </td>
    
    <td>
      <ul>
        <li>
          20 GB storage
        </li>
        <li>
          1000GB/mon bandwidth
        </li>
      </ul>
    </td>
  </tr>
  
  <tr>
    <td>
      <ul>
        <li>
          6 domains, 20 subdomains
        </li>
        <li>
          50 MySQL, 50 Postgres DB
        </li>
        <li>
          2500 email addresses
        </li>
        <li>
          PHP, Perl, Python, Ruby on Rails
        </li>
      </ul>
    </td>
    
    <td>
      <ul>
        <li>
          unlimited domains
        </li>
        <li>
          unlimited MySQL DBs
        </li>
        <li>
          unlimited email addresses
        </li>
        <li>
          PHP, Ruby on Rails
        </li>
      </ul>
    </td>
  </tr>
  
  <tr>
    <th colspan="2">
      ONE-CLICK Install
    </th>
  </tr>
  
  <tr>
    <td>
      CPanel/Fantastico: WordPress, pMachine, Nucleus, Drupal, Joomla, PhpNuke, Typo3, phpBB2, OS Commerce, Coppermine, Gallery, PHPList, Advanced Poll, PHProject, SohoLaunch, PhpWiki, PhpAdsNew, WebCalendar, Moodle, &#8230;
    </td>
    
    <td>
      Home-made: WordPress, phpBB, Advanced Poll, osCommerce, MediaWiki, Joomla, Gallery, WebCalendar
    </td>
  </tr>
</table>

<!--more-->

  
**[BLUEHOST](http://www.bluehost.com/track/pforret/COMPARE) GUI**  
Bluehost has a nice management interface: [Cpanel Pro](http://www.cpanel.net).  
[<img loading="lazy" src="http://static.flickr.com/44/128513379_e87253bd6e.jpg" width="454" height="500" alt="Bluehost: cpanel" />](http://www.flickr.com/photos/pforret/128513379/ "Photo Sharing")

Their list of one-click application installs is impressive:  
[<img loading="lazy" src="http://static.flickr.com/55/128513380_76919a287a.jpg" width="382" height="500" alt="Bluehost: Fantastico" />](http://www.flickr.com/photos/pforret/128513380/ "Photo Sharing")

**[DREAMHOST](http://www.dreamhost.com/r.cgi?166410) GUI**  
The management interface of Dreamhost is an own-developed web application:  
[<img loading="lazy" src="http://static.flickr.com/53/128513381_1f0ec7b9f7.jpg" width="500" height="256" alt="Dreamhost: control" />](http://www.flickr.com/photos/pforret/128513381/ "Photo Sharing")

The list of one-click installs is more limited but has most best-of-breed applications:  
[<img loading="lazy" src="http://static.flickr.com/47/128513382_a117c3d3f2.jpg" width="487" height="500" alt="Dreamhost: goodies" />](http://www.flickr.com/photos/pforret/128513382/ "Photo Sharing")

**DNS MANAGEMENT**  
A big difference between the two is the way they handle DNS management. 

  * Bluehost will expect their DNS servers to be responsible for any domain hosted. Their management web interface will not accept to host a domain that is not controlled by their DNS servers. Believe me, I&#8217;ve tried. 
  * Bluehost does not allow you to just define subdomains in DNS and point them to some external IP address. All your subdomains must be hosted on the same Bluehost server
  * Bluehost does not allow you to choose the subfolder for a subdomain: blog.example.com is hosted on `/blog`. Unfortunately any other domain example.2.com that you have will not be able to get a subdomain blog.example2.com on another subfolder. 

**CONCLUSION**  
If your demands are not too high (not something like 10 domains with 150 subdomains), you like a complete and easy web interface and the luxury of being able to install 30+ applications with one click (it&#8217;s three actually, but who&#8217;s complaining), then take [Bluehost](http://www.bluehost.com/track/pforret/COMPARE), they&#8217;re the cheapest.  
If you need flexible DNS management, are not afraid of installing programs yourself (FTP and such), need a lot of email, database or bandwidth: [Dreamhost](http://www.dreamhost.com/r.cgi?166410) is the way to go!
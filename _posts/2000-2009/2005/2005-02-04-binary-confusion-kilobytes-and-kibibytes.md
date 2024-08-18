---
id: 119
title: 'Binary confusion: kilobytes and kibibytes'
date: 2005-02-04T12:04:20+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/02/04/binary-confusion-kilobytes-and-kibibytes/
permalink: /2005/02/04/binary-confusion-kilobytes-and-kibibytes/
image: /wp-content/uploads/2018/11/fig-21-11-2018_14-20-01-600x300.jpg
categories:
  - bandwidth
  - tool
tags:
  - bandwidth
  - calculate
  - hardware
  - standard
---
When I created my [Bandwidth Calculator](https://toolstud.io/data/bandwidth.php "Bandwidth conversion Calculator"), easily the most popular web tool I ever made, I came across the following problem: in computer technology there is a habit of using kilobyte (kB) as 1024 bytes (as KB), megabyte (MB) as 1024*1024 (1.048.576) bytes. Most of you might think this is correct, but it's not. The [International System of Units (SI)](http://www.bipm.org/en/si/) (that defines the kilo, mega, giga, &#8230; and milli, micro, nano prefixes) uses only base 10 values. **A kilo is always 1000, even for bytes**. In order to find a solution for the IT &#8216;contamination' of using kilo for 2<sup>10</sup> instead of 10<sup>3</sup>, the IEC introduced new units in 1998:

> In 1999, the International Electrotechnical Commission (IEC) published Amendment 2 to &#8220;IEC 60027-2: Letter symbols to be used in electrical technology – Part 2: Telecommunications and electronics&#8221;;. This standard, which had been approved in 1998, introduced the prefixes kibi-, mebi-, gibi-, tebi-, pebi-, exbi-, to be used in specifying binary multiples of a quantity. The names come from the first two letters of the original SI prefixes followed by bi which is short for &#8220;binary&#8221;. **It also clarifies that, from the point of view of the IEC, the SI prefixes only have their base-10 meaning and never have a base-2 meaning**.  
> (from [en.wikipedia.org](http://en.wikipedia.org/wiki/Kibi "Kibi/Kilo"))

So this is the correct usage for file, disk, memory size:

<table border="1" cellspacing="0" cellpadding="4">
  <tr>
    <td>
      Kilobytes (kB)
    </td>
    
    <td>
      1.000
    </td>
    
    <td>
      Kibibyte (KiB)
    </td>
    
    <td>
      1024
    </td>
  </tr>
  
  <tr>
    <td>
      Megabyte (MB)
    </td>
    
    <td>
      1.000 ^ 2
    </td>
    
    <td>
      Mebibyte (MiB)
    </td>
    
    <td>
      1024 ^ 2
    </td>
  </tr>
  
  <tr>
    <td>
      Gigabyte (GB)
    </td>
    
    <td>
      1.000 ^ 3
    </td>
    
    <td>
      Gibibyte (GiB)
    </td>
    
    <td>
      1024 ^ 3
    </td>
  </tr>
  
  <tr>
    <td>
      Terabyte (TB)
    </td>
    
    <td>
      1.000 ^ 4
    </td>
    
    <td>
      Tebibyte (TiB)
    </td>
    
    <td>
      1024 ^ 4
    </td>
  </tr>
  
  <tr>
    <td>
      Petabyte (PB)
    </td>
    
    <td>
      1.000 ^ 5
    </td>
    
    <td>
      Pebibyte (PiB)
    </td>
    
    <td>
      1024 ^ 5
    </td>
  </tr>
  
  <tr>
    <td>
      &#8230;
    </td>
    
    <td>
      &#8230;
    </td>
    
    <td>
      &#8230;
    </td>
    
    <td>
      &#8230;
    </td>
  </tr>
</table>

The problem is: the industry has not adopted these standards. If Windows shows the size of a disk, it converts 28.735.078.400 bytes to &#8220;26.7 GB&#8221;. It should be either 28.7 GB, or 26.7 **GiB**. Remember the 1.44 MB floppy? It actually never existed: [it is either 1.40 MiB or 1.47 MB](http://homepages.tesco.net/~J.deBoynePollard/FGA/1mb44-is-not-a-standard-floppy-disc-size.html).

> On September 18 2003 Reuters has reported that Apple, Dell, Gateway, Hewlett-Packard, IBM, Sharp, Sony and Toshiba have been sued in a class-action suit in Los Angeles Superior Court for “deceiving” the true capacity of their hard drives. This of course was due to ambiguity of “GB” when used by software and hardware vendors. This precedent might prompt Apple to adapt binary prefixes in its Mac OS, as well as other companies to put pressure on Microsoft to adapt them in its Windows operating systems.  
> from [members.optus.net](http://members.optus.net/alexey/prefBin.xhtml)

One could argue: people have always used the MB = 1024*1024 for disk drives, why change now? Well, clarity is a good reason, and unambiguity. [NASA lost the Mars Orbiter](http://www.cnn.com/TECH/space/9909/30/mars.metric/) because engineers had mixed metric speed (km/h) with English speed (mi/h). [Don't even get me started on _miles per gallon_](/blog/2004/08/imperial-time-units-here-come-nunes.html).

So: a disk of 160 GB should have 160.000.000.000 bytes. And it is about 150 GiB. Get over it.

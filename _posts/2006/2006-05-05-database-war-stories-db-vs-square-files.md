---
id: 323
title: 'Database war stories: DB vs &#8216;square' files'
date: 2006-05-05T10:22:05+02:00
author: Peter
layout: post
guid: /2006/05/database-war-stories-db-vs-square-files/
permalink: /2006/05/05/database-war-stories-db-vs-square-files/
categories:
  - bandwidth
  - Belgium
  - hardware
tags:
  - database
  - sopres
  - text
  - unix
---
[<img  width="181" src="http://static.flickr.com/46/140747997_b1b4edecaa_m.jpg" alt="Plug and Play" height="240" style="float: right" />](http://www.flickr.com/photos/pforret/140747997/ "Photo Sharing")I've been following the Database War Stories of [O'Reilly Radar](http://radar.oreilly.com): how companies use text-based alternatives to classic relational database systems in order to cope with huge volumes. Check out the stories of [Findory/Amazon](http://radar.oreilly.com/archives/2006/05/database_war_stories_8_findory_1.html), [Google File System](http://radar.oreilly.com/archives/2006/05/database_war_stories_7_google.html), [Flickr](http://radar.oreilly.com/archives/2006/04/database_war_stories_3_flickr.html) and [Second Life](http://radar.oreilly.com/archives/2006/04/web_20_and_databases_part_1_se.html). Anyway, this seemed like a good moment to share some of my database war stories. Let me take you back to the early nineties.

**1993 @ Ukkel**  
I arrive at Sopres, one of the larger direct marketing / database management companies in Belgium. Fresh from university (and 1 year of military service), I expect to see RDBMS everywhere and dive into SQL. Imagine my surprise when I see that, yes, there are a lot of Sybase SQLServer databases around, but the bulk of the work is done with something they call &#8216;square files' (see below). They have built a whole set of tools to work with those and by using them myself, I learn to appreciate the advantanges of the system (speed, mainly) and grow a fairly accurate intuition for things like queries, indexes and outer joins.  
<!--more-->

  
**Square files**  
[<img  width="240" src="http://static.flickr.com/53/140747995_b3102758d1_m.jpg" alt="Press CTRL-ALT-DEL" height="187" style="float: right" />](http://www.flickr.com/photos/pforret/140747995/ "Photo Sharing")  
What is a square file &#8211; or as we called it in French: &#8220;_fichier carré_&#8220;? It is a plain-text file with fixed record length. It looks square (actually: rather rectangular) when you open it in a text editor. E.g. a file `XYZ2006.288`, containing 20.000 customer records of each 288 bytes, would be exactly 5.760.000 bytes (5,76 MB). If the file was called `XYZ2006.customers`, each program that processed such a file would look for a &#8216;descriptor' file in the same folder `customers.d` that would not only indicate the record length (288 bytes) but also define the fields within a record (e.g. fullname: 40 bytes, address: 60 bytes, postal code: 4 bytes, &#8230;). To make the square file easy editable, the last field could be &#8220;LF: 1 byte&#8221; that contains a line feed, so that each record is on a new line.  
The advantage of this system:

  * random access: record #13455 starts at byte 3874753. If you would use a variable-length record (like comma-separated-values/CSV for instance) you would have to count through 13454 linefeeds first.
  * human-readable: you could just throw any file into `vi` or another text-editor and browse through the contents. You could also process contents with standard tools like `grep` (text-search) or `tail` (last # lines).
  * separate data and metadata: it's a bit harder to manage, but it's easier to work with. A data file with 1000 records has a byte count that ends with &#8216;000', or something is wrong.
  * no (primary) index: the records in a square file have a certain order and if it's the wrong one, sort them on whatever you want. Working with these files, you quickly understand that a sort is an expensive operation and where you can economize for speed.

**The sp-tools**  
[<img  width="240" src="http://static.flickr.com/49/140747996_3385f3c794_m.jpg" alt="Looks like a bug" height="190" style="float: right" />](http://www.flickr.com/photos/pforret/140747996/ "Photo Sharing")  
Through the years they has also developed a set of tools to work with square files. They all started with &#8216;sp', hence the &#8220;sp-tools&#8221;. I quickly realised they had an alternative for each SQL statement you could make:

  * `sp-sort`: sort a file on certain fields (ascending/descending, number sort, unique records)
  * `sp-merge`: merge two files sorted on the same fields and get a sorted result
  * `sp-query`: select only records that qualify a certain query
  * `sp-expr`: add fields to an existing file and fill them with a expression of existing fields, record number, conitional values &#8230;
  * &#8230;

The most interesting tool was `sp-match`, that was used to do joins: merge the contents of two files by matching on certain fields. E.g. you have a table of purchases (customer\_id, date, amount) and you want to add the postal-code from the customers file: you match on customer\_id and get (customer\_id,date\_amount,postal-code) as output. Using this tool and its variants (sorted/non-sorted match table, inner/outer/left outer) really taught me how joins work, what has to be sorted (indexed), what has to be in memory or on disk, and that is still the basis of my intuitive SQL optimisation skills. We basically did by hand all the stuff that SQL does behind the scenes.

**Disk space**  
[<img  width="169" src="http://static.flickr.com/49/140745162_a32d0a8cc9_m.jpg" alt="Watch that tape spin" height="240" style="float: right" />](http://www.flickr.com/photos/pforret/140745162/ "Photo Sharing")  
We were working on Sun &#8216;dumb' workstations and on our servers we had an enormous disk capacity at that time: several GIGABYTES! Hard disk sizes were still measured in megabytes back then. I remember a discussion on whether to buy one &#8216;huge' 500MB disk or rather ten 50MB disks, because the last option would be more expensive, but faster (divided over multiple disk controllers).  
A typical project required up to 100MB storage space (\*gasp\*) so all temporary files had to be cleaned up ASAP. That's why there was a system of max-age suffixes: a file that was called `abc.xyz.5t` would be automatically deleted after 5 days. &#8220;.2t&#8221; after 2 days. If you left large files sitting around without .Nt suffix, you got spanked when they detected it in the weekly storage report.  
The output of our work would be delivered on floppy disks, if it was smaller than 1.4MB or else on tape. I'm not talking DLT or DAT here, I mean tapes on spindles, the real thing. No email, no USB-sticks, no ZIP-drives, no CD-ROMs. Those were the days.
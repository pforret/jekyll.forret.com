---
id: 429
title: Convert Bind DNS zone into PTR records
date: 2005-06-15T14:32:00+02:00
author: Peter
layout: post
guid: /2005/06/convert-bind-dns-zone-into-ptr-records/
permalink: /2005/06/15/convert-bind-dns-zone-into-ptr-records/
categories:
  - Linux
---
The following script I made in order to convert the forward DNS records in a /var/named/db.[domain] file into the correct format for a reverse DNS db.[subnet prefix] file.  
``<br />
#!/bin/sh<br />
(...)<br />
DNSROOT=/var/named<br />
PREFIX=$1<br />
DOMAIN=$2<br />
shift 2<br />
DNSPRE=$DNSROOT/db.$PREFIX<br />
DNSDOM=$DNSROOT/db.$DOMAIN<br />
echo "; save this in $DNSPRE"<br />
(<br />
if [ -f $DNSDOM ] ; then<br />
cat $DNSDOM<br />
| grep $PREFIX<br />
| grep -w "A"<br />
| sed "s/$PREFIX.*//g"<br />
| gawk "BEGIN {OFS = "t" ;} {print $4,"IN","PTR",$1 ".$DOMAIN.",";; FROM `basename $DNSDOM`" }"<br />
fi</p>
<p>if [ -f $DNSPRE ] ; then<br />
cat $DNSPRE<br />
| grep -w "PTR"<br />
| gawk "BEGIN {OFS = "t" ;} {print $1,$2,$3,$4,";; FROM `basename $DNSPRE` "; }"<br />
fi )<br />
| sort -n<br />
| uniq --check-chars=3<br />
`` 

You would call it as follows:  
`revdns.sh 192.168.110 internal.example.com > new.db.192.168.110` and then replace the records of the original db.192.168.110 with the records of the new file. The script still requires manual intervention (you cannot pipe the result straight into a live Bind config file) but saves a lot of typing!

Example of the output:  
`<br />
201     IN      PTR     james.internal.example.be.  ;; FROM db.internal.example.com<br />
202     IN      PTR     wilbur.internal.example.be. ;; FROM db.internal.example.com<br />
216     IN      PTR     appprd1.internal.example.com.   ;; FROM db.192.168.110<br />
217     IN      PTR     appprd2.internal.example.com.   ;; FROM db.192.168.110<br />
218     IN      PTR     appprd3.internal.example.com.   ;; FROM db.192.168.110<br />
219     IN      PTR     appprd4.internal.example.com.   ;; FROM db.192.168.110<br />
220     IN      PTR     appprd5.internal.example.com.   ;; FROM db.192.168.110<br />
221     IN      PTR     appprd6.internal.example.com.   ;; FROM db.192.168.110<br />
`
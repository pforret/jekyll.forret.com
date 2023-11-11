---
title: 'Track your (Synology) NAS when it’s stolen'
date: 2011-04-16T13:34:54+02:00
author: Peter
layout: post
permalink: /2011/04/16/track-your-synology-nas-when-its-stolen/
image: /wp-content/uploads/2018/11/fig-13-11-2018_13-28-36.jpg
categories:
  - devops
tags:
    - nas
    - synology
    - theft
    - tracking
    - prey
    - linux
---
When a friend of mine recently got his MacBook stolen, I quickly verified if I had installed [Prey Project](http://preyproject.com/) on each laptop/desktop PC I have. For those who do not know Prey:  
[<img  class="alignnone size-full wp-image-1821" src="/wp-content/uploads/2011/04/preyproject.png" alt="" width="999" height="271" srcset="https://blog.forret.com/wp-content/uploads/2011/04/preyproject.png 999w, https://blog.forret.com/wp-content/uploads/2011/04/preyproject-300x81.png 300w, https://blog.forret.com/wp-content/uploads/2011/04/preyproject-768x208.png 768w, https://blog.forret.com/wp-content/uploads/2011/04/preyproject-945x256.png 945w, https://blog.forret.com/wp-content/uploads/2011/04/preyproject-600x163.png 600w" sizes="(max-width: 999px) 100vw, 999px" />](/wp-content/uploads/2011/04/preyproject.png)

> _Prey lets you keep track of your phone or laptop at all times, and will help you find it if it ever gets lost or stolen. It's lightweight, open source software, and free for anyone to use. And it just works._

Yes, I had Prey running on each PC. And then I looked at my [Synology NAS](http://www.synology.com) (DS410, 4 disks, 8TB raw storage). It could be stolen too. And it's basically a Linux box. And Prey is available for Linux &#8230;  
<!--more-->

  
So I figured out how to install Prey on a Synology box:

  1. login via ssh as root
  2. install the ipkg/'Bootstrap' module on your NAS server &#8211; (from [forum.synology.com](http://forum.synology.com/wiki/index.php/How_to_Install_Bootstrap)) and this is a list of the right [bootstraps for the right Synology model](http://tools.forret.com/synology/bootstrap.php).
  3. install bash shell &#8211; &#8220;`ipkg install bash`&#8221; (from [forum.synology.com](http://forum.synology.com/enu/viewtopic.php?f=27&t=7800#p33062))
  4. install textutils &#8211; &#8220;`ipkg install textutils`&#8221; (from [forum.synology.com](http://forum.synology.com/enu/viewtopic.php?f=90&t=24679#p99275))
  5. goto /usr/share and download the [latest Linux version of Prey](https://preyproject.com/download/) (`wget http://preyproject.com/releases/...linux.zip` ) and unzip it
  6. create an account on Prey and get your _API key_ from your [Account profile](http://control.preyproject.com/profile).
  7. create a new device (e.g. &#8216;NAS8TB (Syn410)'), indicate OS as Debian (it's close enough) and get the _device key_.
  8. edit the `/usr/share/prey/config` file and fill in the API and device key  
    `# you can get both of these from Prey's web service<br />
api_key='yyyyyyyyyy'<br />
device_key='xxxxxx'`
  9. now run the &#8220;`bash /usr/share/prey/prey.sh`&#8221; a first time &#8211; you should get a &#8220;`-- Got status code 200! -- Nothing to worry about. :) -- Cleaning up!`&#8221; response.
 10. now edit /etc/crontab and add a line  
    `5-55/20 * * * * root /opt/bin/bash /usr/share/prey/prey.sh >  /usr/share/prey/lastrun.log`
 11. Now restart crontab in the following (non-standard-Linux) way (from [forum.synology.com](http://forum.synology.com/wiki/index.php/How_to_backup_the_Synology_Server_to_Amazon_S3)):  
    `/usr/syno/etc.defaults/rc.d/S04crond.sh stop<br />
/usr/syno/etc.defaults/rc.d/S04crond.sh start<br />
` 
 12. And it's running! When your Synology is stolen, you set its status in your Prey account to &#8216;Missing' and you will start getting email reports every 20 minutes. Because it's a NAS, there is no webcam and no screenshots can be taken, but the external IP address will let you see where the device turns up.  
    `Remote IP: 78.29.245.xxx<br />
Private IP: 192.168.0.108<br />
Gateway IP: 192.168.0.1<br />
MAC Address: xx:xx:xx:xx:xx:xx`

Would this work on a [QNAP server](http://www.qnap.com/)? I'm guessing, yes.
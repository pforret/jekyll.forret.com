---
title: Removal of Serflog/Sumom worm
date: 2005-03-20T19:08:00+01:00
author: Peter
layout: post
permalink: /2005/03/20/removal-of-serflogsumom-worm/
categories:
  - security
tags:
  - virus
  - worm
  - hack 
---

My little niece had been trying for a while now to send me through MSN Messenger a picture called &#8220;How a Blonde Eats a Banana&#8221;. My reaction was, as any one's should be: don't know what she's sending, nor why, there's no prior conversation, no context, no nothing: I did not accept it. But I did not think further about it. A couple of days later I found that a) the girl's computer had a virus, b) the virus eagerly tried to infect other PCs via Messenger, and c) had succesfully accomplished that task in several cases. One of the victims handed over his PC to me (being the family geek and all). Since it was a nasty worm, and it took me some time to disable it, here is the procedure to follow:

  * The virus is a worm called W32.Serflog.A, Win32.Bropia.U, Worm.Win32.Sumom.a, W32/Crog.worm or WORM_FATSO.A, depending on what anti-virus company site you visit. I used the information on the [Symantec (Norton Antivirus) site](http://securityresponse.symantec.com/avcenter/venc/data/w32.serflog.a.html) to see how it locked itself to the PC. 
  * The worm does several things: 
      * it tries to infect other PCs through Messenger (and eMule, but not too aggressively). 
      * It does not prevent users from &#8216;working' (surfing, email, &#8230;) so I can see some people doing nothing about it while the program keeps trying to multiply. 
      * And, most importantly, the worm makes it very hard for even an experienced user to desactivate or remove it.
  * The worm starts itself up when Windows starts. Alas, you cannot use Task Manager to see and terminate this process. The invader immediately kills any window starting up that has &#8220;Task&#8221; in its title. You cannot visit the site of a vendor of antivirus software, because they have all been made inaccessible. You cannot delete its entries from the Registry because it kills the Regedit or Regedt32 applications from the moment they start. You cannot start a DOS Prompt, because &#8230; you get the picture. 
  * So what you do is the following: create command prompt with a different name. Go to the `C:WINNTsystem32` (Win2K) or `C:WindowsSystem32` (WinXP) folder and copy the `cmd.exe` file to e.g. `whatever.exe`. Now doubleclick the last file, and you should get a command prompt (DOS box). The worm will not detect this. 
  * The worm works through 3 hidden .exe files: `%System%formatsys.exe - %System%serbw.exe - %Windir%msmbw.exe`. We will deactivate them by making them accessible (non-hidden) and renaming them:  
    `attrib -h serbw.exe<br />
ren serbw.exe die_sucker.dead` (and the same for the other 2)  
    I first tried to delete the files, but that did not work. Renaming did work, though. 
  * Restart your computer. The worm will try to start up by one of the three .exe files, since they are now gone, it will not run. Now start up `regedit` and delete the hooks the worm had placed in the Registry (see Symantec page for details). 
  * Go to the `hosts` file (most likely in %SYSTEM%driversetchosts) and delete the lines that made the antivirus vendors unavailable. (See Symantec page for details) 
  * Switch off the computer, hit yourself on the head and go and buy an antivirus program. What were you thinking? The virus would have been detected and cleaned by: [F-Secure](http://www.f-secure.com/v-descs/sumom_a.shtml) &#8211; [Norton](http://securityresponse.symantec.com/avcenter/venc/data/w32.serflog.a.html) &#8211; [Sophos](http://www.sophos.com/virusinfo/analyses/w32sumoma.html) &#8211; [McAfee](http://vil.nai.com/vil/content/v_132209.htm) &#8211; [TrendMicro](http://www.trendmicro.com/vinfo/virusencyclo/default5.asp?VName=WORM_FATSO.A) &#8211; &#8230;  
    If you have been infected by it, you know you are too gullible to surf the Internet without protection. 

These instructions should work on any Windows installation. You might use [Symantec's removal tool](http://securityresponse.symantec.com/avcenter/venc/data/w32.serflog.a.html#removalinstructions), but I had no Internet connection when I was struggling with the intruder. Took me about thirty minutes to figure out a way to circumvent the vicious sucker.

Is this a really nasty piece of software? Yes. Do I admire the person who wrote it? Not at all. It's not clever engineering, just malevolent.
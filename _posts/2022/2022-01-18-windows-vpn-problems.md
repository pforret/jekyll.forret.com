---
title: Fixing Jan-2022 Windows VPN problems
layout: post
permalink: /2022/01/18/windows-vpn-problems/
image: /wp-content/uploads/2022/01/cannotconnect.png
categories:
    - windows
tags:
    - vpn
    - meraki
    - update
    - sysadmin
---

Chances are, if you are using a non-pure-Windows VPN on Windows, you've had an interesting few days.
In our case, we're using a Meraki VPN server with the standard Windows VPN client, 
and after the recent KB5009543 update (fixing the "[Windows IKE Extension Denial of Service Vulnerability](https://msrc.microsoft.com/update-guide/en-US/vulnerability/CVE-2022-21889)" ), 
any attempt to connect to our VPN was met with the following error: 
_Cannot connect to [VPN name]. The L2TP connection attempt failed because the security layer encountered a 
processing error during initial negotiations with the remote computer_ .

![](/wp-content/uploads/2022/01/cannotconnect.png)

The Company VPN has kind of become indispensable in these everyone-works-from-home days,
so when everybody's connection to the office stops working, it is a big thing.
We're a couple of days further down the road and a solution has been put forward.
(via [community.meraki.com](https://community.meraki.com/t5/Meraki-Service-Notices/Microsoft-Windows-update-breaking-Client-VPN/ba-p/137138) )

## 1) Quick and dirty: uninstall the patch

You can **uninstall** the KB5009543 patch that caused it, by typing the following in a command box:

`wusa /uninstall /kb:5009543`

It takes about 10 minutes and a reboot, and that indeed fixed the VPN error (with our Meraki VPN server).
Unfortunately, it is temporary. The next time Windows Update runs, the patch will probably be installed again and the problems resurface.
One could disable Windows Updates but that's a whole other box of Pandora one would be opening.

## 2) Microsoft fix [KB5010793](https://support.microsoft.com/en-us/topic/january-17-2022-kb5010793-os-builds-19042-1469-19043-1469-and-19044-1469-out-of-band-f2d4f178-5b36-49cb-a6fd-4bf9857574f9)

Microsoft was quickly made aware of the problem with their KB5009543 patch 
(thousands of users without VPN connection to the office will do that)
and has released a patch for the patch, called KB5010793. 
However, this is still an _optional patch_ with Windows Update, it will not install automatically (yet).

How does it work? (via [docs.microsoft.com](https://docs.microsoft.com/en-us/windows/release-health/status-windows-10-21h2#2773msgdesc))

* click the Windows Start and type 'check' to see all programs that contain this word.
* click the "Check for Updates / System Settings" program
![](/wp-content/uploads/2022/01/checkupdates.png)
* click the "Check for Updates" button and then open the "View Optional Updates".
![](/wp-content/uploads/2022/01/checkforupdates.png)
* select the "2022-01 Cumulative ... (KB5010793)" update and start the update process
* (if it is not visible, you might have to install the `Windows 10 21H2` update first and then try again)
* wait until the patch has been downloaded and installed
  (this is for Windows 10. For Windows 11, you early adopters, it's KB5010795 )
![](/wp-content/uploads/2022/01/cumulativeupdate.png)
* reboot the machine

The VPN should work again!


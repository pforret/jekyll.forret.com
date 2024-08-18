---
id: 36
title: 'Fix by disabling: error 1016 in event log'
date: 2004-06-21T16:28:36+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/06/21/fix-by-disabling-error-1016-in-event-log/
permalink: /2004/06/21/fix-by-disabling-error-1016-in-event-log/
categories:
  - windows
---
Due to one of life's mysteries, the following error shows up dozens of times per day in the event log of one of our web servers (Win2000/IIS):

> Event ID 1016: The data buffer created for the &#8220;NTFSDRV&#8221; service in the &#8220;C:WINNTsystem32snprfdll.DLL&#8221; library is not aligned on an 8-byte boundary. This may cause problems for applications that are trying to read the performance data buffer. Contact the manufacturer of this library or service to have this problem corrected or to get a newer version of this library.

A search on Google delivers nothing. Similar Performance Monitor problems are mentioned in 

  * [MSKB 267831](http://support.microsoft.com/default.aspx?scid=kb;EN-US;267831), but for IIS related services (ASP/W3SVC/FTP/&#8230;). The remedy cited involves unlodctr/lodctr commands in a CMD box. 
  * [MSKB 324712](http://support.microsoft.com/default.aspx?kbid=324712) and [MSKB 249138](http://support.microsoft.com/default.aspx?scid=kb;EN-US;249138), same error 1016 for other dll and &#8216;fix by disabling' solution. 
    I choose for the 2nd solution: adding a value to the registry. I create a .reg file that contains
    
    <pre>Windows Registry Editor Version 5.00
[HKEY_LOCAL_MACHINESOFTWAREMicrosoftWindows NTCurrentVersionPerflib]
"Configuration Flags"=dword:00000001</pre>
    
    It works. That is, the warnings in the event log disappear. Have I just disconnected a fire alarm or was it innocent? Time will tell &#8230; </li>
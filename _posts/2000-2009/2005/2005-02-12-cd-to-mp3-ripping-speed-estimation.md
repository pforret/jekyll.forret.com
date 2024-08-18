---
title: CD-to-MP3 ripping speed estimation
layout: post
permalink: /2005/02/12/cd-to-mp3-ripping-speed-estimation/
categories:
  - technology 
    
tags:
- bandwidth
- copyright
- music
- tool

---
As every sensible car-owner in Brussels, I rip my CDs to MP3 so I can put copies of them in my car. As every self-respecting geek, I have multiple PCs at home. Which brings me to following observation: not all PCs rip alike. On one PC the CPU maxes out at 100% for the whole ripping procedure, and on the other, I never get above 75%. So I started wondering: what are the elements to define the maximum ripping speed you can get on a PC?  
My hunch:

the CD-ROM drive speed:![](http://www.pixagogo.com/S5vpfnjbBPdPlbalsGD0t0fIakDMB26IbYvOKOaKVwVwhde4GRVYl2FvVWDTImzJxTUwZ43DSrFDV9jbPU4N0-B0Rax!u6gjHIL7XKr4OyI6VRz2Zd-RfDGG9!9oJdOPYSfpwZLdINqcYPnAgsTY0NEbfp0bRZrmFP/Plextor_Premium.jpg)</p> 
:   the original CD audio specification required a constant data rate. This was implemented by running the CD at [500 rpm for the first/inner tracks](http://whatis.techtarget.com/definition/0,,sid9_gci211759,00.html) on the CD (&oslash; 48mm) and at 200 rpm for the outer tracks (&oslash; 118mm). If the CD would have been played at a constant 500 rpm, the data rate at the end would have been 500/200 = 2,5X. (cf [Devnulled: Ripping speed](http://devnulled.com/archives/2004/01/speed_up_cd_ripping_good_mp3_encoders_and_rippers.php)) 
:   With CD-ROM the data should be delivered as fast as possible. So the rotation speed is turned up as much as possible. The physical boundaries are the vibrations and the [centrifugal forces](http://www.powerlabs.org/cdexplode.htm) that occur at high speeds. Maxwell claims the [maximum safe speed is 48X](http://www.afterdawn.com/news/archive/3574.cfm). Since the &#8220;48X&#8221; is marketing speak, this speed is only obtained at the outer border of the CD: this means that the rotation speed would be 48 x 200 = 9200 rpm. Some CDs seem to explode above 10.000 rpm. 
:   To convert this speed into a data rate: at 9200 rpm, the outer tracks would deliver [48x the data rate of an audio CD: 67,74 Mbps or 8.47 MB/s](http://www.forret.com/projects/hizmo/bandwidth.asp?speed=48&unit=X_CD). The first tracks, at &oslash; 48mm, deliver data 2,5 times slower: [27,52 Mbps or 3,44 MB/s](http://www.forret.com/projects/hizmo/bandwidth.asp?speed=19.5&unit=X_CD). 
:   Real-life tests of a whole bunch of drives on [DAE speed results](http://www.cdspeed2000.com/daeresults.php3). 
:   For the exact sizes: [CD-R/CD-RW technical specifications](http://home.fujifilm.com/products/datamedia/cdr.html)</p> 
    
    the bus speeds:</p> 
    
    :   the CD-ROM drive is connected to the PC by a ATAPI, SCSI, FireWire or USB connection. In theory there could also be a network in between (e.g. when using a Ethernet connected CD Jukebox). 
    :   The slowest [ATA-33 has a theoretical max throughput of 33MB/s](http://www.forret.com/projects/hizmo/bandwidth.asp?speed=264&unit=Mbps&title=Ultra+DMA+ATA-33). Most modern [SCSIs go above 20MB/s](http://www.forret.com/projects/hizmo/bandwidth.asp?speed=160&unit=Mbps&title=Fast+Wide+SCSI-2) and [FireWire gives 50 MB/s](http://www.forret.com/projects/hizmo/bandwidth.asp?speed=400&unit=Mbps&title=Firewire). So they would not be the bottleneck in the ripping process. 
    :   [USB1.1 is limited to 1,5 MB/s](http://www.forret.com/projects/hizmo/bandwidth.asp?speed=12&unit=Mbps&title=USB+1.1) (in practice even lower). Most common networks would be a bottleneck too (even [Fast Ethernet at a theoretical 12,5 MB/s](http://www.forret.com/projects/hizmo/bandwidth.asp?speed=100&unit=Mbps&title=Fast+Ethernet) since 7MB/s would be more of a realistic top rate in practice, certainly if the network is used for other stuff too. Same thing with WiFi standards: [802.11g's advertised &#8220;54Mbps&#8221; will in real life never translate in an actual 6,75MB/s throughput](http://www.forret.com/projects/hizmo/bandwidth.asp?speed=54&unit=Mbps&title=WiFi+802.11g).</p> 
        
        the CPU speed:</p> 
        
        :   encoding raw audio data to MP3 is CPU intensive. Main parameter will be the clock speed &#8211; which I would expect to scale linearly: a 2GHz processor does it twice as fast as a 1GHz. Extra influences: brand of processor (Intel/AMD), model (Celeron/Pentium4/Athlon/Athlon64), number of processors (or HyperThreading). Also, the software you use to encode (LAME/GOGO/RealPlayer/Windows Media Player/&#8230;) will have an impact. 
        :   Some data can be found on [GamePC.com](http://www.gamepc.com/labs/view_content.asp?id=x28amp24&page=11): an Intel P4 3.06 GHz encodes 200MB of raw data info 160 kbps MP3 in 57 seconds: 3,5 MB/s or 20X. The AMD AthlonXP 2700+: 3,28 MB/s or 18.6. [More info on GamePC.com](http://www.gamepc.com/labs/view_content.asp?id=axp3200&page=10) confirms our hunch that performance scales linearly with clock speed. For the Pentium4: (1,15 MB/s) per GHz or 6,5X per GHz. </p> 
            
            the MP3 bitrate: </p> 
            
            :   the above numbers are for 160 kbps, but what with 192 kbps and 64 kbps? Is encoding faster or slower? I found no data on the net, and I haven't tested it myself. So no hunch here. Also, the output of the encoding process, even at [a very high quality 320kbps](http://www.forret.com/projects/hizmo/bandwidth.asp?speed=320&unit=Kbps) is largely within the capacity of any output, even [Bluetooth](http://www.forret.com/projects/hizmo/bandwidth.asp?speed=1000&unit=Kbps&title=Bluetooth+1.1), god forbid. So I don't take that parameter into account.

![](http://us1.pixagogo.com/S5vpfnjbBPdPlzDz6FDwfhUuQDkwy63gCweIQdiltDxNmmIQD5w5mnjQKJCUPnHcMIXY1NzMJdR!sFrJgRsEdM6NkiJ4k5BUaC-ExYJTrRr1dHtJfR9kZIMIzXzoRzboRAmmrRMZdfNK1f3OGPoI!Mow__/ripping.jpg)  
So in the following situation:

  * a 24X CD-ROM drive 
  * a Pentium 4 2,8GHz processor 
  * ripping with the [LAME](http://lame.sourceforge.net/) encoder to 160 kbps

Your ripping will start at about 9,8X and speed up until your CPU is saturated at 18,2X. Which gives the graphic at the right. Now there's a rule of fist.

Remark: looking at the benchmarks, adding a second processor (or HyperThreading) does not enhance the ripping speed (probably since the MP3 encoding code does not do parallelisation). But if you have 2 CPU's, only one CPU will go to 100% and you keep some breathing room while your PC is creating the MP3s.

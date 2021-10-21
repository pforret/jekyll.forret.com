---
id: 21
title: Converge already! (Struggling with WLBS)
date: 2004-05-19T14:11:42+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2004/05/19/converge-already-struggling-with-wlbs/
permalink: /2004/05/19/converge-already-struggling-with-wlbs/
categories:
  - windows
---
I hate when things don&#8217;t go my way. One server in our NLB (Network Load Balancing) cluster did not want to join the cluster anymore. When I issued a `wlbs start`, it tried for a couple of seconds to join the cluster, but then remained in &#8216;Converging&#8217; state. A couple of times I saw an entry in the System Log `" ... does not have the same number or type of port rules ..."`.

I tried:

  * Reboot: worked 1st time, but after that: did not help
  * Compare rules 1: compared output of `wlbs display`: changed all load parameters to &#8216;Equal&#8217; (I normally give the servers weights that take into account the # of processors and #MB RAM)
  * Compare rules 2: compared output of `wlbs display`: identical
  * Compare rules 3: compared output of `regedit -e wlbs.reg.%COMPUTERNAME%.reg HKEY_LOCAL_MACHINESYSTEMCurrentControlSetServicesWLBS`: no significant differences
  * Recreate rules 1: recreate all 18 port rules on rogue server (so much fun :-/ ): did not help
  * Recreate rules 2: change ALL servers to use only 1 rule: did not help
  * Curse: did not help
  * Restart service: disable NLB on network adapter, press OK, re-enable NLB => **Bingo!** Server back in the cluster without a blink.

Now I _only_ have to re-create the 18 rules on all servers and I&#8217;m done! 

_Mental note to self_: check out if I can build a dedicated load balancing device in Linux, one that (1) takes into account server load (give work to least busy server) (2) response time on individual ports (and automatically disable non-responsive ports) (3) has a web interface, so I can configure from any server in the subnet.
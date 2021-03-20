---
title: Detecting excessive SSD wear on Apple Silicon M1 machines
layout: post
image: /wp-content/uploads/2021/02/m1ssd2.jpg
categories:
    - github
tags:
    - silicon
    - m1
    - ssd
    - bash
    - bashew
    - script
    - apple
    - macos
---
> Some more professional users of the new M1 Macbooks are experiencing extremely high drive writes over relatively short time. 
> The most severe cases have "consumed" about 10-13% of the maximum warrantable TBW (Total Bytes Written) value of the SSDs (given their capacity & using values for equivalent market-available NVMe drives).
> 
> &bull; Feb 17, 2021 [linustechtips.com](https://linustechtips.com/topic/1306757-m1-mac-owners-are-experiencing-extremely-high-ssd-writes-over-short-periods-of-time-likely-thanks-to-aggressive-swap/)

This article, based on original tweets by [Hector Martin](https://twitter.com/marcan42/status/1361160838854316032) and [Longhorn](https://twitter.com/never_released/status/1360657594197671941) , worried me.
As the owner of a Mac Mini M1, I didn't want my built-in, irreplaceable, SSD to wear out after one or two years.
Most of all, I wanted to know how bad the situation was for my machine.

The stats of the SSD can be consulted through smartctl, the relevant line is "Data Units Written".
I wanted to relate this to the size of the SSD disk, to have a multiplier index.
E.g. I have a 1TB SSD disk, and 120TB has already been written to disk: the multiplier = 120/1 = 120.
```
> sudo smartctl -a /dev/disk0
=== START OF INFORMATION SECTION ===
Model Number:                       APPLE SSD AP0512Q
(...)

=== START OF SMART DATA SECTION ===
SMART overall-health self-assessment test result: PASSED

SMART/Health Information (NVMe Log 0x02)
(...)
Data Units Read:                    108,887,826 [55.7 TB]
Data Units Written:                 98,244,501 [50.3 TB]   <<<<<
(...)
```

I also found some indications of how many rewrites an SSD can support (i.e what is the max multiplier?). Hector Martin also came up with stats for that.

> Update on M1 SSD wear issue: Available data suggests that write endurance ratings are not proportional to drive size.
> 
> * 256GB model: ~2000TB [1700-2300]
> * 2TB model: ~5000TB [4300-6000]
> 
> via [Hector Martin](https://twitter.com/marcan42/status/1361722552238841860)

{% include img.html
src="/wp-content/uploads/2021/02/m1ssd2.jpg"
description="Check the SSD wear on your M1 machine"
href="https://github.com/pforret/m1_ssd_tbw"
%}

I put all this logic into a simple bash script, poetically called "[m1_ssd_tbw](https://github.com/pforret/m1_ssd_tbw)".
It's easy to install on a Mac M1 and gives your clear information on the wear of your disk.

```
> ./m1_ssd_tbw info   
Password:
SSD disk size: 494 GB
SSD disk used: 146 GB
SSD bytes written: 50 TB
SSD current index: 101 x
SSD max index: 5800 x
SSD wear = 1.74 %
```
So my 500GB (1/2 TB) disk has had 50TB written to it. This is a multiplier index of 101. 
The estimated max multiplier (heuristic) is 5800 (which means: writing 2.9 PB (_petabyte_) on it over time).
Comparing these two: I am at +- 2% of the lifetime of my disk, after 2 months.
If this doesn't suddenly speed up, this would give my disk a lifetime of at least 8 years.
No panic necessary.



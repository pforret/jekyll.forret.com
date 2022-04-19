---
title: "Benchmark: MacOS tr vs GNU gtr"
layout: post
permalink: /2022/04/18/bash-tr-vs-gtr/
image: /wp-content/uploads/2022/03/benchmark.gtr.jpg
categories:
    - bash
tags:
    - benchmark
    - tr
    - bash-benchmark
---
Post #6 in this [bash benchmark](/tag/bash-benchmark/) series,
measuring the speed of common **bash text manipulations**.

This one is a bit different. I will specifically be looking at the difference in performance and behaviour between the factory installed `tr` (/usr/bin/tr) and the optionally installable GNU version of the same tool, `gtr`.

If you want to try this on your Mac, install with `brew install coreutils` (and [maybe also gnu-sed, gawk ...](https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities) )

![Bash benchmarks](/wp-content/uploads/2022/03/benchmark.gtr.jpg)

I installed the GNU coreutils on my Mac because I noticed that there were some --flags I couldn't use with the native version. The first comparison I did between `tr` and `gtr` was very promising. 

### using `tr`
```shell
Command: 'tr [:upper:] [:lower:]'
Before: 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT'
After : 'lorem ipsum dolor sit amet, consectetur adipiscing elit'  (LANG = en_US.UTF-8)
```
* Binary: /usr/bin/tr
* Throughput speed: `25 MB/sec`
* Invocation speed: `838 ops/sec`

### using `gtr`
```shell
Command: 'gtr [:upper:] [:lower:]'
Before: 'LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT'
After : 'lorem ipsum dolor sit amet, consectetur adipiscing elit'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `1020 MB/sec` <<<<
* Invocation speed: `805 ops/sec`

This means `gtr` is **40x faster in throughput** than the standard `tr`!

However, my enthusiasm quickly subsided when I did the following test.
```shell
Command: 'gtr [:upper:] [:lower:]'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '�or�m �ps�m d�l�r sit am�t ���'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gtr
* Version: tr (GNU coreutils) 9.1
* Throughput speed: `1031 MB/sec`
* Invocation speed: `750 ops/sec`

It seems the GNU version of `tr` does not support accented characters and diacritics. In fact, the GNU tr page explicitly says that "[GNU `tr` fully supports only safe single-byte locales, where each possible input byte represents a single character](https://www.gnu.org/software/coreutils/manual/html_node/Character-arrays.html)". No Multi-byte, so no UTF-8. This makes it unusable for most of my bash benchmarks. 

## Benchmark [via pforret/bash_benchmarks](https://github.com/pforret/bash_benchmarks)


| method    | throughput  | invocation     |
|-----------|-------------|----------------|
| tr        | 25 MB/s (!) | 838 ops/sec    |
| gtr       | 1020 MB/s   | 750 ops/sec    |


---
So what is my recommendation for **tr or gtr**?

* if you know you won't have accents/diacritics/foreign alphabets in your input, use `gtr`.
* otherwise, use `tr`. It's not fast, but it supports more 'weird' characters.
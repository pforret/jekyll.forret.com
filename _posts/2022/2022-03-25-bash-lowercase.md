---
title: "Benchmark: lowercase conversion in bash"
layout: post
permalink: /2022/03/25/lowercase-bash/
image: /wp-content/uploads/2022/03/benchmark.lowercase.jpg
categories:
    - bash
tags:
    - benchmark
    - sed
    - tr
    - awk
    - bash-benchmark
---
Post #2 in this [bash benchmark](/tag/bash-benchmark/) series,
measuring the **throughput** (MB/s) of common **bash text manipulations**.

## Converting text to lowercase

![Bash benchmarks](/wp-content/uploads/2022/03/benchmark.lowercase.jpg)

### using `tr` 
* The easiest to remember method is through tr: 
```shell
tr "[:upper:]" "[:lower:]"
```

### using `awk`
* Still quite easy to remember is awk: 
```shell
awk '{print tolower($0)}'
```

### using `sed`
* This one is impossible to remember by heart:
```shell
sed 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ/abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźż/'
```
## Benchmark [via pforret/bash_benchmarks](https://github.com/pforret/bash_benchmarks)

> **TL;DR: The fastest way to convert to lowercase is `sed`!
> It is almost 3 times as fast as awk, and more than 10 times faster than `tr`.**

### Convert to lowercase: using `awk`
```
Command: 'awk {print tolower($0)}'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 84 msec -- 23.8 MB/s

### Convert to lowercase: using `sed`
```
Command: 'sed y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏ...'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 30 msec -- 66.7 MB/s

### Convert to lowercase: using `tr`
```
Command: 'tr [:upper:] [:lower:]'
Result: '/UPPER lower Title ÎÑ áçtîÔŃ/' => '/upper lower title îñ áçtîôń/'
```
* 400 msec -- 5.0 MB/s

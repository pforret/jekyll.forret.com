---
title: "Bash benchmarks"
layout: post
permalink: /2022/03/24/bash-benchmarks/
image: /wp-content/uploads/2022/03/benchmark.bash.jpg
categories:
    - bash
tags:
    - benchmark
    - bash
    - throughput
    - bash-benchmark
    - github
---
When writing `bash` scripts, one needs to find ways to do things that aren't built in to bash.
String manipulation like _lowercase conversion_, _parsing_, _removing whitespace_...
all use tools/binaries built-in to the OS, but not in the language itself.
I'm talking about tools like `cut`, `awk`, `tr`, `sed`, `sort`, ...

> Update: I now have developed benchmarking for both **throughput** (MB/s) and **invocation** (ops/sec) speed in my project, combined with all kinds of other improvements, so the content in this article was updated [2022-04-08]

Most of the time, there is more than one way to do something.
So the question I would like to answer: what is the _fastest way_ to do them, 
fastest either in the meaning of "_throughput_", expressed in lines/second or MB/sec, or in "_invocation_" speed, how many times can I start up the program sequantially, expressed in operations/sec.

I've started a GitHub repo [pforret/bash_benchmarks](https://github.com/pforret/bash_benchmarks) to collect these benchmarks.

![Bash benchmarks](/wp-content/uploads/2022/03/benchmark.bash.jpg)

In short:
* I generate a big file of random text (e.g. 10000 lines of 1000 chars each)
* I then run that file through each algorithm 5 times
* I check the time this took, and `<filesize in MB> x <invocations> / <totaltime> = MB/s`

* I then invoke the program 2000 times on just 1 short string (1 line from the file above). 
* I check the time this took, and `<invocations> / <totaltime> = ops/sec`

Please find all the posts in these series under the [bash-benchmark](/tag/bash-benchmark) tag

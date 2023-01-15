---
title: "Microtime in bash: sub-second precision"
layout: post
permalink: /2022/12/15/bash-microtime/
image: /wp-content/uploads/2022/12/unsplash.time.jpg
categories:
    - bash
tags:
    - benchmark
    - time
    - microtime
    - bash-benchmark
---
Post #8 in this [bash benchmark](/tag/bash-benchmark/) series,
measuring the speed of common **bash operations**.

![](/wp-content/uploads/2022/12/unsplash.time.jpg)

It is rather easy to get time at a second-precision level with a bash script. There's `$SECONDS` that gives back the number of seconds since the start of the script, there's the `date` command for formatted date-times. However, sometimes you need milliseconds/microseconds precision, e.g. for benchmarking.

There is no `microtime` or equivalent command in bash. The `date` command does have the format `date '+%s.%N'`, but that doesn't work with the (old) version of `date` that's included in macOS.

```bash
$ date '+%s.%N'
1671912037.033004223
```

So is there a simple/fast alternative one-liner that gives us an epoch-style time with subs-second precision? Let's see what the different scripting platforms have to offer. And afterwards, let's benchmark which option is the fastest. I am not sure if it is important to have 9 digits of precision. The context switch of starting an external program will probably take several micro to even milliseconds, so there is no point to have nanosecond precision.

## PHP

PHP is an obvious start. It is installed on most cloud servers (if they're not Alpine containers) and it's where the name 'microtime' comes from.

```bash
$ php -r 'printf("%s\n",microtime(true));'
1671912572.3786
```

This gives us a resolution of 100 microseconds.

## Perl

Perl is also installed on lots of machines, but the chances are, if you're a millennial or younger, you've never written a script in Perl.

```bash
$ perl -MTime::HiRes=time -e 'printf "%f\n", time'
1671913065.177065
```

Perl gives us microsecond level.

## Python

Python is also on of the obvious choices. It is an old, mature, established language. It is still used a lot, so there is a chance that the language is already installed.

```bash
$ python3 -c 'import time; print(time.time())'
1671913271.4583442
```

This is a native precision of 100 nanoseconds, and as I said before, we don't really need that, but we can always round off at 3 or 4 digits of precision.

## Ruby

Ruby, and its framework Ruby-on-Rails, have become very popular in the last decades, so I wanted to compare.

```bash
$ ruby -e 'STDOUT.puts(Time.now.to_f)'
1671913785.788576
```

Again microseconds precision.

## Node

Node.js is best known as a web back-end language, but I sometimes see Node implementations of the most basic CLI stuff, so let's check if it qualifies to be used in this simple example.

```bash
$ node -e 'console.log(+new Date() / 1000)'
1671913973.394
```

The resolution is milliseconds (3 digits).

## Lua

I checked Lua, since it's rumored to be compact and fast, but there seems to be no functionality to get sub-second time precision.

## Golang

Golang is a compiled language, which is great for its performance, but this doesn't lend itself easily to one-liner scripting. There is no `go -e "[code]"` equivalent. It would be quite easy to write and compile a `microtime` binary. So let's do that.

```php
package main

import (
    "fmt"
    "time"
)

func main() {
    loc, _ := time.LoadLocation("UTC")
    now := time.Now().In(loc)
    micSeconds := float64(now.Nanosecond()) / 1000000000
    fmt.Printf("%.6f\n",float64(now.Unix()) + micSeconds)
}
```

```bash
$ microtime
1671915854.287684
```

# Benchmark

Now is the time to test the speed, more specifically the invocation or context switch speed. I've tested this on Ubuntu 22.04 x86_64 on Windows (WSL2). 

| method                    | invocation   | overhead   |
|---------------------------|--------------|------------|
| PHP (PHP 8.2.0)           | 125 ops/sec  | 8 msec     |
| Perl (Perl v5.34.0)       | 279 ops/sec  | 3.6 msec   |
| Python (python 3.10.6)    | 152 ops/sec  | 6.6 msec   |
| Ruby (ruby 3.0.2p107)     | 30 ops/sec   | 32.8 msec  |
| Node (nodejs v12.22.9)    | 20 ops/sec   | 48.80 msec |
| Go (go1.18.1) compiled    | 45 ops/sec   | 22.37 msec |
| date (GNU coreutils) 8.32 | 1616 ops/sec | 0.62 msec  |

We see that PHP/Python are in the same ballpark, Perl is almost 2x as fast, and Ruby/Node are 6 to 10X slower. A simple compiled Go program (it's still almost 2MB) is not much faster to invoke than Node, but the `date` command, honed and streamlined through the years and now at only 104KB, is by far the fastest option (unless you're on macOS).

This would be important if you need the bash equivalent of `microtime` inside a loop, where it is executed hundreds of times. To give an example: if microtime is executed 1000 times in a script, it could account for less than a second (date +%s.%N), 8 seconds (PHP) or 50 seconds (Node).

UPDATE: running the same tests on macOS gives very different results:

| method                    | invocation  | overhead  |
|---------------------------|-------------|-----------|
| PHP (PHP 8.2.0)           | 50 ops/sec  | 20 msec   |
| Perl (Perl v5.30.3)       | 145 ops/sec | 6.9 msec  |
| Python (python 3.10.9)    | 56 ops/sec  | 17.8 msec |
| Ruby (ruby 3.1.2p20)      | 1 ops/sec   | 720 msec  |
| Node (nodejs v19.3.0)     | 32 ops/sec  | 30.8 msec |
| Go (go1.18.1) compiled    | 550 ops/sec | 1.8 msec  |
| date (GNU coreutils) 8.32 | 709 ops/sec | 1.4 msec  |

Here we see that the compiled simple Go program is almost as fast as the `date` command.

cf [github.com/pforret/bash_benchmarks/blob/main/docs/epoch.md](https://github.com/pforret/bash_benchmarks/blob/main/docs/epoch.md)
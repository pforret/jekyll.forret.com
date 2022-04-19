---
title: "Benchmark: hash functions"
layout: post
permalink: /2022/04/19/bash-hashing/
image: /wp-content/uploads/2022/03/benchmark.hash.jpg
categories:
    - bash
tags:
    - benchmark
    - hash
    - cryptography
    - bash-benchmark
---
Post #7 in this [bash benchmark](/tag/bash-benchmark/) series,
measuring the speed of common **bash text manipulations**.

In the [previous post](/2022/04/18/bash-tr-vs-gtr/) I talked about installing the GNU version of coreutils on MacOS. That doesn't just install the GNU version of `tr` but also a whole collection of other tools. A subset of those are [hash functions](https://en.wikipedia.org/wiki/Hash_function).There are the classics MD5 and SHA1, but also SHA256, 384 up to SHA512. I would love to know the speed of these algorithms on my Macbook Pro.

> A hash function is any function that can be used to map data of arbitrary size to fixed-size values.

![Bash benchmarks](/wp-content/uploads/2022/03/benchmark.hash.jpg)

## Hashing functions

### MD5 
Developed in 1992, this algorithm is now considered broken and no longer used for cryptography. It can still be used to e.g. check if two files are equal. I still sometimes use it for the generation of filenames for caching, e.g. I save the cache of a webpage https://www.xyz.com/whatever/the/url/is?with=query&even=added to <domain>.<md5 first 10 chars>.html, like `www.xyz.com.f2dd42e6b.html`. The chance of having 2 different URLs on the same host with the same MD5 hash is negligible.

The MacOS native `md5` program:
```shell
Command: 'md5'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'fa4e6f9fdc5facb035c16612165a2233'  (LANG = en_US.UTF-8)
```
* Binary: `/sbin/md5`

The GNU `gmd5sum` program:
```shell
Command: 'gmd5sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'fa4e6f9fdc5facb035c16612165a2233  -'  (LANG = en_US.UTF-8)
```
* Binary: /opt/homebrew/Cellar/coreutils/9.1/bin/gmd5sum
* Version: md5sum (GNU coreutils) 9.1

They have the same output, as we expect.


### SHA

The SHA family of hash algorithms starts with the [1996 SHA-1](https://en.wikipedia.org/wiki/SHA-1) (no longer used for cryptography), and superseded by hashes with longer output length: SHA224, SHA256, SHA 384 and SHA512 ([the SHA-2 family, from 2001](https://en.wikipedia.org/wiki/SHA-2))

```shell
Command: 'sha1sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'aefd95f83be2dc7462da24482cbd0977759d4ce0  -'

Command: 'sha224sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '70e36ca630f2adedd788d844d6f68fcf71976c2efb8e32fd79fd56a7  -'

Command: 'sha256sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'a6d3386aa0b1eef4229d603b30d0eb607cd6cd9a6fab73d93a567c5d2ae90203  -'

Command: 'sha384sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '53cf0661223582f8df089b70a28ab02c212f180d7396a2bc155d15aa8ddb907f872f16f71385851a6cff284a6a9730a0  -'

Command: 'sha512sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : '4ca9b5421ebe4b985adceab12706de72a7c5cb1fec044af3559493b9ca15e26cd9030dd6b7068867b676271dab4189e71b9cae157a630c3176ef64ecd5ded33d  -'
```

### Blake 2

The [Blake 2 algorithm](https://en.wikipedia.org/wiki/BLAKE_(hash_function)#BLAKE2) was released in 2012 and is considered better than the SHA-2 algorithms.

```shell
Command: 'b2sum'
Before: 'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ'
After : 'f8f0b804649a12456a239e4f1997fef581ee26b5869062093725b6586ff2f930d100b250eb928323afaa0cc274a85140ced258a7977d54c9ae791d49160cc16e  -'  (LANG = en_US.UTF-8)
```

## Benchmark [via pforret/bash_benchmarks](https://github.com/pforret/bash_benchmarks)


| method       | bits | throughput | invocation   |
|--------------|------|------------|--------------|
| `md5` (native) | 128  | 435 MB/s   | 1022 ops/sec |
| `gmd5sum`      | 128  | 455 MB/s   | 611 ops/sec  |
| `sha1sum`      | 160  | 552 MB/s   | 784 ops/sec  |
| `sha224sum`    | 224  | 279 MB/s   | 807 ops/sec  |
| `sha256sum`    | 256  | 275 MB/s   | 797 ops/sec  |
| `sha384sum`    | 384  | 437 MB/s   | 804 ops/sec  |
| `sha512sum`    | 512  | 435 MB/s   | 782 ops/sec  |
| `b2sum`        | 512  | 595 MB/s   | 777 ops/sec  |

Some lessons from these benchmarks:
* almost all GNU hashing tools have about the same invocation time: 700-800 ops/sec, which means +- 1,3 msec per invocation. Only the native `md5` is slightly faster in invocation.
* the Blake2 algorithm `b2sum` is the clear winner: it's the fastest in throughput (1GB in less than 2 seconds), while also being more secure than the other options.
---
So what is my recommendation for **hashing**?

* install/update the GNU coreutils to the most recent version and use `b2sum` for every hashing need.
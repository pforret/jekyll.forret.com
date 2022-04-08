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
    - perl
    - php
    - awk
    - shell
    - bash-benchmark
---
Post #2 in this [bash benchmark](/tag/bash-benchmark/) series,
measuring the speed of common **bash text manipulations**.

> Update: I now have developed benchmarking for both **throughput** (MB/s) and **invocation** (ops/sec) speed in my project, combined with all kinds of other improvements, so the content in this article was updated [2022-04-08]

## Converting text to lowercase

![Bash benchmarks](/wp-content/uploads/2022/03/benchmark.lowercase.jpg)

Proper lowercase conversion handles latin characters, but also accénted letters and diaçritics.

Let's go through some different methods:

### using `tr` 
The easiest to remember method, and the one you see promoted most in how-to sites like Stackexchange, is by using `tr`. The command syntax is quite simple and elegant:
```shell
tr "[:upper:]" "[:lower:]"
```

If we test this technique, we see the conversion is perfect:
```shell
Input:  'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' 
Output: 'łorèm îpsùm dôlõr sit amét œßþ'
```

### using `awk`
* Still quite easy to remember is `awk`:
```shell
awk '{print tolower($0)}'
```

This technique also has perfect lowercase conversion:
```shell
Input:  'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' 
Output: 'łorèm îpsùm dôlõr sit amét œßþ'
```

### using `sed`
`sed` is very fast, but doesn't know the '[:lower:]'-type macros that `tr` has. 
So you have to specify every uppercase letter and its lowercase counterpart:
```shell
upper="ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ"
lower="abcdefghijklmnopqrstuvwxyzàáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźż"
sed "y/$upper/$lower/"
```
But this is only effective if your input text doesn't include weird alphabets like the Greek (αβγδ), Cyrillic (абвг) or the Armenian (աբգդ) one.
If it does, you would need to use a humongous list of funny characters and still not be sure if it's complete.
(e.g. _äàâαáåąăãāǎա бբ çćčћцծչց δđðђдďդ éèêëεηęēėěеёэեէը ѓфֆ γгģգղ հ ιíîïīįìǐиıի йջ κќкķկք λłлļĺľլ μмմ ñνńнņňն öôοωóòøōǒõоոօ πпպփ ρрŕřռր σšśсս τтťթտ üùûúǔǖǘǚǜūуųů βвվ ўւ ξխ ÿýыüյ ζžźżзզժ_)

So the accuracy depends on the completeness of the list above.

### using ${} variable expansion
In my first version of this post I overlooked an super simple technique, that is built in to bash: `${variable,,}` will convert the content of that value into lowercase. If we want to convert a whole file with this technique, we have to wrap it in a while/do loop:
```shell
while read -r line ; do
    echo ${line,,} 
done
```

This technique also has perfect conversion:
```shell
Input:  'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' 
Output: 'łorèm îpsùm dôlõr sit amét œßþ'
```

### using php
If we can use `awk` or `tr` as an external program to do lowercase conversion, then why not `php`? Of course, you would first have to check if php is installed on your system (`command -v php`).This is what the code looks like in php:
```shell
php -r 'while($f = fgets(STDIN)){ print strtolower($f); }'
```
However, `strtolower` has a problem with the accented upper case characters:
```shell
Input:  'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' 
Output: 'ŁorÈm ÎpsÙm dÔlÕr sit amÉt ŒßÞ'
```

PHP has a multibyte/Unicode compatible alternative called `mb_strtolower`. This one does what we expect it to do.
```shell
Input:  'ŁORÈM ÎPSÙM DÔLÕR SIT AMÉT ŒßÞ' 
Output: 'łorèm îpsùm dôlõr sit amét œßþ'
```

### using perl
And then there's `perl`, which may be old skool/fashioned but is still installed by default on a lot of machines:
```shell
perl -ne 'print lc'
```

This simple code is also too simple, as it does not behave well for accented capital letters. To make the script Unicode compatible, one needs some adjustments. I admit, I had to look this up.

```shell
perl -CSA -ne 'use utf8; binmode STDOUT, ":utf8"; print lc'
```

## Benchmark [via pforret/bash_benchmarks](https://github.com/pforret/bash_benchmarks)

Now let's see how all these methods compare in throughput speed (MB/s, when you start the command and let it process a big file in 1 go), and in invocation speed (operations/sec, which gives you an idea of the startup time a program needs.) Both are of the 'more-is-better' type.

> I will focus here on the relative speeds compared to each other, the absolute speeds depend on your machine, and my 2021 MacBookPro M1 16" is quite fast. I've run these benchmarks on a Ubuntu-on-Windows WSL1 environment, and that is wayyyyyy slower.


| method           | throughput   | invocation       |
|------------------|--------------|------------------|
| awk              | 98 MB/s      | 256 ops/sec      |
| perl (print lc)  | 645 MB/s (!) | 356 ops/sec      |
| perl (Unicode)   | 98 MB/s      | 341 ops/sec      |
| php (strtolower) | 249 MB/s     | 61 ops/sec       |
| php (Unicode)    | 73 MB/s      | 61 ops/sec       |
| sed              | 241 MB/S     | 909 ops/sec      |
| tr               | 25 MB/s      | 844 ops/sec      |
| ${line,,}        | 9 MB/s       | 9091 ops/sec (!) |

Some lessons from these benchmarks:
* `perl` is crazy fast in **throughput**, certainly the naive `print lc` version, which -granted- did have incorrect results.
* `sed` is also very fast in **throughput**, but as we said above, only works well if you specify every character that might show up in your input
* the **throughput** speed of `tr` is slower than I would expect. It is 10 times slower than `sed`, while being much simpler. After doing lots of other benchmarks also with `tr`, I've noticed the throughput is never faster than 25 MB/s on my machine. So that seems like a hard limit on the program.
* `${line,,}` has low throughput because of the whole `while read -r line` construction, but the **invocation** speed is unmatched, like only 100 nanoseconds (+-10000 ops/sec).
* `php` needs 16ms to start up (60 ops/sec **invocation**), which is very slow, compared to the others. You can use PHP to process big files in a bash script (throughput is good), but not for quick one-liners like `value=$(php -r "print $i % $j")`.
* startup time for `sed` and `tr` are in the same range (1ms ; 800-900 ops/sec), `awk` is 4 times slower in **invocation** speed. This makes sense. `tr` and `sed` are basically rather simple regex interpreters, whereas `awk` is kind of its own scripting language. The parsing of the command takes more time. 


So what is my recommendation for **lowercase conversion in bash**?
* if you need to convert a small string to lower case, use `${string,,}`.
* if you need to convert a larger file to lower case, and you know all possible characters that can appear in the input, use `sed`
* if you need to convert a larger file to lower case, and you don't know all possible characters that can appear in the input, use `awk`

More info: [pforret.github.io/bash_benchmarks/lowercase.html](https://pforret.github.io/bash_benchmarks/lowercase.html)
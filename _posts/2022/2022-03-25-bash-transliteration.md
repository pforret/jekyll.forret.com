---
title: "Benchmark: transliteration in bash"
layout: post
permalink: /2022/03/25/transliteration-bash/
image: /wp-content/uploads/2022/03/benchmark.transliteration.jpg
categories:
    - bash
tags:
    - benchmark
    - sed
    - tr
    - awk
    - bash-benchmark
---
Post #3 in this [bash benchmark](/tag/bash-benchmark/) series,
measuring the **throughput** (MB/s) of common **bash text manipulations**.

## Transliteration; removing accents/diacritics

Imagine you want to ASCII version of a text that can contain accents _éèà_ or diacritics _çśš_;
You don't want to delete the characters, you want them mapped to the closest ASCII character.
Ä becomes A, ç becomes c.

![Bash benchmarks](/wp-content/uploads/2022/03/benchmark.transliteration.jpg)

### using `awk`
* first, let's do it as explicit and verbose as possible:
```
awk '
  {
    gsub(/[àáâäæãåāǎ]/,"a");
    gsub(/[çćč]/,"c");
    gsub(/[èéêëēėęě]/,"e");
    gsub(/[îïííīįìǐ]/,"i");
    gsub(/[ł]/,"l");
    gsub(/[ñń]/,"n");
    gsub(/[ôöòóœøōǒõ]/,"o");
    gsub(/[ßśš]/,"s");
    gsub(/[ûüǔùǖǘǚǜúū]/,"u");
    gsub(/[ÿ]/,"y");
    gsub(/[žźż]/,"z");
    gsub(/[ÀÁÂÄÆÃÅĀǍ]/,"A");
    gsub(/[ÇĆČ]/,"C");
    gsub(/[ÈÉÊËĒĖĘĚ]/,"E");
    gsub(/[ÎÏÍÍĪĮÌǏ]/,"I");
    gsub(/[Ł]/,"L");
    gsub(/[ÑŃ]/,"N");
    gsub(/[ÔÖÒÓŒØŌǑÕ]/,"O");
    gsub(/[SSŚŠ]/,"S");
    gsub(/[ÛÜǓÙǕǗǙǛÚŪ]/,"U");
    gsub(/[Ÿ]/,"Y");
    gsub(/[ŽŹŻ]/,"Z");
    print
    }'
```

### using `iconv`
* You might google-find this as a solution for this problem, but as you will see, it doesn't map one-to-one.
The character Ä is mapped to ¨A, which is maybe not what you want.
```
iconv -f utf8 -t ascii//TRANSLIT//IGNORE
```

### using `sed`
* of course sed can do this too, but it will be verbose:
```
sed 'y/àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźżÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ/aaaaaaaaaccceeeeeeeeiiiiiiiilnnooooooooosssuuuuuuuuuuyzzzAAAAAAAAACCCEEEEEEEEIIIIIIIILNNOOOOOOOOOSSSUUUUUUUUUUYZZZ/'
```

### using `tr`
* this is a slightly more appealing format than the previous one, 
since you can put the 'from' and 'to' lists under each other and that makes it easier to look for errors/omissions.
```
tr \
  'àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźżÀÁÂÄÆÃÅĀǍÇĆČÈÉÊËĒĖĘĚÎÏÍÍĪĮÌǏŁÑŃÔÖÒÓŒØŌǑÕẞŚŠÛÜǓÙǕǗǙǛÚŪŸŽŹŻ' \
  'aaaaaaaaaccceeeeeeeeiiiiiiiilnnooooooooosssuuuuuuuuuuyzzzAAAAAAAAACCCEEEEEEEEIIIIIIIILNNOOOOOOOOOSSSUUUUUUUUUUYZZZ'
```

## Benchmark [via pforret/bash_benchmarks](https://github.com/pforret/bash_benchmarks)

> **TL;DR: The fastest way to remove accents/diacritics is `sed`!
> It is twice as fast as `iconv`, 4 times as fast as `awk` and more than 10 times faster than `tr`!**

### Transliteration (remove accents): using `awk`
```
Command: 'awk { gsub(/[àáâäæãåāǎ]/,"a"); gsub(/[çćč]/,"c"); gsub(/[èéê...'
Result: 'Îñtérńåtîônâl' => 'International'
```
* 130 msec -- 15.4 MB/s

### Transliteration (remove accents): using `iconv`
```
Command: 'iconv -f utf8 -t ascii//TRANSLIT//IGNORE'
Result: 'Îñtérńåtîônâl' => '^I~nt'er'nat^i^on^al'
```
* 60 msec -- 33.4 MB/s

### Transliteration (remove accents): using `sed`
```
Command: 'sed y/àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿ...'
Result: 'Îñtérńåtîônâl' => 'International'
```
* 30 msec -- 66.7 MB/s

### Transliteration (remove accents): using `tr`
```
Command: 'tr àáâäæãåāǎçćčèéêëēėęěîïííīįìǐłñńôöòóœøōǒõßśšûüǔùǖǘǚǜúūÿžźż...'
Result: 'Îñtérńåtîônâl' => 'International'
```
* 400 msec -- 5.0 MB/s
 
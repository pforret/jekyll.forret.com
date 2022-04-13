---
title: "Benchmark: romanization in bash"
layout: post
permalink: /2022/04/10/romanization-bash/
image: /wp-content/uploads/2022/03/benchmark.transliteration.jpg
categories:
    - bash
tags:
    - benchmark
    - sed
    - tr
    - awk
    - iconv
    - romanization
    - transliteration
    - bash-benchmark
    - language
---
Post #4 in this [bash benchmark](/tag/bash-benchmark/) series,
measuring the speed of common **bash text manipulations**.

## Romanization: removing accents/diacritics

![Bash benchmarks](/wp-content/uploads/2022/03/benchmark.transliteration.jpg)

[Romanization](https://en.wikipedia.org/wiki/Romanization) is the converting of non-roman characters (with accents, diacritics or alternative alphabets) into the latin alphabet. It is a kind of [_transliteration_](https://en.wikipedia.org/wiki/Transliteration) (conversion between alphabets).

So _é_ becomes _e_, _ç_ becomes _c_, _ô_ becomes _o_. But also _б_ (greek beta) becomes _b_, _σ_ (sigma) becomes _s_, _д_ (russian) becomes _d_, _յ_ (armenian yi) becomes _y_.

And of course things are never that easy. Some non-latin characters are romanized / transliterated to _two characters_, like œ -> oe, æ -> ae, я -> ya. This makes it hard to accomplish exhaustive romanization with `tr` or `sed`.

### using `awk`
If we include roman languages (éèà), slavic (ăž), cyrillic (жзи), turkish (ğış) and armenian (կհձ), we can construct the following daunting `awk` program:

```shell
awk '{ gsub(/[ğЪЬъь]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/,"A"); gsub(/[Æ]/,"AE"); 
  gsub(/[БԲ]/,"B"); gsub(/[ÇĆČЦԾՉՑ]/,"C"); gsub(/[ČΧЧՃ]/,"CH"); 
  gsub(/[ÐĎΔДԴ]/,"D"); gsub(/[ЏՁ]/,"DZ"); gsub(/[ÈÉÊËĒĖĘĚΕΗЁЕЭԵԷԸ]/,"E"); 
  gsub(/[ԵՒ]/,"EW"); gsub(/[ЃФՖ]/,"F"); gsub(/[ĢΓГԳՂ]/,"G"); 
  gsub(/[Հ]/,"H"); gsub(/[ÌÍÎÏĪĮǏΙИԻ]/,"I"); gsub(/[ЙՋ]/,"J"); 
  gsub(/[ĶΚЌКԿՔ]/,"K"); gsub(/[Х]/,"KH"); gsub(/[ĻŁΛЛԼ]/,"L"); 
  gsub(/[ΜМՄ]/,"M"); gsub(/[ÑŅŇΝНՆ]/,"N"); gsub(/[ÒÓÔÕÖØŌǑΟΩОՈՕ]/,"O"); 
  gsub(/[ØŒ]/,"OE"); gsub(/[ΠПՊՓ]/,"P"); gsub(/[Φ]/,"PH"); 
  gsub(/[Ψ]/,"PS"); gsub(/[ŘΡРՌՐ]/,"R"); gsub(/[ŠΣСՍ]/,"S"); 
  gsub(/[Щ]/,"SCH"); gsub(/[ŠȘШՇ]/,"SH"); gsub(/[ẞ]/,"SS"); 
  gsub(/[ŤΤТԹՏ]/,"T"); gsub(/[ÞΘ]/,"TH"); gsub(/[Ț]/,"TS"); 
  gsub(/[ÙÚÛÜŪŮŲǓǕǗǙǛУՈՒ]/,"U"); gsub(/[ΒВՎ]/,"V"); gsub(/[ЎՒ]/,"W"); 
  gsub(/[ΞԽ]/,"X"); gsub(/[ÝŸЫՅ]/,"Y"); gsub(/[Я]/,"YA"); 
  gsub(/[Ю]/,"YU"); gsub(/[ŹŻŽΖЗԶԺ]/,"Z"); gsub(/[ŽЖ]/,"ZH"); 
  gsub(/[àáâãäåāăąǎαա]/,"a"); gsub(/[æ]/,"ae"); gsub(/[бբ]/,"b"); 
  gsub(/[çćčцћծչց]/,"c"); gsub(/[čχчճ]/,"ch"); gsub(/[ðďđδдђդ]/,"d"); 
  gsub(/[џձ]/,"dz"); gsub(/[èéêëēėęěεηеэёեէը]/,"e"); gsub(/[և]/,"ew"); 
  gsub(/[фѓֆ]/,"f"); gsub(/[ģγгգղ]/,"g"); gsub(/[հ]/,"h"); 
  gsub(/[ìíîïīįıǐιиի]/,"i"); gsub(/[йջ]/,"j"); gsub(/[ķκкќկք]/,"k"); 
  gsub(/[х]/,"kh"); gsub(/[ĺļľłλлլ]/,"l"); gsub(/[љ]/,"lj"); 
  gsub(/[μмմ]/,"m"); gsub(/[ñńņňνнն]/,"n"); gsub(/[њ]/,"nj"); 
  gsub(/[òóôõöøōǒοωоոօ]/,"o"); gsub(/[øœ]/,"oe"); gsub(/[πпպփ]/,"p"); 
  gsub(/[φ]/,"ph"); gsub(/[ψ]/,"ps"); gsub(/[ŕřρрռր]/,"r"); 
  gsub(/[śšσсս]/,"s"); gsub(/[щ]/,"sch"); gsub(/[şšșшշ]/,"sh"); 
  gsub(/[ß]/,"ss"); gsub(/[ťτтթտ]/,"t"); gsub(/[þθ]/,"th"); 
  gsub(/[čț]/,"ts"); gsub(/[ùúûüūůųǔǖǘǚǜуու]/,"u"); gsub(/[βвվ]/,"v"); 
  gsub(/[ўւ]/,"w"); gsub(/[ξխ]/,"x"); gsub(/[üýÿыյ]/,"y"); 
  gsub(/[я]/,"ya"); gsub(/[ю]/,"yu"); gsub(/[źżžζзզժ]/,"z"); 
  gsub(/[žж]/,"zh"); print $0; }'
```
It does a pretty good job of romanization:

```shell
Command: 'awk { gsub(/[ğЪЬъь]/,""); gsub(/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/,"A"); gsub(/...'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet oessth'
```

### using `iconv`
You might find this on Google as a solution for this problem, but as you will see, it maps most characters to combinations of ~'¨^` with a letter.
E.g. the character Ä is mapped to ¨A, which is maybe not what you want.

```shell
Command: 'iconv -f utf-8 -t ascii//TRANSLIT'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOR`EM ^IPS`UM d^ol~or sit am'et oessth'
```

### using `sed`

If we use the same technique as we did for the [lower case conversion](https://blog.forret.com/2022/03/25/lowercase-bash/) (`sed 'y/___/___/'`, we can only translate to single characters.

```shell
Command:
from="ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪĮÌǏИԻЙՋΚЌКĶԿՔΛŁЛĻԼΜМՄÑΝНŅŇՆÖÔΟΩÓÒØŌǑÕОՈՕΠПՊՓΡРŘՌՐΣСŠՍΤТŤԹՏÜÙÛÚǓǕǗǙǛŪУŲŮΒВՎЎՒΞԽŸÝЫՅΖŽŹŻЗԶԺäàâαáåąăãāǎաбբçćčћцծչցδđðђдďդéèêëεηęēėěеёэեէըѓфֆγгģգղհιíîïīįìǐиıիйջκќкķկքλłлļĺľլμмմñνńнņňնöôοωóòøōǒõоոօπпպփρрŕřռրσšśсսτтťթտüùûúǔǖǘǚǜūуųůβвվўւξխÿýыüյζžźżзզժ"
to="AAAAAAAAAAAABBCCCCCCCDDDDDEEEEEEEEEEEEEEEEFFFGGGGGHIIIIIIIIIIJJKKKKKKLLLLLMMMNNNNNNOOOOOOOOOOOOOPPPPRRRRRSSSSTTTTTUUUUUUUUUUUUUVVVWWXXYYYYZZZZZZZaaaaaaaaaaaabbccccccccdddddddeeeeeeeeeeeeeeeefffggggghiiiiiiiiiiijjkkkkkklllllllmmmnnnnnnnooooooooooooopppprrrrrrssssstttttuuuuuuuuuuuuuvvvwwxxyyyyyzzzzzzz"
sed "y/$from/$to/"
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet œßþ' ## the œ is not romanized
```

However, we can use `sed` in a way that resembles the strategy we took for `awk`:

```shell
Command:
sed -e 's/[ğЪЬъь]//g' -e 's/[ÀÁÂÃÄÅĀĂĄǍΑԱ]/A/g' -e 's/[Æ]/AE/g' -e 's/[БԲ]/B/g' 
    -e 's/[ÇĆČЦԾՉՑ]/C/g' -e 's/[ČΧЧՃ]/CH/g' -e 's/[ÐĎΔДԴ]/D/g' -e 's/[ЏՁ]/DZ/g' 
    -e 's/[ÈÉÊËĒĖĘĚΕΗЁЕЭԵԷԸ]/E/g' -e 's/[ԵՒ]/EW/g' -e 's/[ЃФՖ]/F/g' 
    -e 's/[ĢΓГԳՂ]/G/g' -e 's/[Հ]/H/g' -e 's/[ÌÍÎÏĪĮǏΙИԻ]/I/g' -e 's/[ЙՋ]/J/g' 
    -e 's/[ĶΚЌКԿՔ]/K/g' -e 's/[Х]/KH/g' -e 's/[ĻŁΛЛԼ]/L/g' -e 's/[ΜМՄ]/M/g' 
    -e 's/[ÑŅŇΝНՆ]/N/g' -e 's/[ÒÓÔÕÖØŌǑΟΩОՈՕ]/O/g' -e 's/[ØŒ]/OE/g' 
    -e 's/[ΠПՊՓ]/P/g' -e 's/[Φ]/PH/g' -e 's/[Ψ]/PS/g' -e 's/[ŘΡРՌՐ]/R/g' 
    -e 's/[ŠΣСՍ]/S/g' -e 's/[Щ]/SCH/g' -e 's/[ŠȘШՇ]/SH/g' -e 's/[ẞ]/SS/g' 
    -e 's/[ŤΤТԹՏ]/T/g' -e 's/[ÞΘ]/TH/g' -e 's/[Ț]/TS/g' -e 's/[ÙÚÛÜŪŮŲǓǕǗǙǛУՈՒ]/U/g' 
    -e 's/[ΒВՎ]/V/g' -e 's/[ЎՒ]/W/g' -e 's/[ΞԽ]/X/g' -e 's/[ÝŸЫՅ]/Y/g' 
    -e 's/[Я]/YA/g' -e 's/[Ю]/YU/g' -e 's/[ŹŻŽΖЗԶԺ]/Z/g' -e 's/[ŽЖ]/ZH/g' 
    -e 's/[àáâãäåāăąǎαա]/a/g' -e 's/[æ]/ae/g' -e 's/[бբ]/b/g' -e 's/[çćčцћծչց]/c/g' 
    -e 's/[čχчճ]/ch/g' -e 's/[ðďđδдђդ]/d/g' -e 's/[џձ]/dz/g' 
    -e 's/[èéêëēėęěεηеэёեէը]/e/g' -e 's/[և]/ew/g' -e 's/[фѓֆ]/f/g' 
    -e 's/[ģγгգղ]/g/g' -e 's/[հ]/h/g' -e 's/[ìíîïīįıǐιиի]/i/g' -e 's/[йջ]/j/g' 
    -e 's/[ķκкќկք]/k/g' -e 's/[х]/kh/g' -e 's/[ĺļľłλлլ]/l/g' -e 's/[љ]/lj/g' 
    -e 's/[μмմ]/m/g' -e 's/[ñńņňνнն]/n/g' -e 's/[њ]/nj/g' -e 's/[òóôõöøōǒοωоոօ]/o/g' 
    -e 's/[øœ]/oe/g' -e 's/[πпպփ]/p/g' -e 's/[φ]/ph/g' -e 's/[ψ]/ps/g' 
    -e 's/[ŕřρрռր]/r/g' -e 's/[śšσсս]/s/g' -e 's/[щ]/sch/g' -e 's/[şšșшշ]/sh/g' 
    -e 's/[ß]/ss/g' -e 's/[ťτтթտ]/t/g' -e 's/[þθ]/th/g' -e 's/[čț]/ts/g' 
    -e 's/[ùúûüūůųǔǖǘǚǜуու]/u/g' -e 's/[βвվ]/v/g' -e 's/[ўւ]/w/g' -e 's/[ξխ]/x/g' 
    -e 's/[üýÿыյ]/y/g' -e 's/[я]/ya/g' -e 's/[ю]/yu/g' -e 's/[źżžζзզժ]/z/g' 
    -e 's/[žж]/zh/g'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet oessth'
```

### using `tr`
`tr` will only allow us to replace single characters with other single characters, and there's no trick around that. If your use case can live with that (e.g. only french accents and diacritics), then this method is OK.
```shell
Command:
tr
  'ÄÀÂΑÁÅĂÃĀǍĄԱБԲÇĆČЦԾՉՑΔÐДĎԴÉÈÊËΕΗĒĖĘĚЕЁЭԵԷԸЃФՖΓГĢԳՂՀΙÍÎÏĪĮÌǏИԻЙՋΚЌКĶԿՔΛŁЛĻԼΜМՄÑΝНŅŇՆÖÔΟΩÓÒØŌǑÕОՈՕΠПՊՓΡРŘՌՐΣСŠՍΤТŤԹՏÜÙÛÚǓǕǗǙǛŪУŲŮΒВՎЎՒΞԽŸÝЫՅΖŽŹŻЗԶԺäàâαáåąăãāǎաбբçćčћцծչցδđðђдďդéèêëεηęēėěеёэեէըѓфֆγгģգղհιíîïīįìǐиıիйջκќкķկքλłлļĺľլμмմñνńнņňնöôοωóòøōǒõоոօπпպփρрŕřռրσšśсսτтťթտüùûúǔǖǘǚǜūуųůβвվўւξխÿýыüյζžźżзզժ' \n
  'AAAAAAAAAAAABBCCCCCCCDDDDDEEEEEEEEEEEEEEEEFFFGGGGGHIIIIIIIIIIJJKKKKKKLLLLLMMMNNNNNNOOOOOOOOOOOOOPPPPRRRRRSSSSTTTTTUUUUUUUUUUUUUVVVWWXXYYYYZZZZZZZaaaaaaaaaaaabbccccccccdddddddeeeeeeeeeeeeeeeefffggggghiiiiiiiiiiijjkkkkkklllllllmmmnnnnnnnooooooooooooopppprrrrrrssssstttttuuuuuuuuuuuuuvvvwwxxyyyyyzzzzzzz'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : 'LOREM IPSUM dolor sit amet œßþ'
```
### using uni2ascii
I have also found a specialized transliteration program for Linux: [uni2asccii](https://linux.die.net/man/1/uni2ascii). However, I can't get it to romanize correctly (might be a MacOS problem, haven't tested it on Ubuntu yet).

```shell
Command: 'uni2ascii -B'
Before: 'ŁORÈM ÎPSÙM dôlõr sit amét œßþ'
After : '0x0141OREM IPSUM dolor sit amet oessy' ## problem with Ł and þ
```

## Benchmark [via pforret/bash_benchmarks](https://github.com/pforret/bash_benchmarks)

> I will focus here on the relative speeds compared to each other, the absolute speeds depend on your machine, and my 2021 MacBookPro M1 16" is quite fast. I've tested these benchmarks on a Ubuntu-on-Windows WSL1 environment, and that is wayyyyyy slower.

| method            | throughput | invocation  |
|-------------------|------------|-------------|
| awk (multichar)   | 11 MB/s    | 204 ops/sec |
| sed (1 char only) | 240 MB/S   | 926 ops/sec |
| sed (multi-char)  | 1 MB/S     | 601 ops/sec |
| tr (1 char only)  | 25 MB/s    | 899 op/sec  | 
| iconv             | 146 MB/s   | 989 ops/sec |
| uni2ascii         | 2 MB/sec   | 764 ops/sec |

Some lessons from these benchmarks:
* `awk` is a little slower to start up with such a big set of instructions (200 ops/sec vs normally 250 ops/sec)
* `sed` with 85 small instructions runs dramatically slower than `sed` with 1 large instruction (1 MB/s vs 240 MB/s)
* `iconv` could maybe be fixed if you would delete all the ~'¨^` characters afterwards.

---
So what is my recommendation for **romanizing text**?
* if you know all the accents, diacritics or alternative alphabets you need to support:
  * if all your characters can be replaced by a single character: use `sed`
  * if some of your characters should be transliterated to 2 characters, use `awk`
* if you don't know up front what types of input you need to support: use `awk` with a huge set of rules.
---
id: 2276
title: Web services in the console (bash)
date: 2020-06-06T23:28:29+02:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2276
permalink: /2020/06/06/web-services-on-the-command-line/
image: /wp-content/uploads/2020/06/Screenshot-2020-06-06-at-13.38.18.png
categories:
  - webdev
tags:
  - bash
  - cli
  - command
  - curl
  - macos
  - service
  - terminal
  - web
---
I spend a lot of my day in a terminal window, and I love automating stuff with [bash scripts](https://blog.forret.com/2018/06/03/bash-boilerplate-generator/). Sometimes those scripts need to do perform actions based on **external conditions**: location (country), weather, bandwidth speed &#8230;

Here are a couple of terminal-ready web services that can give you external information. You can interrogate them from the command-line (CLI). For this you will need a CLI web client like [curl](https://curl.haxx.se/), [wget](https://www.gnu.org/software/wget/) or [http](https://httpie.org/); at least one of those should already be installed on your MacOS/Linux/Win10 WSL terminal.

## IP address/location

There is the website [ifconfig.co](https://ifconfig.co/), run by Martin Polden (Norway), based on his [mpolden/echoip](https://github.com/mpolden/echoip) project (written in Go). It will give you your IP4/IP6 network address, and based on that, also your approximate geographical location.

  * `curl ifconfig.co` : 2a02:1811:142c:6000:e968:27b8:17d6:10bd
  * `curl ifconfig.co/city` : &#8220;Vilvoorde&#8221; (your nearest city)
  * `curl ifconfig.co/country` : &#8220;Belgium&#8221; (your country or the one your IP address seems to indicate)
  * `curl ifconfig.co/country-iso` : &#8220;BE&#8221; (your country code)

Alternatives: [ip-api.com](https://ip-api.com/), [ifconfig.io](https://ifconfig.io/), [ipinfo.io](https://ipinfo.io), [abstractapi.com](https://www.abstractapi.com/ip-geolocation-api)

## Weather

Igor Chubin has developed a neat ASCII weather forecast service [wttr.in](https://wttr.in/) that works great in CLI mode. It runs on Python and the code is on [chubin/wttr.in](https://github.com/chubin/wttr.in).<figure class="wp-block-image size-large">

<img  width="916" height="560" src="https://blog.forret.com/wp-content/uploads/2020/06/Screenshot-2020-06-06-at-13.38.18.png" alt="" class="wp-image-2277" srcset="https://blog.forret.com/wp-content/uploads/2020/06/Screenshot-2020-06-06-at-13.38.18.png 916w, https://blog.forret.com/wp-content/uploads/2020/06/Screenshot-2020-06-06-at-13.38.18-300x183.png 300w, https://blog.forret.com/wp-content/uploads/2020/06/Screenshot-2020-06-06-at-13.38.18-768x470.png 768w" sizes="(max-width: 916px) 100vw, 916px" />   

  * `curl wttr.in` : get the weather for the location your computer is at
  * `curl wttr.in/London` : get the weather for London
  * `curl "wttr.in/?format=4"` ; &#8220;Vilvoorde, Belgium: &#x26c5;&#xfe0f;&nbsp; &#x1f321;&#xfe0f;+14°C &#x1f32c;&#xfe0f;→31km/h&#8221;
  * `curl "wttr.in/?format=%l+:+%d+%m"` : &#8220;Vilvoorde, Belgium : 22:38:16 &#x1f315;&#8221; (sunset timing & moon phase)

## Developer help

Igor also developed [cheat.sh](https://cheat.sh/) (github: [chubin/cheat.sh](https://github.com/chubin/cheat.sh) ) which allows a fast way to answer &#8220;how does XYZ work again?&#8221;

  * `curl cht.sh/rsync` : show usage for rsync
  * `curl cht.sh/php/facade` : what is a PHP facade for again?
  * `curl cht.sh/go/Channels` : how do Go channels work again?

## Create QR code

Another genius project of Igor Chubin: [qrenco.de](http://qrenco.de) ([github](https://github.com/chubin/qrenco.de))<figure class="wp-block-image size-large">

<img  width="367" height="272" src="https://blog.forret.com/wp-content/uploads/2020/06/Screenshot-2020-06-06-at-15.02.21.png" alt="" class="wp-image-2278" srcset="https://blog.forret.com/wp-content/uploads/2020/06/Screenshot-2020-06-06-at-15.02.21.png 367w, https://blog.forret.com/wp-content/uploads/2020/06/Screenshot-2020-06-06-at-15.02.21-300x222.png 300w" sizes="(max-width: 367px) 100vw, 367px" />   

## Bandwidth speed

Well this is a bit different, because you can't measure internet speed with just a call to an external service. 

There is [sindresorhus/fast-cli](https://github.com/sindresorhus/fast-cli) which uses the [Fast.com](https://fast.com/) (Netflix) servers, but it's a huge npm library (with [puppeteer](https://github.com/puppeteer/puppeteer), i.e. a full headless browser under the hood) you have to install on your local computer,

A bit lighter is [sivel/speedtest-cli](https://github.com/sivel/speedtest-cli), which is a Python script that uses the servers from [Speedtest](https://www.speedtest.net/). It is lighter in that it fetches the last version of the code from Github (with curl) and feeds this right into a python interpreter. Obviously you need Python on your machine.

<pre class="wp-block-preformatted">$ <em>curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -
</em>Retrieving speedtest.net configuration...
Testing from Telenet (94.225.186.144)...
Retrieving speedtest.net server list...
Selecting best server based on ping...
Hosted by Proximus (Schaarbeek) [7.34 km]: 19.867 ms
Testing download speed...
Download: 128.29 Mbit/s
Testing upload speed...
Upload: 18.26 Mbit/</pre>

## Dictionary lookup

    $ curl dict://dict.org/d:albeit
    220 dict.dict.org dictd 1.12.1/rf on Linux 4.19.0-10-amd64 <auth.mime> <69792767.2757.1634813146@dict.dict.org>
    250 ok
    150 1 definitions retrieved
    151 "Albeit" gcide "The Collaborative International Dictionary of English v.0.48"
    Albeit \Al`be"it\, conj. [OE. al be although it be, where al is
        our all. Cf. {Although}.]
            Even though; although; notwithstanding. --Chaucer.
        [1913 Webster]
        
         Albeit so masked, Madam, I love the truth. --Tennyson.
    [1913 Webster]
    .

## Create short URL

    $ curl -F shorten=https://blog.forret.com
    https://ttm.sh/hv6

## Publish a file (image)

    $ curl -F'file=@test.jpg' https://0x0.st
    https://0x0.st/iOC_.jpg

    $ curl --upload-file ./results.txt https://transfer.sh/results.txt 
    https://transfer.sh/66nb8/results.txt

## Exchange rates

Another CLI service by Igor chubin : [rate.sx](https://rate.sx/) for cryptocurrency exchange rates.
![](https://blog.forret.com/wp-content/uploads/2020/06/Screenshot-2020-06-06-at-15.09.36.png)


I had to search a bit, but I also found an API for &#8216;regular' currency exchange rates: 
* [exchangeratesapi.io](https://exchangeratesapi.io/) (via [alexanderepstein/Bash-Snippets](https://github.com/alexanderepstein/Bash-Snippets))
* [abstractapi.com](https://www.abstractapi.com/exchange-rate-api)

![](https://blog.forret.com/wp-content/uploads/2020/06/Screenshot-2020-06-07-at-12.29.22.png)


## Symbolic maths

The [Newton](https://newton.now.sh/) web service ([Github](https://github.com/aunyks/newton-api)) by Gerald Nash allows you to do things like:

<pre class="wp-block-preformatted">$ <strong>curl</strong> https://newton.now.sh/derive/x\^3+2x\^2
{"operation":"derive","expression":"x^3+2x^2","result":"3 x^2 + 4 x"}

$ <strong>curl</strong> https://newton.now.sh/factor/3x\^3+x\^2 
{"operation":"factor","expression":"3x^3+x^2","result":"x^2 (3 x + 1)"}

$ <strong>curl</strong> https://newton.now.sh/zeroes/x\^3\-2x\^2
{"operation":"zeroes","expression":"x^3-2x^2","result":[0,2]}      </pre>

## Music APIs

<pre class="wp-block-preformatted">$ curl https://api.<a href="https://lyrics.ovh/">lyrics.ovh</a>/v1/prince/purple-rain
{"lyrics":"I never meant to cause you any sorrow\r\n(...)purple rain"}

$ curl "https://<a href="https://tastedive.com/">tastedive.com</a>/api/similar?q=steely+dan"
{"Similar": {"Info": [{"Name": "Steely Dan", "Type": "music"}], "Results": [{"Name": "Donald Fagen", "Type": "music"}, (...){"Name": "Looking Glass", "Type": "music"}]}}</pre>

## Using web services in a bash script

If you want to use these web tools in a script, you can easily put their output into a bash variable:

<pre class="wp-block-preformatted">city=$(curl -s ifconfig.co/city)      # -s = silent
city=$(wget -q -O- ifconfig.co/city). # -q = quiet, -O- = to stdout
city=$(http --ignore-stdin ifconfig.co/city) # don't read from stdin</pre>

If the web service returns JSON instead of plain text, you will need [jq](https://stedolan.github.io/jq/) to filter the data you want:

<pre class="wp-block-preformatted">$ curl -s "https://newton.now.sh/derive/x^3+2x^2" | jq -r '.result'
3 x^2 + 4 x

$ curl -s "https://api.exchangeratesapi.io/latest?base=EUR" | jq '.rates.USD'
1.133</pre>

More console web services can be found on <https://github.com/chubin/awesome-console-services>
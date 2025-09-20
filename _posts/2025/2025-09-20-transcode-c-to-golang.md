---
title: "Transcode from C to Golang: Claude vs Codex vs Gemini"
layout: post
image: /wp-content/uploads/2025/09/unsplash.machine.jpg
permalink: /2025/2025-09-20/transcode-c-to-golang/
date: 2025-09-20
categories:
    - AI
tags:
    - audio
    - ffmpeg
    - agentic
---

> TL;DR: I compared three AI coding agents (Claude Code, Codex CLI, Gemini CLI) for transcoding an existing audio-processing C program to Golang. 
> The clear winner in this case was OpenAI's Codex. See the results on [github.com/pforret/leqm-nrt](https://github.com/pforret/leqm-nrt).

![](/wp-content/uploads/2025/09/unsplash.machine.jpg)
<!-- more -->

## LEQ(m)

So I work in digital cinema technology. Part of my work involves processing and transforming audio and video for advertising.
For instance, we care a lot about measuring the perceived loudness of audio, so that all spots in the advertising pre-show reel sound equally loud to the viewer.
And none of them hurts the ears, obviously. We measure the loudness, we adapt the audio if necessary.

There is a standard for measuring loudness in a cinema. It's called **LEQ(m)** (_loudness equivalent using [M-weighting](https://en.wikipedia.org/wiki/ITU-R_468_noise_weighting#M-weighting)_), defined by the 2016 standard [ISO 21727:2016](https://github.com/pforret/leqm-nrt/blob/master/docs/leqm/iso_2016.md). It measures audio in the unit `dBLeq(m)`.
I'll spare you the [technical details](https://www.production-expert.com/production-expert-1/leq-m-loudness-what-is-it-and-when-is-it-used-iw6gp), but it's very specific. Now imagine you have an audio file, how can you measure this LEQ(m) loudness?

## Software options

Dolby used to have a rack-mountable hardware device (for studios), and then also a software emulation of it called 'Dolby Media Meter'.
Both are now discontinued. There are a number of commercial software plugins (for DAWs or studio setups).
But I wanted a CLI program that I can run on any (cloud) server. 

I did find a C implementation [lucat/leqm-nrt](https://github.com/lucat/leqm-nrt) that was created in 2020 by [Luca Trisciani](https://github.com/lucat). _Grazie mille, Luca_. It's a single 5000-lines C file. I [forked his repo](https://github.com/pforret/leqm-nrt), and got his program to compile on Linux. It works well, but the output format is rather ugly. 

```
leqm-nrt  Copyright (C) 2011-2013, 2017-2020 Luca Trisciani
This program comes with ABSOLUTELY NO WARRANTY,
for details on command line parameters see --help
First argument is the audio file to be measured.
Other parameters can follow in free order.
This is free software, and you are welcome to redistribute it
under the GPL v3 licence.
Program will use 1 + 13 slave threads.
Opened file: examples/short.wav
Sample rate: 48000
Channels: 2
Format: 65538
Frames: 240000
Using input channel calibration for 2.0 configuration:
0 0
Leq(M): 74.7538
```
I want to change it. And it's been 30+ years since I last wrote C code. Wouldn't it be so much easier to do this in Go? So let's ask some help from the coding agents, to transcode it to Golang.

## The prompt

I just had a `README.md` document with this:

> leqm-nrt is a non-real-time implementation of Leq(M) measurement according to
>
> * ISO 21727:2004(E): "Cinematography — Method of measurement of perceived loudness of motion-picture audio material" and
> * ISO 21727:2016(E) "Cinematography — Method of measurement of perceived loudness of short duration motion-picture audio material"

And the prompt I asked was: "_Create a new program in `/golang` that implements the same functionality as `@leqm-nrt.c`, and gives its output as JSON. It should only support WAV, MP3 and M4A input files._"

## Contestant 1: Claude Code (Anthropic)

Claude Code had an advantage, because I first created the [CLAUDE.md](https://github.com/pforret/leqm-nrt/blob/master/CLAUDE.md) file with the `/init` command. 
But most of the information in there was about the build process (make/configure), not about the actual code.
When it finished after this first prompt, there was indeed a working Go program. However, it was wrong. The measurements it came back with were completely off.
When I asked about that, it tried again, but still the results were not correct. (I benchmarked it against the results of the original C program.)

## Contestant 2: Codex CLI (OpenAI)

I didn't even create a `AGENTS.md` file for Codex, I just ran the same prompt as above.
It was an instant hit. The first trial produced a working Go program that produced correct results, very close to the original C program.
(I don't need 6 digit precision, so a few tenths of a dB difference is acceptable.)
I then refined by adding some more data to the JSON output (e.g. peak and average dB per channel), and again this worked on a first try. 

When I looked further, I saw that Codex used `ffmpeg` to decode the audio files, which is an understandable choice.
When I tried to use a native audio processing library [go-audio/wav](https://github.com/go-audio/wav) for reading the input, the speed dropped to 1/10th of the original Go version. So I stuck with using `ffmpeg` under the hood.

## Contestant 3: Gemini CLI (Google)

I copied the CLAUDE.md file to GEMINI.md, and ran the same prompt as for the others.
Gemini also produced a working Go program, but that did not do what I asked. It just ran `ffmpeg` (another very powerful open-source audio/video tool) to get the loudness and then just gave that back. `ffmpeg -i input.wav -filter:a volumedetect -f null -` for the connaisseurs.

## Conclusion

In this case, the clear winner was **Codex CLI**. It produced a working Go program that did what I asked, on the first try.

I also did some benchmarks to compare the C and Go programs. For this, I calculate the **speed index**: the ratio of audio duration over processing time. So a speed index of 1 means real-time processing, 10 means 10x real-time, etc.

* The C program executed at a speed index of about [300x - 1500x](https://github.com/pforret/leqm-nrt/blob/master/benchmark/leqm_macos.2025-09-19.md).
* The Go program, compiled for AMD64 on macOS (the 'old' Intel processors), executed at a speed index of about [15x - 70x](https://github.com/pforret/leqm-nrt/blob/master/benchmark/goqm_macos.2025-09-19.md). That's 20 times slower than the C program.
* The Go program, compiled for ARM64 on macOS (the 'new' M processors), executed at a speed index of about [60x - 500x](https://github.com/pforret/leqm-nrt/blob/master/benchmark/goqm_macos_arm.2025-09-19.md). That's only 3 times slower than the C program.


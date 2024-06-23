---
title: Using A.I. for video quality control
layout: post
permalink: /2024/05/25/ai-video-quality-control/
image: /wp-content/uploads/2024/videoqc.jpg
categories:
    - idea
tags:
    - AI
    - DCP
    - LLM
    - artificial-intelligence
    - cinema
    - transcription
---
I'm doing lots of research these days on using A.I. (generative or other) in the daily operations of cinema advertising, which is my area of expertise.
Let me tell you about one topic I recently explored: using artificial intelligence models to help in video quality control.

![](/wp-content/uploads/2024/videoqc.jpg)

## The problem

Cinema advertising requires videos to be converted to the DCP format. Before starting the conversion, we do some technical quality checks on the input video, like the resolution, framerate, compression, audio levels. Once the DCP has been created, we also need to check the content before we can send it to the cinemas. This is where this quality control comes in.

Specifically we want to **check the content quality**. We want to detect things like

* wrong language (e.g. French spoken audio when we expect Dutch spoken, Dutch subtitles when we expect French subtitles)
* sensitive content (nudity, kissing, violence, smoking, drugs & alcohol consumption, ...)
* unexpected additional logos or brand names

## The solution

For this, I could use the experience I had from working on [printthatvideo.com](/2023/12/01/printthatvideo/). I used a similar approach to transcribe the audio of the video (using [Deepgram](https://deepgram.com/)) and then use A.I. to analyze the text and detect the spoken language. I also used video transcription to detect subtitles and check the language(s) used there. This solved the language detection part.

There are also A.I. models available that can detect nudity, violence, etc. in images. I wouldn't say they are good enough yet. Explicit nudity in (cinema) advertising is not really common, and it detected some false positives. Detection of kissing was useful (because in some cases, that can be perceived as '_too much_' for a young public). Violence detection was not that accurate either.

> Tools:
> * [Laravel](https://laravel.com/) and [Nova](https://nova.laravel.com/) for (fast) application development
> * [ffmpeg](https://ffmpeg.org/) for audio/video extraction and compression
> * [Deepgram](https://deepgram.com/) for audio transcription via [EdenAI.co](https://www.edenai.co/)
> * [ChatGPT](https://openai.com/chatgpt/) for text analysis (language detection) via [openai-php/laravel](https://github.com/openai-php/laravel)

![](/wp-content/uploads/2024/file.spottixa.d6426e.jpg)

The logo and brand detection was interesting, the A.I. recognizes more than I could do by just looking at the video. The big static logos/pack shots are easy to spot, but when there was a camera pan in a shopping street, it picked up more brands from shop windows than I could ever do.

## Conclusion

For the language detection, which is a typical Belgian problem, A.I. is a clear game changer. We will be able to avoid language-based mistakes in the future. 

For the video content detection, it's a bit more tricky. The A.I. models have too many false positives and false negatives, so there still needs to be a human check. But for early detection of possibly problematic content, this could help.
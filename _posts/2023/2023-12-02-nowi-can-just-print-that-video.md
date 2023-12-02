---
title: Now I Can Just Print That Video
date: 2023-12-01T22:49:04+01:00
author: Peter
layout: post
permalink: /2023/12/01/printthatvideo/
image: wp-content/uploads/2023/12/url.download.339f88.jpg
categories:
  - projects
tags:
  - print
  - video
  - ai
  - laravel
  - pdf
---
It all started with Instagram Reels showing me too many yummy cooking videos. I wanted to try some recipes out myself. 
But I didn't want to have to keep my phone in the kitchen, and I didn't want to have to keep unlocking it to see the next step. 
I wanted to print the recipe out, and have it on the counter while I was cooking. 
Wouldn't it be cool if I could just **print that video**?

> TL;DR: I am making a [web service to print that video](https://printthatvideo.com).

![PrintThatVideo](/wp-content/uploads/2023/12/url.download.339f88.jpg)

Surely the current state of A.I. services should make this within reach. Let's see what we need.

Where is the relevant information in a cooking video?

* Sometimes it is posted as the body text of the video. 
* Sometimes it is narrated by a voiceover. 
* Sometimes it is a series of (sub)titles that are printed on the screen.
* Sometimes essential steps are shown on the screen (not with text).

So I started a new [Laravel](https://laravel.com) project and tried to tackle these one by one.

> Running `curl -s "https://laravel.build/NewAmazingIdea" | bash` still gives me a kick every time.

## Step 1: downloading the video

The obvious choice there is [yt-dlp](https://github.com/yt-dlp/yt-dlp). 
It allows straightforward command-line downloading of YouTube, Instagram, TikTok, ... videos.
I encapsulated it in a PHP Class _Downloader_ that takes a URL and downloads the video to a local file.

## Step 2: extracting the body text

Again `yt-dlp` comes to the rescue. It can also download an JSON metadata file that contains the title, body text, duration... of the video.

```bash
yt-dlp -q --write-info-json -o '$output' '$url'
```
So the Downloader class now also downloads the metadata file and parses it.

## Step 3: extracting the voiceover

This is where we open the Pandora's box of A.I. services. I found an intermediate API service [EdenAI](https://www.edenai.co) that allows me to easily switch between different providers of a certain service. E.g. for speech-to-text I can choose between Google, Amazon AWS, Microsoft, IBM, ...I tried some services out for speech recognition and I got the best results with [Deepgram](https://deepgram.com), because they also format the resulting text in sentences with punctuation. 

First I extract a mono audio file from the original video. Then I send it to the EdenAI API and get back a JSON file with the text.
The EdenAI API is asynchronous, so I had to add a polling mechanism to my PHP class. Laravel queue to the rescue. Generally I get results back within 5 secs.

The result is readable: "_We're making hot sauce a sweeter cousin, fermented hot honey. You're gonna need honey. I've got some incredible raw honey here. Choice, remove the stalks and chop out nice and small. If don't worry about. Finely slice some real onion, here slice some garlic cloves and pick some fresh thyme. (...)_"

## Step 4: extracting the subtitles

At first ,I was afraid I would have to render out 2 to 4 frames per second and run a OCR service on each of them (which would have been expensive). 
But I discovered there are already 2 [video-to-text services](https://www.edenai.co/providers?technologies=Video) out there, Amazon and Google.

First I extract a lower-res lower-framerate video from the original video. Again I send it to the EdenAI API and get back a JSON file with all the detected pieces of text and when they appeared.

Unfortunately the readability of the results is not great.

<table><tr><td><video controls width="250"><source src="/wp-content/uploads/2023/12/chilis.mp4" type="video/mp4" /></video></td>
<td>making hot sauce's &bull; and leave to ferment &bull; like and follow &bull; and I don't wanna &bull; you should smell &bull; remove the stalks &bull; and I wish &bull; not to be missed &bull; and don't forget &bull; however you wish &bull; you can leave the &bull; stir everything together &bull; the difference to &bull; some garlic cloves &bull; ready to enjoy &bull; get those chillies &bull; insanely good and &bull; to like and follow &bull; fresh thyme &bull; honey to settle &bull; for part 2 &bull; nice and small &bull; wait anymore &bull; more honey as needed &bull; all over this &bull; sweeter cousin &bull; and cover with that &bull; it's like pizza &bull; and chop it up &bull; garlic and thyme (...)</td></tr></table>

So I guess I need to work on this a bit longer.

## Step 5: extracting some frames

For this Proof-of-Concept phase, I just extract 6 evenly spaces frames from the video. In theory, I could also use image recognition to extract the frames that contain the most relevant information, e.g. those that contain text (might be an illustrated instruction), or scene changes (might be a new step in the recipe).

<table><tr>
<td><img src="/wp-content/uploads/2023/12/ig-9fa8bbef/f.0002.jpg" alt=""></td>
<td><img src="/wp-content/uploads/2023/12/ig-9fa8bbef/f.0003.jpg" alt=""></td>
<td><img src="/wp-content/uploads/2023/12/ig-9fa8bbef/f.0004.jpg" alt=""></td>
</tr><tr>
<td><img src="/wp-content/uploads/2023/12/ig-9fa8bbef/f.0005.jpg" alt=""></td>
<td><img src="/wp-content/uploads/2023/12/ig-9fa8bbef/f.0006.jpg" alt=""></td>
<td><img src="/wp-content/uploads/2023/12/ig-9fa8bbef/f.0007.jpg" alt=""></td>
</tr></table>

## Step 6: printing the result

So what does that look like all together?

<embed src="/wp-content/uploads/2023/12/recipe1.pdf" width="800px" height="1130px" />

It sure works for some of the cooking/culinary videos that I had in mind. 
In theory, it could work for any video that has a voiceover or subtitles.
Fitness instructions, make-up videos, language lessons, ...
I haven't tried it out on those yet.

It had gotten me enthusiastic enough to spin it up as a separate project: [PrintThatVideo.com](https://printthatvideo.com).
Subscribe over there if you want to keep track of the progress.
Contact me at peter@printthatvideo.com if you have specific questions or suggestions, like "What does this look like for XYZ videos?" or "Can you also print the video on a t-shirt?".
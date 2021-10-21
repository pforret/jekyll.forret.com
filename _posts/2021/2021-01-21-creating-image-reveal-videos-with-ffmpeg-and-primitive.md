---
id: 2421
title: Creating image reveal videos with ffmpeg and primitive (bash)
date: 2021-01-21T15:53:28+01:00
author: Peter
layout: post
permalink: /2021/01/21/creating-image-reveal-videos-with-ffmpeg-and-primitive/
image: /wp-content/uploads/2021/01/thehelp.026.jpg
categories:
  - github
tags:
  - bash
  - bashew
  - ffmpeg
  - github
  - instagram
  - primitive
  - video
---
One of the projects I started during the lockdown is [@**squaredforwork**](https://www.instagram.com/squaredforwork/) 
which is now named &#8220;**Guess the movie?**&#8221; . 
It is based on years of experimenting with image manipulation and information reduction. 
Basically: how much visual information do you need to recognise a (familiar) image? 
I mostly worked with movie posters, since those are often universally recognisable images. 
Some examples of earlier tests might give you an idea (working with large square pixels here: 
[Pixel Movie Quiz](https://blog.forret.com/2020/05/07/making-the-pixel-movie-quiz/)):

![](https://blog.forret.com/wp-content/uploads/2021/01/avatar.c39f.20-M16C16G20-300x300.jpg)
![](https://blog.forret.com/wp-content/uploads/2021/01/american.5f4f.32-M8G20-300x300.jpg)
![](https://blog.forret.com/wp-content/uploads/2021/01/Batman2.4a6b.20-M16C16G20-300x300.jpg)
![](https://blog.forret.com/wp-content/uploads/2021/01/Ghostbus.ed6f.10-M8C16G20-300x300.jpg)


This time I wanted to take it a bit further and make a video where the image becomes clearer by the second 
and there is a challenge in guessing as fast as possible what movie is being shown. 

In the end, I automated the whole process in a bash script, based on my 
_[bashew](https://github.com/pforret/bashew)_ bash framework: [**github.com/pforret/squaredforwork**](https://github.com/pforret/squaredforwork)

## Step 1: get a photo

What better place to get movie posters from than IMDB? I wanted to be able to download movie posters of specific movies or let my script select one at random.

I use movie list URLs like [imdb.com/chart/boxoffice](https://www.imdb.com/chart/boxoffice) as a source, parse the HTML with the Rust tool [`htmlq`](https://github.com/mgdm/htmlq) and pick one movie at random. I then look up the IMDB page for this movie, use again `htmlq` to get the movie title and poster. 

```bash
curl -s "$source_url" | htmlq a | grep "/title/tt" | grep -Eo "(tt&#91;0-9]+)" | sort -u | shuf -n 1
page_poster=$(curl -s "https://www.imdb.com/title/$1/" | htmlq -a href a | grep /title | grep mediaviewer | head -1)
```


This is the result for the movie [The Help (2011)](https://www.imdb.com/title/tt1454029).

![](https://blog.forret.com/wp-content/uploads/2021/01/tt1454029.the-help-691x1024.jpg)

## Step 2: resize the photo

I want all my posters to be 2&#215;3 (vertical, and photo aspect ratio). 
I also want to scale it down because the next step (primitive) doesn't work with high-res inputs anyway.

```bash
convert "$input" -bordercolor black -border "$border" -resize "120x180"^ -gravity center -crop "120x180+0+0" +repage "$output"
```

![](https://blog.forret.com/wp-content/uploads/2021/01/the-help.small_.jpg)

## Step 3: create &#8216;primitive&#8217; GIF

Introducing [github.com/fogleman/**primitive**](https://github.com/fogleman/primitive)! 
This amazing piece of software (developed by Michael Fogleman in 2017 using Go) does the heavy lifting here. 
It can take any image and create the best approximation with a limited number of graphical _primitives_: 
ellipses, triangles, rectangles, lines, or a mix of everything. It normally outputs image files. 
But you can also ask it to save all the intermediate images together in an animated GIF. 
This last format is what we will use to create the bulk of our reveal movie.

```bash
primitive -i "$smalljpg" -o "$reveal_gif" -s 1200 -r 120 -n 600 -m 7 -bg FFFFFF
```

Some intermediate image files created by primitive:

![](https://blog.forret.com/wp-content/uploads/2021/01/thehelp.001-200x300.jpg) ![](https://blog.forret.com/wp-content/uploads/2021/01/thehelp.016-200x300.jpg)
![](https://blog.forret.com/wp-content/uploads/2021/01/thehelp.026-200x300.jpg) ![](https://blog.forret.com/wp-content/uploads/2021/01/thehelp.036-200x300.jpg)


## Step 4: convert GIF to .M4V, add title

I need to convert the GIF movie, created by primitive, to a video format, 
and I will use that opportunity to add an introduction title in the first few seconds. 
That is a job that [**ffmpeg**](https://ffmpeg.org/) can handle perfectly, even if that can look a bit verbose:

```bash
ffmpeg -i "$input" -vcodec libx264 -pix_fmt yuv420p -ss 1 -t 40 -r 12 
  -filter_complex "&#91;0]split&#91;base]&#91;text]; &#91;text]drawtext=text='$opening': 
    fontcolor=black:fontsize=120:fontfile=fonts/AmaticSC-Bold.ttf:x=(w-text_w)/2:y=(h-text_h)/2,format=yuv420p,fade=t=out:st=3:d=1:alpha=1&#91;subtitles]; &#91;base]&#91;subtitles]overlay" 
  -profile:v main -level 3.1 -preset medium -crf 23 -x264-params ref=4 -movflags +faststart -y "$output"
```

I use the font [Amatic SC Bold](https://fonts.google.com/specimen/Amatic+SC) from Google Fonts, 
and I let the text fade out after 3 seconds.

![](https://blog.forret.com/wp-content/uploads/2021/01/the-help.intro_-683x1024.gif)

## Step 5: create crossfade

At the end of the video, I do want to show the unmodified full resolution movie poster, so that the solution is always clear. I could let primitive run for thousands of frames, it would take forever, but the final image would never be a 100% match with the original poster. So I just run primitive for e.g. 600 iterations, take the last frame of that effort, and create a cross-fade to the original full-res poster. Again in ffmpeg, again a solid command line.

```bash
ffmpeg -loop 1 -i "$frame_last" -loop 1 -i "$frame_sharp" -r 12 -vcodec libx264 -pix_fmt yuv420p 
  -filter_complex "&#91;1:v]&#91;0:v]blend=all_expr='A*(if(gte(T,$length),1,T/$length))+B*(1-(if(gte(T,$length),1,T/$length)))'" 
  -t $length -y "$xfade"
```

![](https://blog.forret.com/wp-content/uploads/2021/01/the-help.xfade_.gif)

## Step 6: combine with audio to new movie

Now I want to merge the two videos into one, and add some sound. 

I use ffmpeg's concat functionality to append the primitive and the cross-fade video files.

```bash
ffmpeg -f concat -safe 0 -i "$playlist" -c copy -y "$concat"
```

Then I add the audio underneath, and trim the result at 45 seconds. 
To avoid problems with music copyright, I use a remix I made myself in 2006 ago called 
['Love taken over again'](https://soundcloud.com/pforret/mashup-12-love-taken-over-again).


```bash
ffmpeg -i "$concat" -i "audio/love_taken_over.wav" -t 45 -af "afade=t=out:st=40:d=5" 
  -vcodec libx264 -profile:v main -level 3.1 -preset medium -crf 23 -x264-params ref=4 -movflags 
  +faststart -y "$output"
```

![](https://blog.forret.com/wp-content/uploads/2021/01/thehelp.gif)

## Step 7: convert for Instagram

Instagram does not like my 2&#215;3 aspect ratio for the video, it prefers square or at the most 4&#215;5. So I use letterboxing (or strictly speaking pillarboxing) add a black border left and right and resize the video for Instagram. Videos are automatically posted daily with Buffer on [**instagram.com/squaredforwork**/](https://www.instagram.com/squaredforwork/).

```bash
ffmpeg -i "$output" 
  -vf "scale=1080:1350:force_original_aspect_ratio=decrease,pad=1080:1350:(ow-iw)/2:(oh-ih)/2" 
  -y "$ig_video"
```

![](https://blog.forret.com/wp-content/uploads/2021/01/the-help.ig_.gif)

## Step 8: convert for Tiktok

Tiktok, on the other hand, uses a full screen vertical HD format, so here I use letterboxing to add a black border on top and bottom. Videos are posted manually, so very irregularly on [**tiktok.com/@squaredforwork**](https://www.tiktok.com/@squaredforwork). 

```bash
ffmpeg -i "$output" 
  -vf "scale=1080:1920:force_original_aspect_ratio=decrease,pad=1080:1920:(ow-iw)/2:(oh-ih)/2" 
  -y "$tt_video"
```

![](https://blog.forret.com/wp-content/uploads/2021/01/the-help.tt_.gif)

## Step 9: convert for Facebook

I initially thought conversion for Facebook would be easy, but that was not the case. 
The problem is that the preview image Facebook shows for a video is typically chosen at the end of the video. 
In our case, this is the high-res version of the video poster, which means the surprise is completely spoiled. 
So I thought, I&#8217;ll just add some seconds from the beginning of the primitive movie (the most cryptic ones) 
to the end and Facebook will use that as the preview thumbnail.

However, I was wrong. Facebook&#8217;s thumbnail algorithms seem to have a preference for frames 
with more visual information. They skip my low-information outro, and still prefer the high-res end image for 
the thumbnail. I could research further, but since I actually stopped using Facebook last year, 
I won&#8217;t be posting videos there, so I don't care 🙂

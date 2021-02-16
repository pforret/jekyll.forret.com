---
id: 2179
title: Making the Pixel Movie Quiz
date: 2020-05-07T23:48:35+02:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2179
permalink: /2020/05/07/making-the-pixel-movie-quiz/
image: /wp-content/uploads/2020/05/AmeliePo.0547.5-M20G16.jpg
categories:
  - audio-video
tags:
  - bash
  - cli
  - image
  - imagemagick
  - instagram
  - pixels
  - quiz
  - vision
---
[**Imagemagick**](https://imagemagick.org/) is a command-line tool to create and modify image files. It is an essential program if you want to work with media files (just like [ffmpeg](https://www.ffmpeg.org/) and [sox](http://sox.sourceforge.net/)). I have used it very [often](https://blog.forret.com/2013/11/11/blackwhite-video-thermography/) in my career and I still discover new applications. This blog post is about one of these experiments. How few pixels does one need to recognise a familiar/known image, in this case a movie poster? I created the [**Pixel Movie Quiz**](https://www.instagram.com/squaredforwork/).

## Pixelized movie posters

<div class="wp-block-image">
  <figure class="aligncenter size-thumbnail"><img  width="150" height="150" src="https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.3-M20G16-150x150.jpg" alt="" class="wp-image-2180" srcset="https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.3-M20G16-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.3-M20G16-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.3-M20G16-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.3-M20G16-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.3-M20G16-50x50.jpg 50w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.3-M20G16.jpg 1100w" sizes="(max-width: 150px) 100vw, 150px" /><figcaption>Guess the movie? (3&#215;3 pixels)</figcaption> 
</div>

This is a 3&#215;3 pixel version of a movie poster. Can you guess which movie? A lot of my friends could guess this one, from just 9 pixels! Do you need some more?

<div class="wp-block-image">
  <figure class="aligncenter size-thumbnail"><img  width="150" height="150" src="https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.5-M20G16-150x150.jpg" alt="" class="wp-image-2181" srcset="https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.5-M20G16-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.5-M20G16-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.5-M20G16-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.5-M20G16-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.5-M20G16-50x50.jpg 50w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.5-M20G16.jpg 1100w" sizes="(max-width: 150px) 100vw, 150px" /><figcaption>Guess the movie (5&#215;5 pixels)</figcaption> 
</div>

Still no? Try stepping back from your screen, and squinting your eyes. Ok, I&#8217;ll give you 9&#215;9 pixels, and if you still don&#8217;t recognise the poster, you probably don&#8217;t know the movie.

<div class="wp-block-image">
  <figure class="aligncenter size-thumbnail"><img  width="150" height="150" src="https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.9-M15G16-150x150.jpg" alt="" class="wp-image-2182" srcset="https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.9-M15G16-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.9-M15G16-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.9-M15G16-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.9-M15G16-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.9-M15G16-50x50.jpg 50w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.9-M15G16.jpg 1100w" sizes="(max-width: 150px) 100vw, 150px" /><figcaption>Guess the movie (9&#215;9 pixels)</figcaption> 
</div>

Yes! That beautiful saturated red and green, that is indeed the French classic Le Fabuleux Destin D&#8217;Amélie Poulain or in short [**Amélie**](https://www.imdb.com/title/tt0211915/) (2001).

<div class="wp-block-image">
  <figure class="aligncenter size-medium"><img  width="300" height="300" src="https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.160-M2G16-300x300.jpg" alt="" class="wp-image-2183" srcset="https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.160-M2G16-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.160-M2G16-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.160-M2G16-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.160-M2G16-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.160-M2G16-50x50.jpg 50w, https://blog.forret.com/wp-content/uploads/2020/05/AmeliePo.0547.160-M2G16.jpg 1100w" sizes="(max-width: 300px) 100vw, 300px" /><figcaption>Amélie (2001) &#8211; 160&#215;160 pixels</figcaption> 
</div>

Isn&#8217;t it amazing that your brain can sometimes get enough out of 9 (3&#215;3) pixels to recognise an image? It actually works a bit counterintuitive: if you want a better view, you don&#8217;t zoom in, but you have to zoom out. Let&#8217;s try some more, but keep your phone at arm&#8217;s length (if you&#8217;re on mobile) or move 4 steps away from your laptop screen.<figure class="wp-block-gallery columns-4 is-cropped">

<ul class="blocks-gallery-grid">
  <li class="blocks-gallery-item">
    <figure><img  width="150" height="150" src="https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.9-M15G16-150x150.jpg" alt="" data-id="2184" data-link="https://blog.forret.com/?attachment_id=2184" class="wp-image-2184" srcset="https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.9-M15G16-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.9-M15G16-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.9-M15G16-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.9-M15G16-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.9-M15G16-50x50.jpg 50w, https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.9-M15G16.jpg 1100w" sizes="(max-width: 150px) 100vw, 150px" /> 
  </li>
  <li class="blocks-gallery-item">
    <figure><img  width="150" height="150" src="https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.5-M20G16-150x150.jpg" alt="" data-id="2185" data-link="https://blog.forret.com/?attachment_id=2185" class="wp-image-2185" srcset="https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.5-M20G16-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.5-M20G16-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.5-M20G16-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.5-M20G16-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.5-M20G16-50x50.jpg 50w, https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.5-M20G16.jpg 1100w" sizes="(max-width: 150px) 100vw, 150px" /> 
  </li>
  <li class="blocks-gallery-item">
    <figure><img  width="1100" height="1100" src="https://i1.wp.com/blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.9-M15G16.jpg?resize=150%2C150&ssl=1" alt="" data-id="2186" data-link="https://blog.forret.com/?attachment_id=2186" class="wp-image-2186" srcset="https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.9-M15G16.jpg 1100w, https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.9-M15G16-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.9-M15G16-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.9-M15G16-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.9-M15G16-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.9-M15G16-50x50.jpg 50w" sizes="(max-width: 1100px) 100vw, 1100px" /> 
  </li>
  <li class="blocks-gallery-item">
    <figure><img  width="1100" height="1100" src="https://i1.wp.com/blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.9-M15G16.jpg?resize=150%2C150&ssl=1" alt="" data-id="2187" data-full-url="https://i1.wp.com/blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.9-M15G16.jpg?fit=1100%2C1100&ssl=1" data-link="https://blog.forret.com/?attachment_id=2187" class="wp-image-2187" srcset="https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.9-M15G16.jpg 1100w, https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.9-M15G16-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.9-M15G16-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.9-M15G16-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.9-M15G16-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.9-M15G16-50x50.jpg 50w" sizes="(max-width: 1100px) 100vw, 1100px" /> 
  </li>
</ul>  

Or if that&#8217;s too hard:<figure class="wp-block-gallery columns-4 is-cropped">

<ul class="blocks-gallery-grid">
  <li class="blocks-gallery-item">
    <figure><img  width="150" height="150" src="https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.15-M15G16-1-150x150.jpg" alt="" data-id="2189" data-link="https://blog.forret.com/?attachment_id=2189" class="wp-image-2189" srcset="https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.15-M15G16-1-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.15-M15G16-1-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.15-M15G16-1-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.15-M15G16-1-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.15-M15G16-1-50x50.jpg 50w, https://blog.forret.com/wp-content/uploads/2020/05/themarti.c8d9.15-M15G16-1.jpg 1100w" sizes="(max-width: 150px) 100vw, 150px" /> 
  </li>
  <li class="blocks-gallery-item">
    <figure><img  width="1100" height="1100" src="https://i0.wp.com/blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.15-M15G16.jpg?resize=150%2C150&ssl=1" alt="" data-id="2190" data-link="https://blog.forret.com/?attachment_id=2190" class="wp-image-2190" srcset="https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.15-M15G16.jpg 1100w, https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.15-M15G16-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.15-M15G16-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.15-M15G16-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.15-M15G16-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/fightclu.06bb.15-M15G16-50x50.jpg 50w" sizes="(max-width: 1100px) 100vw, 1100px" /> 
  </li>
  <li class="blocks-gallery-item">
    <figure><img  width="1100" height="1100" src="https://i0.wp.com/blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.15-M15G16.jpg?resize=150%2C150&ssl=1" alt="" data-id="2191" data-link="https://blog.forret.com/?attachment_id=2191" class="wp-image-2191" srcset="https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.15-M15G16.jpg 1100w, https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.15-M15G16-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.15-M15G16-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.15-M15G16-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.15-M15G16-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/Alladin.4244.15-M15G16-50x50.jpg 50w" sizes="(max-width: 1100px) 100vw, 1100px" /> 
  </li>
  <li class="blocks-gallery-item">
    <figure><img  width="1100" height="1100" src="https://i0.wp.com/blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.15-M15G16.jpg?resize=150%2C150&ssl=1" alt="" data-id="2192" data-full-url="https://i0.wp.com/blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.15-M15G16.jpg?fit=1100%2C1100&ssl=1" data-link="https://blog.forret.com/?attachment_id=2192" class="wp-image-2192" srcset="https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.15-M15G16.jpg 1100w, https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.15-M15G16-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.15-M15G16-1024x1024.jpg 1024w, https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.15-M15G16-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.15-M15G16-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2020/05/Amercian.530b.15-M15G16-50x50.jpg 50w" sizes="(max-width: 1100px) 100vw, 1100px" /> 
  </li>
</ul>  

Answers: The Martian, Fight Club, Aladdin, American Beaty.

Because I enjoyed it so much to see how few pixels were enough, I automated the process, and used that to create an Instagram Pixel Movie Quiz!

## My script

As I said in the beginning of this post, my main tool was ImageMagick. I use it to reduce the number of pixels, then resize it back to a bigger picture, add some smoothing and some grain. I used my [bash boilerplate generator](https://toolstud.io/data/bash.php) to create a wrapper script that works like this:

<pre class="wp-block-preformatted small">### Program: <strong>sfw_generate.sh</strong> by peter@forret.com
### Version: v1.1 - May&nbsp; 4 18:18:03 2020
### Usage: sfw_generate.sh [-v] [-b] [-n] [-o &lt;out&gt;] [-t &lt;tmp&gt;] [-c &lt;color&gt;] [-g &lt;grain&gt;] [-l &lt;large&gt;] [-m &lt;median&gt;] [-p &lt;pix&gt;] [-w &lt;width&gt;] [-s &lt;sub&gt;] [-f &lt;font&gt;] [-d &lt;dur&gt;] [-r &lt;rate&gt;] [-e &lt;step&gt;] &lt;action&gt; &lt;file&gt; [&lt;...&gt;]
### Flags, options and parameters:
&nbsp; &nbsp; -v|--verbose &nbsp; : [flag] more output [default: off]
&nbsp; &nbsp; -b|--bw&nbsp; &nbsp; &nbsp; &nbsp; : [flag] convert to B/W [default: off]
&nbsp; &nbsp; -n|--norm&nbsp; &nbsp; &nbsp; : [flag] normalize brightness [default: off]
&nbsp; &nbsp; -o|--out &lt;val&gt; : [optn] folder for output&nbsp; [default: -]
&nbsp; &nbsp; -t|--tmp &lt;val&gt; : [optn] folder for temp items&nbsp; [default: .tmp]
&nbsp; &nbsp; -c|--color &lt;val&gt;: [optn] reduce colors&nbsp; [default: -1]
&nbsp; &nbsp; -g|--grain &lt;val&gt;: [optn] add film grain&nbsp; [default: 5]
&nbsp; &nbsp; -l|--large &lt;val&gt;: [optn] large size in px&nbsp; [default: 1000]
&nbsp; &nbsp; -m|--median &lt;val&gt;: [optn] median filter in pixels&nbsp;[default: auto]
&nbsp; &nbsp; -p|--pix &lt;val&gt;: [optn] min resolution in px&nbsp; [default: 80]
&nbsp; &nbsp; -w|--width &lt;val&gt;: [optn] frame border width in px&nbsp; [default: 0]
&nbsp; &nbsp; -s|--sub &lt;val&gt;: [optn] subtitle
&nbsp; &nbsp; -f|--font &lt;val&gt;: [optn] font to use&nbsp; [default: GeoRegular.ttf]
&nbsp; &nbsp; -d|--dur &lt;val&gt;: [optn] duration (for video)&nbsp; [default: 2]
&nbsp; &nbsp; -r|--rate &lt;val&gt;: [optn] framerate for video&nbsp; [default: 8]
&nbsp; &nbsp; -e|--step &lt;val&gt;: [optn] increment per frame&nbsp; [default: 2]
&nbsp; &nbsp; &lt;action&gt;&nbsp; : [parameter] action to perform: image/video
&nbsp; &nbsp; &lt;file&gt;&nbsp; &nbsp; : [parameter] file(s) to perform on (1 or more)</pre>

I then made a second bash script (a &#8220;wrapper for the wrapper&#8221;) that makes all the right sizes for one given poster image: 5&#215;5 pixels, 9&#215;9 pixels, etc. 

## My workflow

  * look for (semi-) famous movie posters
  * create all the reduced pixel versions with the script I mentioned above
  * choose 2 photos to use as &#8216;1st hint&#8217; and &#8216;2nd hint&#8217; (most of the times it&#8217;s 5&#215;5 and then 9&#215;9, but for really difficult ones I might start with 9&#215;9 and use a 15&#215;15 afterwards)
  * put these 2 photos and a high resolution picture (150&#215;150 pix) in a [Buffer](https://buffer.com/) queue.
  * the 3 images are published at 11am, 11:30am, 12:30pm and then another batch at 5pm, 5:30pm, 6:30pm (so I need 2 movie posters per day)
  * the pictures are published on [instagram.com/squaredforwork/](https://www.instagram.com/squaredforwork/)
  * they are automatically reposted (a bit later) on [facebook.com/squaredforwork/](https://www.facebook.com/squaredforwork/) via [ifttt](https://ifttt.com).

<div class="wp-block-image">
  <figure class="aligncenter size-large"><img  width="576" height="1024" src="https://blog.forret.com/wp-content/uploads/2020/05/IMG_6018-576x1024.png" alt="" class="wp-image-2194" srcset="https://blog.forret.com/wp-content/uploads/2020/05/IMG_6018-576x1024.png 576w, https://blog.forret.com/wp-content/uploads/2020/05/IMG_6018-169x300.png 169w, https://blog.forret.com/wp-content/uploads/2020/05/IMG_6018-768x1366.png 768w, https://blog.forret.com/wp-content/uploads/2020/05/IMG_6018-864x1536.png 864w, https://blog.forret.com/wp-content/uploads/2020/05/IMG_6018.png 1125w" sizes="(max-width: 576px) 100vw, 576px" /><figcaption>The Instagram Pixel Movie Quiz</figcaption> 
</div>
---
id: 2500
title: Every country in the world in 1 (Unsplash) photo
date: 2021-02-14T11:15:36+01:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2500
permalink: /2021/02/14/every-country-in-the-world-in-1-unsplash-photo/
image: /wp-content/uploads/2021/02/Singapore_ig.jpg
categories:
  - photography
tags:
  - bash
  - cli
  - edit
  - experiment
  - research
  - script
  - shell
  - splashmark 
  - unsplash
---
I wanted to demonstrate the power of my <a href="https://blog.forret.com/2020/10/07/new-script-splashmark-easy-unsplash-image-markup-on-the-command-line/" data-type="post" data-id="2352"><strong>splashmark</strong></a> image markup script and did the following experiment:

  * I got a list of all countries in the world (via [kalinchernev/countries](https://gist.github.com/kalinchernev/486393efcca01623b18d), but I cleaned it up a little)
  * for each country, my script searched for the most popular image in [**Unsplash**](https://unsplash.com/). E.g. for **Belgium**, it is a photo by Alex Vasey of the [city of **Dinant**](https://unsplash.com/photos/3lxrM5yvkcI) (almost 4 million views, 37000 downloads):<figure class="wp-block-image size-large">

[<img loading="lazy" width="1024" height="683" src="https://blog.forret.com/wp-content/uploads/2021/02/alex-vasey-3lxrM5yvkcI-unsplash-1024x683.jpg" alt="" class="wp-image-2501" srcset="https://blog.forret.com/wp-content/uploads/2021/02/alex-vasey-3lxrM5yvkcI-unsplash-1024x683.jpg 1024w, https://blog.forret.com/wp-content/uploads/2021/02/alex-vasey-3lxrM5yvkcI-unsplash-300x200.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/alex-vasey-3lxrM5yvkcI-unsplash-768x512.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/alex-vasey-3lxrM5yvkcI-unsplash-1536x1024.jpg 1536w, https://blog.forret.com/wp-content/uploads/2021/02/alex-vasey-3lxrM5yvkcI-unsplash-2048x1365.jpg 2048w, https://blog.forret.com/wp-content/uploads/2021/02/alex-vasey-3lxrM5yvkcI-unsplash-1600x1067.jpg 1600w" sizes="(max-width: 1024px) 100vw, 1024px" />](https://unsplash.com/photos/3lxrM5yvkcI)<figcaption>Photo by [Alex Vasey](https://unsplash.com/@alexrvasey?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/belgium?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)</figcaption></figure> 

  * The script then used **splashmark** to resize and crop the original size of the image to a square 800&#215;800 size (&#8220;_Instagram style_&#8220;), added the name of the country as a big title, and added the photo attribution info (URL/photographer), _burnt_ into the photo (top and bottom right), as well as embedded in the image meta-data EXIF/IPTC info. This makes that attribution info pop up automatically when you use the photo in Facebook or WordPress, as you will see below.
  * The result is 195 images for 195 countries that should/could be representative for each. The definition of &#8220;most popular&#8221; image for Unsplash seems to be &#8220;most downloads&#8221;. 
  * **The end result is here: [github.com/pforret/splashmark/&#8230;/countries.md](https://github.com/pforret/splashmark/blob/master/examples/countries/countries.md)**

I will give you some highlights:

## Tourism posters

A lot of countries are represented by exactly the image you&#8217;d expect. France: the Eiffel tower, Australia: the Opera house on Sydney, Japan: Mount Fuji &#8230;

<div class="wp-block-jetpack-slideshow aligncenter" data-effect="slide">
  <div class="wp-block-jetpack-slideshow_container swiper-container">
    <ul class="wp-block-jetpack-slideshow_swiper-wrapper swiper-wrapper">
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2502" data-id="2502" src="https://blog.forret.com/wp-content/uploads/2021/02/France_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/France_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/France_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/France_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/France_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/France_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Anthony DELANOIX on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2504" data-id="2504" src="https://blog.forret.com/wp-content/uploads/2021/02/Australia_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Australia_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Australia_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Australia_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Australia_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Australia_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Dan Freeman on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2505" data-id="2505" src="https://blog.forret.com/wp-content/uploads/2021/02/Japan_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Japan_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Japan_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Japan_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Japan_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Japan_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: David Edelstein on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2512" data-id="2512" src="https://blog.forret.com/wp-content/uploads/2021/02/UnitedKingdom_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/UnitedKingdom_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/UnitedKingdom_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/UnitedKingdom_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/UnitedKingdom_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/UnitedKingdom_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Marcin Nowak on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2513" data-id="2513" src="https://blog.forret.com/wp-content/uploads/2021/02/Turkey_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Turkey_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Turkey_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Turkey_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Turkey_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Turkey_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Fatih Yürür on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2514" data-id="2514" src="https://blog.forret.com/wp-content/uploads/2021/02/Singapore_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Singapore_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Singapore_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Singapore_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Singapore_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Singapore_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Swapnil Bapat on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2531" data-id="2531" src="https://blog.forret.com/wp-content/uploads/2021/02/Canada_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Canada_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Canada_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Canada_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Canada_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Canada_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: John Lee on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2532" data-id="2532" src="https://blog.forret.com/wp-content/uploads/2021/02/Liechtenstein_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Liechtenstein_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Liechtenstein_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Liechtenstein_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Liechtenstein_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Liechtenstein_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Oliver Schwendener on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2534" data-id="2534" src="https://blog.forret.com/wp-content/uploads/2021/02/Vietnam_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Vietnam_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Vietnam_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Vietnam_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Vietnam_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Vietnam_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Ammie Ngo on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2540" data-id="2540" src="https://blog.forret.com/wp-content/uploads/2021/02/Netherlands_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Netherlands_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Netherlands_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Netherlands_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Netherlands_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Netherlands_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Adrien Olichon on Unsplash.com</figcaption></figure>
      </li>
    </ul>
    
    <a class="wp-block-jetpack-slideshow_button-prev swiper-button-prev swiper-button-white" role="button"></a><a class="wp-block-jetpack-slideshow_button-next swiper-button-next swiper-button-white" role="button"></a><a aria-label="Pause Slideshow" class="wp-block-jetpack-slideshow_button-pause" role="button"></a>
    
    <div class="wp-block-jetpack-slideshow_pagination swiper-pagination swiper-pagination-white">
    </div>
  </div>
</div>

## People

For some countries, the most popular Unsplash photo is a person.

<div class="wp-block-jetpack-slideshow aligncenter" data-effect="slide">
  <div class="wp-block-jetpack-slideshow_container swiper-container">
    <ul class="wp-block-jetpack-slideshow_swiper-wrapper swiper-wrapper">
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2509" data-id="2509" src="https://blog.forret.com/wp-content/uploads/2021/02/SaudiArabia_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/SaudiArabia_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/SaudiArabia_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/SaudiArabia_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/SaudiArabia_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/SaudiArabia_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: mohammad alashri on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2508" data-id="2508" src="https://blog.forret.com/wp-content/uploads/2021/02/Lesotho_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Lesotho_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Lesotho_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Lesotho_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Lesotho_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Lesotho_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Angelo Moleele on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2507" data-id="2507" src="https://blog.forret.com/wp-content/uploads/2021/02/Eritrea_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Eritrea_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Eritrea_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Eritrea_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Eritrea_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Eritrea_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: mulugeta wolde on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2510" data-id="2510" src="https://blog.forret.com/wp-content/uploads/2021/02/Angola_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Angola_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Angola_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Angola_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Angola_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Angola_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Olhar Angolano on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2511" data-id="2511" src="https://blog.forret.com/wp-content/uploads/2021/02/BosniaHerzegovina_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/BosniaHerzegovina_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/BosniaHerzegovina_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/BosniaHerzegovina_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/BosniaHerzegovina_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/BosniaHerzegovina_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Partha Narasimhan on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2515" data-id="2515" src="https://blog.forret.com/wp-content/uploads/2021/02/Sudan_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Sudan_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Sudan_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Sudan_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Sudan_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Sudan_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Mohammed Eissa on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2516" data-id="2516" src="https://blog.forret.com/wp-content/uploads/2021/02/Malawi_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Malawi_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Malawi_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Malawi_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Malawi_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Malawi_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Wil Amani on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2528" data-id="2528" src="https://blog.forret.com/wp-content/uploads/2021/02/EastTimor_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/EastTimor_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/EastTimor_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/EastTimor_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/EastTimor_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/EastTimor_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: James Tay on Unsplash.com</figcaption></figure>
      </li>
    </ul>
    
    <a class="wp-block-jetpack-slideshow_button-prev swiper-button-prev swiper-button-white" role="button"></a><a class="wp-block-jetpack-slideshow_button-next swiper-button-next swiper-button-white" role="button"></a><a aria-label="Pause Slideshow" class="wp-block-jetpack-slideshow_button-pause" role="button"></a>
    
    <div class="wp-block-jetpack-slideshow_pagination swiper-pagination swiper-pagination-white">
    </div>
  </div>
</div>

## Random technology

Unsplash depends on the content provided by its photographers, and sometimes the most popular photo for a country has little to do with that country and more with the photographer who happened to provide the photo. E.g.: a Sony camera for Afghanistan, a Mi Note phone for Botswana, an old MacBook with a random website for Rwanda.

<div class="wp-block-jetpack-slideshow aligncenter" data-effect="slide">
  <div class="wp-block-jetpack-slideshow_container swiper-container">
    <ul class="wp-block-jetpack-slideshow_swiper-wrapper swiper-wrapper">
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2506" data-id="2506" src="https://blog.forret.com/wp-content/uploads/2021/02/Afghanistan_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Afghanistan_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Afghanistan_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Afghanistan_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Afghanistan_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Afghanistan_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: nasim dadfar on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2517" data-id="2517" src="https://blog.forret.com/wp-content/uploads/2021/02/Azerbaijan_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Azerbaijan_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Azerbaijan_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Azerbaijan_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Azerbaijan_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Azerbaijan_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Emin Sefiyarov on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2518" data-id="2518" src="https://blog.forret.com/wp-content/uploads/2021/02/Botswana_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Botswana_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Botswana_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Botswana_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Botswana_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Botswana_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Toro Tseleng on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2519" data-id="2519" src="https://blog.forret.com/wp-content/uploads/2021/02/Rwanda_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Rwanda_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Rwanda_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Rwanda_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Rwanda_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Rwanda_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: One zone Studio on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2520" data-id="2520" src="https://blog.forret.com/wp-content/uploads/2021/02/Uganda_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Uganda_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Uganda_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Uganda_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Uganda_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Uganda_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: mustapha kasule on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2535" data-id="2535" src="https://blog.forret.com/wp-content/uploads/2021/02/Vanuatu_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Vanuatu_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Vanuatu_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Vanuatu_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Vanuatu_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Vanuatu_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Old Youth on Unsplash.com</figcaption></figure>
      </li>
    </ul>
    
    <a class="wp-block-jetpack-slideshow_button-prev swiper-button-prev swiper-button-white" role="button"></a><a class="wp-block-jetpack-slideshow_button-next swiper-button-next swiper-button-white" role="button"></a><a aria-label="Pause Slideshow" class="wp-block-jetpack-slideshow_button-pause" role="button"></a>
    
    <div class="wp-block-jetpack-slideshow_pagination swiper-pagination swiper-pagination-white">
    </div>
  </div>
</div>

## Random military

I was surprised to find that the most popular Unsplash photo for Hungary was not of the Parliament in Budapest, not of the Balaton lake, but some military parade.

<div class="wp-block-jetpack-slideshow aligncenter" data-effect="slide">
  <div class="wp-block-jetpack-slideshow_container swiper-container">
    <ul class="wp-block-jetpack-slideshow_swiper-wrapper swiper-wrapper">
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2522" data-id="2522" src="https://blog.forret.com/wp-content/uploads/2021/02/Hungary_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Hungary_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Hungary_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Hungary_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Hungary_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Hungary_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Eugene Zhyvchik on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2523" data-id="2523" src="https://blog.forret.com/wp-content/uploads/2021/02/SouthSudan_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/SouthSudan_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/SouthSudan_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/SouthSudan_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/SouthSudan_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/SouthSudan_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: chetan sharma on Unsplash.com</figcaption></figure>
      </li>
    </ul>
    
    <a class="wp-block-jetpack-slideshow_button-prev swiper-button-prev swiper-button-white" role="button"></a><a class="wp-block-jetpack-slideshow_button-next swiper-button-next swiper-button-white" role="button"></a><a aria-label="Pause Slideshow" class="wp-block-jetpack-slideshow_button-pause" role="button"></a>
    
    <div class="wp-block-jetpack-slideshow_pagination swiper-pagination swiper-pagination-white">
    </div>
  </div>
</div>

## Random nature

Nature can be beautiful, but sometime sit can also be very generic. Some countries have as most popular Unsplash photo a random piece of nature.

<div class="wp-block-jetpack-slideshow aligncenter" data-effect="slide">
  <div class="wp-block-jetpack-slideshow_container swiper-container">
    <ul class="wp-block-jetpack-slideshow_swiper-wrapper swiper-wrapper">
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2524" data-id="2524" src="https://blog.forret.com/wp-content/uploads/2021/02/Bhutan_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Bhutan_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Bhutan_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Bhutan_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Bhutan_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Bhutan_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Pema Gyamtsho on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2525" data-id="2525" src="https://blog.forret.com/wp-content/uploads/2021/02/Brunei_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Brunei_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Brunei_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Brunei_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Brunei_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Brunei_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Daniele Franchi on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2526" data-id="2526" src="https://blog.forret.com/wp-content/uploads/2021/02/Djibouti_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Djibouti_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Djibouti_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Djibouti_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Djibouti_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Djibouti_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Lesly Derksen on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2527" data-id="2527" src="https://blog.forret.com/wp-content/uploads/2021/02/ElSalvador_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/ElSalvador_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/ElSalvador_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/ElSalvador_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/ElSalvador_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/ElSalvador_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: L&#8217;odyssée Belle on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2529" data-id="2529" src="https://blog.forret.com/wp-content/uploads/2021/02/Gambia_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Gambia_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Gambia_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Gambia_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Gambia_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Gambia_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Bekky Bekks on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2530" data-id="2530" src="https://blog.forret.com/wp-content/uploads/2021/02/Honduras_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Honduras_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Honduras_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Honduras_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Honduras_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Honduras_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Héctor Emilio Gonzalez on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2533" data-id="2533" src="https://blog.forret.com/wp-content/uploads/2021/02/Libya_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Libya_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Libya_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Libya_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Libya_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Libya_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Mohamed Sadiq on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2538" data-id="2538" src="https://blog.forret.com/wp-content/uploads/2021/02/Suriname_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Suriname_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Suriname_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Suriname_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Suriname_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Suriname_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: D.H.F edits on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2539" data-id="2539" src="https://blog.forret.com/wp-content/uploads/2021/02/Serbia_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Serbia_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Serbia_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Serbia_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Serbia_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Serbia_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: Filip Zrnzević on Unsplash.com</figcaption></figure>
      </li>
    </ul>
    
    <a class="wp-block-jetpack-slideshow_button-prev swiper-button-prev swiper-button-white" role="button"></a><a class="wp-block-jetpack-slideshow_button-next swiper-button-next swiper-button-white" role="button"></a><a aria-label="Pause Slideshow" class="wp-block-jetpack-slideshow_button-pause" role="button"></a>
    
    <div class="wp-block-jetpack-slideshow_pagination swiper-pagination swiper-pagination-white">
    </div>
  </div>
</div>

## View from above

It would be hard to choose a representative picture for a country like the USA, and the Unsplash community seems to have chosen a view from above: a picture from NASA. 

<div class="wp-block-jetpack-slideshow aligncenter" data-effect="slide">
  <div class="wp-block-jetpack-slideshow_container swiper-container">
    <ul class="wp-block-jetpack-slideshow_swiper-wrapper swiper-wrapper">
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2536" data-id="2536" src="https://blog.forret.com/wp-content/uploads/2021/02/UnitedStates_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/UnitedStates_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/UnitedStates_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/UnitedStates_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/UnitedStates_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/UnitedStates_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: NASA on Unsplash.com</figcaption></figure>
      </li>
      <li class="wp-block-jetpack-slideshow_slide swiper-slide">
        <figure><img loading="lazy" width="800" height="800" alt="" class="wp-block-jetpack-slideshow_image wp-image-2537" data-id="2537" src="https://blog.forret.com/wp-content/uploads/2021/02/Niger_ig.jpg" srcset="https://blog.forret.com/wp-content/uploads/2021/02/Niger_ig.jpg 800w, https://blog.forret.com/wp-content/uploads/2021/02/Niger_ig-300x300.jpg 300w, https://blog.forret.com/wp-content/uploads/2021/02/Niger_ig-150x150.jpg 150w, https://blog.forret.com/wp-content/uploads/2021/02/Niger_ig-768x768.jpg 768w, https://blog.forret.com/wp-content/uploads/2021/02/Niger_ig-50x50.jpg 50w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption class="wp-block-jetpack-slideshow_caption gallery-caption">Photo: USGS on Unsplash.com</figcaption></figure>
      </li>
    </ul>
    
    <a class="wp-block-jetpack-slideshow_button-prev swiper-button-prev swiper-button-white" role="button"></a><a class="wp-block-jetpack-slideshow_button-next swiper-button-next swiper-button-white" role="button"></a><a aria-label="Pause Slideshow" class="wp-block-jetpack-slideshow_button-pause" role="button"></a>
    
    <div class="wp-block-jetpack-slideshow_pagination swiper-pagination swiper-pagination-white">
    </div>
  </div>
</div>

## Conclusion

I enjoyed this experiment and will be doing more in the future. In the meantime, if you want to easily work with photos (your own or those from Unsplash) on the command-line, check out [splashmark](https://github.com/pforret/splashmark) on Github!
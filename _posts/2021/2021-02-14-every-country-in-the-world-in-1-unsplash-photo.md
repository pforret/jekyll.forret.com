---
id: 2500
title: Every country in the world in 1 (Unsplash) photo
date: 2021-02-14T11:15:36+01:00
author: Peter
layout: post
permalink: /2021/02/14/every-country-in-the-world-in-1-unsplash-photo/
image: /wp-content/uploads/2021/02/Singapore_ig-768x768.jpg
categories:
  - photography
tags:
  - bash
  - cli
  - experiment
  - research
  - script
  - shell
  - splashmark 
  - unsplash
---
I wanted to demonstrate the power of my [splashmark](/2020/10/07/new-script-splashmark-easy-unsplash-image-markup-on-the-command-line/) image markup script and did the following experiment:

  * I got a list of all countries in the world (via [kalinchernev/countries](https://gist.github.com/kalinchernev/486393efcca01623b18d), but I cleaned it up a little)
  * for each country, my script searched for the most popular image in [**Unsplash**](https://unsplash.com/). E.g. for **Belgium**, it is a photo by Alex Vasey of the [city of **Dinant**](https://unsplash.com/photos/3lxrM5yvkcI) (almost 4 million views, 37000 downloads):<figure class="wp-block-image size-large">

{% include img.html
    src="https://images.unsplash.com/photo-1491557345352-5929e343eb89?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=720&q=80"
    href="https://unsplash.com/photos/3lxrM5yvkcI"
    description="Photo by Alex Vasey on Unsplash" %}

  * The script then used **splashmark** to resize and crop the original size of the image to a square 800&#215;800 size (&#8220;_Instagram style_&#8220;), added the name of the country as a big title, and added the photo attribution info (URL/photographer), _burnt_ into the photo (top and bottom right), as well as embedded in the image meta-data EXIF/IPTC info. This makes that attribution info pop up automatically when you use the photo in Facebook or WordPress, as you will see below.
  * The result is 195 images for 195 countries that should/could be representative for each. The definition of &#8220;most popular&#8221; image for Unsplash seems to be &#8220;most downloads&#8221;. 
  * **The end result is here: [splashing.forret.com/topic/country](https://splashing.forret.com/topic/country/index/)**

I will give you some highlights:

## Tourism posters

A lot of countries are represented by exactly the image you'd expect. France: the Eiffel tower, Australia: the Opera house on Sydney, Japan: Mount Fuji &#8230;

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/France_ig.jpg" >
Photo: Anthony DELANOIX on Unsplash.com  

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Australia_ig.jpg" >
Photo: Dan Freeman on Unsplash.com  

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Japan_ig.jpg" >
Photo: David Edelstein on Unsplash.com  

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/UnitedKingdom_ig.jpg" >
Photo: Marcin Nowak on Unsplash.com  

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Turkey_ig.jpg" >
Photo: Fatih Yürür on Unsplash.com  

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Singapore_ig.jpg" >
Photo: Swapnil Bapat on Unsplash.com  

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Canada_ig.jpg" >
Photo: John Lee on Unsplash.com  

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Liechtenstein_ig.jpg" >
Photo: Oliver Schwendener on Unsplash.com  

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Vietnam_ig.jpg" >
Photo: Ammie Ngo on Unsplash.com  

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Netherlands_ig.jpg" >
Photo: Adrien Olichon on Unsplash.com  

## People

For some countries, the most popular Unsplash photo is a person.

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/SaudiArabia_ig.jpg" >
Photo: mohammad alashri on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Lesotho_ig.jpg" >
Photo: Angelo Moleele on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Eritrea_ig.jpg" >
Photo: mulugeta wolde on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Angola_ig.jpg" >
Photo: Olhar Angolano on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/BosniaHerzegovina_ig.jpg" >
Photo: Partha Narasimhan on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Sudan_ig.jpg" >
Photo: Mohammed Eissa on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Malawi_ig.jpg" >
Photo: Wil Amani on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/EastTimor_ig.jpg" >
Photo: James Tay on Unsplash.com

## Random technology

Unsplash depends on the content provided by its photographers, and sometimes the most popular photo for a country has little to do with that country and more with the photographer who happened to provide the photo. E.g.: a Sony camera for Afghanistan, a Mi Note phone for Botswana, an old MacBook with a random website for Rwanda.

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Afghanistan_ig.jpg" >
Photo: nasim dadfar on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Azerbaijan_ig.jpg" >
Photo: Emin Sefiyarov on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Botswana_ig.jpg" >
Photo: Toro Tseleng on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Uganda_ig.jpg" >
Photo: mustapha kasule on Unsplash.com  

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Rwanda_ig.jpg" >
Photo: One zone Studio on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Vanuatu_ig.jpg" >
Photo: Old Youth on Unsplash.com

## Random military

I was surprised to find that the most popular Unsplash photo for Hungary was not of the Parliament in Budapest, not of the Balaton lake, but some military parade.

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Hungary_ig.jpg" >
Photo: Eugene Zhyvchik on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/SouthSudan_ig.jpg" >
Photo: chetan sharma on Unsplash.com


## Random nature

Nature can be beautiful, but sometime sit can also be very generic. Some countries have as most popular Unsplash photo a random piece of nature.

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Bhutan_ig.jpg" >
Photo: Pema Gyamtsho on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Brunei_ig.jpg" >
Photo: Daniele Franchi on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Djibouti_ig.jpg" >
Photo: Lesly Derksen on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/ElSalvador_ig.jpg" >
Photo: L'odyssée Belle on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Gambia_ig.jpg" >
Photo: Bekky Bekks on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Honduras_ig.jpg" >
Photo: Héctor Emilio Gonzalez on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Libya_ig.jpg" >
Photo: Mohamed Sadiq on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Suriname_ig.jpg" >
Photo: D.H.F edits on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Serbia_ig.jpg" >
Photo: Filip Zrnzević on Unsplash.com


## View from above

It would be hard to choose a representative picture for a country like the USA, and the Unsplash community seems to have chosen a view from above: a picture from NASA.
<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/UnitedStates_ig.jpg" >
Photo: NASA on Unsplash.com

<img  alt=""   src="https://blog.forret.com/wp-content/uploads/2021/02/Niger_ig.jpg" >
Photo: USGS on Unsplash.com


## Conclusion

I enjoyed this experiment and will be doing more in the future. In the meantime, if you want to easily work with photos (your own or those from Unsplash) on the command-line, check out [splashmark](https://github.com/pforret/splashmark) on Github!

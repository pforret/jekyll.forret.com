---
title: BMI is not perfect
layout: post
permalink: /2006/03/14/bmi-is-not-perfect/
image: /wp-content/uploads/2008/03/bmi.jpg
categories:
    - science 
    
tags:
    - society
    - TV
    - weight
    - health
    - women
    - modeling
    
---
I've written a post on the [BMI (Body Mass Index) of the candidates for Germany&#8217;s next Top Model](/2006/02/21/the-next-german-top-model-will-be-thin/) and I have been mentally bugged ever since. Not by images of thin girls, but by the formula of BMI: `weight(kg) / length(m) ^ 2 = kg/m²`. 

**Why the _square_ of the length?** 

{% include img.html
src="/wp-content/uploads/2008/03/bmi.jpg"
description="BMI measurement"
%}

If the formula were `weight/length` you can attach a mental image to that: if you took horizontal slices of the body, how much would a 1m high slice weigh? For `weight/length³` you can have an image too: kg/m³ or density of the body. 

But BMI is kg/m² or something like &#8216;pressure&#8217; (multiply it with gravity 9.81 m/s² and you get the [unit of pressure](http://en.wikipedia.org/wiki/Pressure): Newton/m² or &#8216;Pascal&#8217;).  
<!--more-->

  
So I started playing with an estimate function for the weight of a person: I modeled a body as a rectangular 3D box.  
[<img  src="https://static.flickr.com/38/112615379_ebcbc07eb2.jpg" height="500" style="float: right" alt="leonardo" />](http://www.flickr.com/photos/pforret/112615379/ "Photo Sharing")

  * The length L is the person&#8217;s length. 
  * The &#8216;equivalent width&#8217; EW of a body is dependent on the average width (e.g. ear-to-ear, shoulder-to-shoulder, hip-to-hip). 
  * The &#8216;equivalent depth&#8217; ED of a body is dependent on the average depth (e.g. tip of the nose-to-back of the head, chest-to-back, tip of the toes to heel). 
  * The definition of EW and ED is such that L x EW x EW = volume of the body = the actual volume of the body. 
  * One could calculate that for an &#8216;ideal&#8217; adult body, e.g. the dimensions of the guy with the arms and legs spread that Leonardo Da Vinci created, EW will be a fraction of the total length, EW = SW x L (SW = scaling of width). One could argue that this SW is dependent on gender, age and race. Let&#8217;s ignore that for now. 
  * Every real person will be less or more wide by a ratio &alpha; (if &alpha; is < 100% you're thinner, if it is > 100% you&#8217;re wider). Each person will also be less or more &#8216;deep&#8217; by a ratio &beta;. (if &beta; < 100% you're thinner, if &beta; > 100% you&#8217;re fatter). 
  * The body has a certain average density (kg/m³), but this will depend on the composition of the body: muscles have a density DM of 1080 kg/m³, fat has DF of only 700-900kg/m³ (less than water: it floats!), bones are more like 2000kg/m³ and lungs will have a totally different density whether they are filled with air or not. I only take into account the % body fat. Let&#8217;s call that &#8230; &lambda;! 


One can expect an obese person to have: a high &alpha; (broad hips, thick legs), a high &beta; (fat belly, 4 chins) and a high &lambda;. Since fat weighs less than muscle, one might argue that a high body fat % makes you lighter, but let&#8217;s keep in mind that this is mostly excess fat: you still need a minimum of muscles in order to function.

The formula is then:  
> Weight (kg) = L x (&alpha; x EW) x (&beta; x ED) x (&lambda; x DF + (1-&lambda;) x DM) 

or  

> Weight (kg) = L x (&alpha; x SW x L) x (&beta; x SD x L) x (&lambda; x DF + (1-&lambda;) x DM)

So the BMI is something like:  
> BMI(kg/m²) = L x (&alpha; x SW) x (&beta; x SD) x (&lambda; x DF + (1-&lambda;) x DM)

which still contains a factor L.

**Geometric approach**  
I discovered in a [mailing list dating back to 1996](http://isb.ri.ccf.org/biomch-l/archives/biomch-l-1996-05/00024.html) that I was not the first one to ask this question. It appears that the L² was chosen for empirical reasons: the main puropose of the BMI was to detect risk for obesity and anorexia, and the square happened to match best with clinical statistics.  
Dividing the weight by the more intuitive cube of the length L³ can be called the geometric approach. In the formula this gives:  
GEO(kg/m³) = ( SW x SD ) x (&alpha; x &beta;) x (&lambda; x DF + (1 - &lambda;) x DM)  
with SW and SD being constants (be it maybe for a particular gender, race or age). This makes total sense.

**Allometric approach**  
A [Michael Raymond Pierrynowski](http://isb.ri.ccf.org/biomch-l/archives/biomch-l-1996-05/00024.html) actually argues that to have a more meaningful index, you need to divide by L ^4. This compensates for allometric effects: larger persons/mammals need stronger bones to support all that mass:

> One way to observe that geometric similarity is NOT correct is to note that some animals are not scaled up versions of others (i.e. the lion and the cat). The lion has much thicker legs than the cat to support its trunk. These larger legs must have extra mass, therefore doubling the size of the cat does not 8 fold increase the mass of the lion but increases the mass by 16 times.

I took the data I had of the candidates for the Top Model show, and also added statistics for [US baseball players](http://generous.net/health/newbmi.shtml) (the team from the LA Lakers), who are at the other end of the spectrum. A common criticism on BMI is that it often qualifies athletes of heavy sports like baseball as potentially obese, whil they rather have way more muscles than average people and are often very healthy individuals.  
I&#8217;ve put 3 lines on the graph for each system: a bottom line, under which you are considered rather light, an average line, and a top line, above which you are &#8216;too heavy&#8217;. You can see that the allometric curves are more lenient on the baseball players. Almost all models as well as all athletes fall within the norm.  

{% include img.html
src="https://live.staticflickr.com/56/112475105_f79afd416c_c.jpg"
description="Geometric vs Allometric"
%}

Conclusion: BMI is just &#8216;a&#8217; way of measuring relative weight, maybe not the best. The usage aof the square of the length is contra-intuitive, but seems to give acceptable results.

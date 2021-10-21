---
id: 343
title: Estimating real-time traffic speed
date: 2006-06-07T16:26:07+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/06/estimating-real-time-traffic-speed/
permalink: /2006/06/07/estimating-real-time-traffic-speed/
image: /wp-content/uploads/2018/11/fig-21-11-2018_14-11-26-600x300.jpg
categories:
  - Belgium
  - mobile
  - smartphones
---
_&#8212; This is a post from 2006. Back then, there was no Google Maps, no Waze, no iPhone, no mobile data &#8212;_

I was reading a magazine on affordable GPS systems and one of the features they stressed a lot was the support for TMC ([Traffic Message Channel](http://en.wikipedia.org/wiki/Traffic_Message_Channel)). This is the reception of real-time traffic info that is digitally transmitted alongside an FM channel. So I wondered where that data came from: how sophisticated the traffic detection schemes were.

<!--more-->

### Current traffic inspection

The information for Flanders seems to come from Verkeerscentrum Antwerpen. They claim to use ([NL](http://www.verkeerscentrum.be/verkeersinfo/vc_wie_operationeelbeheer_datainwinnen)) 3 sources of information:

**Loops**  
Loops in the roads can count # cars/hour and/or speed of the cars. The loop itself is lo-tech, but if one wants to collect all that data in real-time, some kind of data transmission has to be installed, which is expensive to support. So this only makes sense on highways and busy roads.

**Cameras**  
Cameras can be used to monitor traffic. The Verkeerscentrum uses some A.I.D. (automated incident detection) cameras to spot irregularities without human intervention, but most of the cameras are probably manned. Moreover, they are used to check for accidents and traffic jams, not to estimate speed at every location. But there is [research](http://www.wsdot.wa.gov/Research/Reports/500/527.1.htm) for doing just that.

**Human feedback**  
Obviously the police has good info on traffic jams, certainly those caused by accidents. But every traffic participant can give feedback on current traffic through systems like [Touring Mobilis](http://www.touring.be/nl/dagelijks-leven/onderweg-leren-rijden/verkeersinfo/index.asp).

### Alternatives

But there are other methods possible:  
**Highway toll**  
This would only work in countries like France, where all highways have toll booths when you enter and leave. When you take the travel times of those that probably haven&#8217;t stopped in between, you can get a rough estimation of the traffic speed. But the information is strongly contaminated and had an intrinsic delay (if an accident happens and blocks all traffic 45 minutes from the next exit, it might take up to 1 hour to detect this with some confidence).

**Speed cameras**  
What pleasure that would be, to know you just avoided a traffic jam because of a speed camera that is detecting an average speed of 2 km/h and is obviously not making any money. The only issue is that it is not so interesting for the police to put these expensive (manned!) mobile devices at places where there is a risk for difficult traffic. The cameras are not there for information, they&#8217;re there for income.

**GPS Data**  
Lots of people have a GPS in their car these days. If all that position data could be aggregated in real-time, it would be the best possible speed estimation/traffic jam detector imagineable. But most of those systems are stand-alone and utterly offline. Maybe if 3G data-transmission becomes affordable, we could imagine the GPS sending a position/speed back to a central service every hour. Maybe some grassroots project: you get the aggregated data only if you send your own. Because someone will have to pay for that transmission!

**GSM Data**  
Mobile phone companies can keep track of the approximate position of their subscribers as they jump from antenna to antenna. This info is sometimes used by the police to track down vilains, but could also be aggregated into speed estimations. The advantage of this is that everything is there: we have penetration of mobile phones of almost 100%, nothing has to be installed in each car, at each road or each antenna. We just need data analysis at the mobile operator.

Of course someone has to pay for this extra work. It might be the end-user, who subscribes for info via SMS (something stubru already [offers for the Touring Mobilis data](http://www.stubru.be/stubru_master/stubru/stubrunieuws/verkeer_via_sms/index.html)), via email or RSS, it might me an informayio provider who delivers the data through TMC or some other wireless system (GSM? [WiMax](http://en.wikipedia.org/wiki/WiMax)?) to the GPS devices. Actually, this could be a killer app for mobile operators: it&#8217;s their data (so it&#8217;s cheap to get at), they have the delivery channel (GPRS, 3G, SMS) and they have the billing system. Why, they could even sell GPS systems (or GPS-capable smartphones) at a discount, because they win it back with the attached data plan. Vodafone (Germany) is already [experimenting with it](http://www.smithinst.ac.uk/Projects/ESGI49/ESGI49-Vodafone).

Only some years away: your [TomTom](http://www.tomtom.com/news/media.php) telling you: &#8220;_Traffic jam on the E40 only just dissolving, estimated travel time via Gent: 3h30, estimated travel time via N49: 2h45. Wanna stop and see a movie or start a conference call?_&#8220;
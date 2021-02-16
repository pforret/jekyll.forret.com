---
id: 132
title: Tricks to fight right-click image copying
date: 2005-02-26T11:31:00+01:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/02/26/tricks-to-fight-right-click-image-copying/
permalink: /2005/02/26/tricks-to-fight-right-click-image-copying/
categories:
  - internet
  - webdev
---
![](http://www.pixagogo.com/S5uRuA-TyxopgHO98HAn!ET!A3jeWTJKCp!EtHLDV786CiHHHuGrgF5Gwr9XM!K8CKB62mq!0Su4O0rWL6ufbi4sFVYSDw7Nghr1-k5LLRo-8_/Gabriela_2756.JPG)  
An image like the one on the right (using the standard `<img>` tag) can easily be copied by any visitor: right-click the image and select &#8220;Save Picture As&#8221; or &#8220;Copy Image&#8221;. In cases where the author wants to protect his images from copying, there are a couple of ways to make the copying harder. Not make it impossible, just less trivial.  
The fact that you can get the image by checking the HTML (&#8220;View Source&#8221;) is something that is difficult to avoid, and in any case, the vistor could always take a screen shot and trim the result to have only the image. So I&#8217;ll just focus on disabling the &#8220;Save/Copy Image&#8221; functionality.

Remark: there are ways to make all Right-Click functionality inaccessible. I think this is a bad practice (for the reasons, check [jeffdav](http://blogs.msdn.com/jeffdav/archive/2004/05/06/127443.aspx)), so I will not cover these methods.

**Trick #1: Table Background**

<div>
  <table cellpadding="0" STYLE="background-image: url(http://www.pixagogo.com/S5uRuA-TyxopgHO98HAn!ET!A3jeWTJKCp!EtHLDV786CiHHHuGrgF5Gwr9XM!K8CKB62mq!0Su4O0rWL6ufbi4sFVYSDw7Nghr1-k5LLRo-8_/Gabriela_2756.JPG)" width="130" height="190" >
    <tr>
      <td>
        <img loading="lazy" width="130" height="190" src="http://www.pixagogo.com/brand/pixagogo/images/spacer.gif" />
      </td>
    </tr>
  </table>
</div>

You use the image as the table background: `<TABLE STYLE="background-image: url(...)">`. If you do just that, the &#8220;Save Picture As&#8221; option goes away, but a new &#8220;Save Background&#8221; is created. So you cover up the image by placing a transparent gif before it, in the `<TD>` cell. 

The end effect is that is looks like you can copy or save the picture, but you will be saving the GIF file. 

Remark: you have to explicitly specify the dimensions of the table, it will not autoscale to the size of the image.

**  
Trick #2: Div Background**

<div>
  <div>
    <img src="http://www.pixagogo.com/S5uRuA-TyxopgHO98HAn!ET!A3jeWTJKCp!EtHLDV786CiHHHuGrgF5Gwr9XM!K8CKB62mq!0Su4O0rWL6ufbi4sFVYSDw7Nghr1-k5LLRo-8_/Gabriela_2756.JPG" />
  </div>
</div>

You can do basically the same thing with a `<div>`: you use the picture as the background image, and you put another <DIV> above it with the transparent GIF. 

You would again need to specify the exact dimensions of the whole thing, but wait, there&#8217;s another trick: put the image in an `<IMG>` tag inside the second DIV and give it a `visibility: hidden`. This way it takes up the size of the picture without actually showing up, or appearing right-clickable.

**  
Trick #3: Flash image**

<div>
</div>

The third is a no-brainer: using a Flash object. Almost 100% of browsers have Flash built-in, so compatibility problems are limited. For the exact `OBJECT` and `EMBED`, check the HTML source of this text or the [Macromedia site](http://www.macromedia.com/cfusion/knowledgebase/index.cfm?id=tn_4150).  
Here also, you need to give the right dimensions to the Flash object, otherwise it will take a default (square) size.

Remark: using the `menu="false"` option ensures that the only options showing up on a right-click are: &#8220;Settings&#8230;&#8221; (disabled) and &#8220;About Macromedia Flash Player &#8230;&#8221;.

**  
Conclusion**  
It is possible to use some simple tricks to make right-click copy or save functionality impossible. I wouldn&#8217;t go as far as to call this &#8216;copyright protection&#8217;, but it helps. At least no one can claim they just copied it because they thought it would be OK.  
I used the last option (Flash) on my [Tango Steps site](http://tango.forret.com/tango/steps/?figure=Basico), to protect the images I use from my teachers, [Marisa and Oliver](http://www.marisayoliver.com).

Technorati: <a href="http://technorati.com/tag/css" rel="tag">css</a> &#8211; <a href="http://technorati.com/tag/copyright" rel="tag">copyright</a>
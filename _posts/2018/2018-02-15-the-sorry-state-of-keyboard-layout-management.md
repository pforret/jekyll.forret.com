---
title: The sorry state of keyboard layout management
layout: post
permalink: /2018/02/15/the-sorry-state-of-keyboard-layout-management/
image: /wp-content/uploads/2018/02/rawpixel-com-315193sm-600x419.jpg
categories:
  - Belgium
  - hardware
tags:
  - azerty
  - Belgium
  - france
  - internationalisation
  - keyboard
  - qwerty
---
How is it possible that today, in 2018, it is still up to the end-user to detect/guess what the layout of the computer keyboard is he has in front of him/her? In any Belgian office with more than 10 computers, you might encounter a mix of [&#8220;Belgian French&#8221;, &#8220;Belgian ISO&#8221;, &#8220;Belgian Period&#8221;, &#8220;French French&#8221;](https://en.wikipedia.org/wiki/AZERTY#Differences_between_the_Belgian_and_French_layouts_of_the_AZERTY_keyboard) keyboards. They're all AZERTY keyboards, but they mix up characters like the &#8220;@&#8221;, the &#8220;.&#8221; or the &#8220;,&#8221;. No one, except for the odd OCD sysops guy, knows what the differences exactly are. You only know that, if you pick the wrong one, you're going to lose time to type email addresses, or god forbid, passwords with non-alphabetical characters. Linux has some &#8216;pseudo-magical' system with &#8220;now type the W key&#8221; that can +- detect what the keyboard is, but MacOS or Windows?

[<img  class="alignnone wp-image-1611 size-full" src="/wp-content/uploads/2018/02/linux.jpg" alt="" width="575" height="320" srcset="https://blog.forret.com/wp-content/uploads/2018/02/linux.jpg 575w, https://blog.forret.com/wp-content/uploads/2018/02/linux-300x167.jpg 300w" sizes="(max-width: 575px) 100vw, 575px" />](/wp-content/uploads/2018/02/linux.jpg)

How is it that no one has come up with &#8220;_obviously each keyboard is manufactured with a specific layout in mind, so let's just put a unique identifier of the layout inside, so the moment the OS detects the keyboard is detected (USB/Bluetooth/&#8230;), the OS knows what layout it is and uses the correct settings_&#8220;? Also, &#8220;_the laptop keyboard is Belgian French, the external keyboard is French French, but since the OS is aware of it, every key you push on any keyboard, generates the correct character_&#8220;.

Is it because it is mostly a French/Belgian problem, so who cares?


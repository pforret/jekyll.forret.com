---
id: 1388
title: Reset your OnePlus One to factory settings
date: 2015-05-21T16:22:28+02:00
author: Peter
layout: post
guid: /?p=1388
permalink: /2015/05/21/reset-your-oneplus-one-to-factory-settings/
categories:
  - mobile
  - smartphones
tags:
  - android
  - oneplus
  - smartphone
---
About half a year ago I switched from an iPhone to an Android smartphone: the [OnePlus One](https://oneplus.net/). In the beginning it was splendid and super fast and everything. But recently it has become flaky. I suspect the apps &#8216;Swiftkey' and &#8216;Atooma' have something to do with it. Swiftkey seemed to drain the battery really fast (5hrs of battery life max &#8211; charging requyired 3 or more times a day), and when I started testing Atooma instead of Tasker (for automation), a lot of programs started crashing, including the essential &#8216;Messages' and &#8216;Dialer' applications. Even after uninstalling a bunch of other applications, I still couldn't pick up phone calls half of the time. And I got the error message &#8216;_Unfortunately, Google Play Services has stopped_&#8216; once every 10 to 30 minutes. So I decided, I need to reinstall Android on my phone!

<!--more-->

A reinstall of iOS on an iPhone is simple: plug it into a Mac/PC, wait for iTunes to start up, click on your iPhone device, select &#8216;Restore' in the Summary Panel. Restoring an Android phone to factory settings is quite the opposite. Let me show you what worked for me (on a Windows PC):

  * install [Java SE Development Kit 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html) (`jdk-8u45-windows-x64.exe` &#8211; 184MB)
  * <pre>C:&gt;<strong>java.exe -version</strong>
java version "1.8.0_45"
Java(TM) SE Runtime Environment (build 1.8.0_45-b15)
Java HotSpot(TM) 64-Bit Server VM (build 25.45-b02, mixed mode)</pre>

  * Install [Android SDK Tools](http://developer.android.com/sdk/index.html#Other) (the `adb` and `fastboot` tools you will need later, will be in a subfolder `platform-tools`. In my case: `%USERPROFILE%AppDataLocalAndroidandroid-sdkplatform-tools`)
  * install [Universal ADB driver](http://www.koushikdutta.com/post/universal-adb-driver) for Windows
  * download the latest [twrp _bacon_ version](https://dl.twrp.me/bacon/) (bacon = Android for OnePlus &#8211; in my case: `twrp-2.8.6.1-bacon.img)`, save it as twrp.img in the same platform-tools folder as above)
  * enable [Developer mode and USB Debugging](https://twrp.me/devices/oneplusone.html): tap 7 times on build number, go back and enable Android Debugging (over USB).
  * conect your OnePlus over UWB to your PC, you will get a pop-up saying &#8216;Do You trust this PC for debugging?' &#8211; say yes
  * test adb connection: open a CMD window, cd to the folder that contains your adb.exe tool and type 
    <pre>C:&gt;<strong>adb devices -l</strong>
List of devices attached
e1e5e51 device product:bacon model:A0001 device:A0001</pre>

  * reboot your phone in fastboot mode: **`adb reboot bootloader`**
  * now unlock your phone: **`fastboot oem unlock`**
  * install the twrp image you saved earlier: **`fastboot flash recovery twrp.img`**
  * reboot the phone: **`fastboot reboot`**
  * voila!

&#8212;&#8211; EDIT

Well apparently I missed the [fast reset instructions](https://oneplus.net/support/answer/how-do-i-perform-a-full-factory-reset):

<div class="faq_view">
  <div class="faq_conent">
    <blockquote>
      <p>
        If you're having trouble with your OnePlus One that may be related to software, try performing a full factory reset.
      </p>
      
      <ol>
        <li>
          Back up all your important files and information, as the process may erase all data.
        </li>
        <li>
          Shut down the phone, and turn it back on while holding the Volume Down button until you feel it vibrate.
        </li>
        <li>
          Once in Simple Recovery, select &#8220;wipe cache partition&#8221; and swipe to the right or press the power button to select it. Continue once you get the &#8220;Cache wipe complete&#8221; message.
        </li>
        <li>
          Select &#8220;wipe data / factory reset&#8221; and confirm to fully reinitialize your ROM.
        </li>
        <li>
          Optional: select &#8220;wipe media&#8221; to clear all directories that may contain your photos, messages, music and other personal files.
        </li>
      </ol>
    </blockquote>
  </div>
</div>

&nbsp;
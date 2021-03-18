---
title: My disaster upgrade to LastPass Premium
layout: post
image: /wp-content/uploads/2021/03/lastpass.jpg
categories:
    - security
tags:
    - LastPass
    - password
    - support
    - upgrade
    - freemium
    - premium
---

LastPass has started pushing its free users towards a paid premium subscription. The way they do this is by only allowing the free version for 1 platform, e.g. only your laptop or only your mobile phone. This was announced by LastPass/LogMeIn  [on their blog](https://blog.LastPass.com/2021/02/changes-to-LastPass-free/) [last February](https://news.ycombinator.com/item?id=26153845), which caused [somewhat of a ](https://arstechnica.com/gadgets/2021/03/demand-for-fee-to-use-password-app-LastPass-sparks-backlash/) [backlash](https://news.ycombinator.com/item?id=26387397).

{% include img.html
src="/wp-content/uploads/2021/03/lastpass.jpg"
description="LastPass upgrade experience"
%}

I've been a happy LastPass (free) user for the last 7-8 years, using it simultaneously on all my mobile and desktop/laptop devices. This means that my LastPass account contains ALL MY PASSWORDS AND CREDIT CARDS. The service it delivers is valuable, and that's why I decided: when the day comes, I will pay for it. That day was today (April 18). My mobile LastPass app finally told me lose functionality or upgrade to the premium version (3$/month). I selected 'upgrade'. What followed was a complete _sh*t show_ that could have been a disaster. 

## My upgrade experience

The payment experience itself was flawless (thanks to Apple Pay): 2 clicks, and it was done. After the payment went through, I am sent back to the LastPass app, and my LastPass account/wallet is **completely empty**. All my passwords are gone. I double-check: I am still logged in to the same account, and it is empty.

{% include img.html
src="/wp-content/uploads/2021/03/lastpass_empty.png"
description="LastPass with empty wallet"
%}

I choke on my coffee, sprint to my laptop and switch off its Wi-Fi to prevent it from syncing. Upon inspection, all password information was still present locally. I initiate an (encrypted) export, in the hope that it does not require an online connection (no, it doesn't). The export goes through, and I save an encrypted CSV to my disk. Calamity averted.

If I had not been close to a laptop/desktop machine with my LastPass account installed, it would have been **a disaster**, because 1) I need my mobile password manager multiple times a day and 2) I would not have been able to take a backup . Imagine being abroad (that was a thing before 2020) and losing all your passwords.

After the emergency backup, I started investigating further. I can still log in on the LastPass website, and **my passwords are still there**. It seems to be an app sync problem. I log out of the app, and log in again: still the same, no passwords.

## After disaster upgrade, disaster support

{% include img.html
src="/wp-content/uploads/2021/03/lastpass_premium.png"
description="LastPass support: priority tech support"
%}

_Surely the LastPass 'priority tech support' for paid customers can help me out?_ (Spoiler: **there is no priority tech support**. It's the same support site for everyone.)


Let me introduce you to [LastPass support](https://support.logmeininc.com/LastPass): it may tell you "Type your question here, or browse topics below to view answers or _reach a support agent_.", but it actually means 

> "Type your question here, and get an answer to another -hopefully slightly related- question, or browse topics below  **or ... no, that's it, those are the only options**."

{% include img.html
src="/wp-content/uploads/2021/03/lastpass_support_2.png"
description="LastPass support: no human here"
%}

There is no way to submit a question, or email, or call someone. Whatever you type in the search field, the only thing you get are answers to other questions, but you can't reach a human. I'm sure this saves on support costs, but it's also a [dark pattern](https://www.darkpatterns.org/). 

I also tried the "Virtual Agent" pop-up (after I disabled my Adblock and Ghostery plugins), but it is equally useless. (The answer to "_all my passwords have disappeared_" was "_This is how you do a backup_", which should have been "first you travel back in time and take a backup")

Out of curiosity, I checked for other people's experiences and [Trustpilot gives LastPass](https://www.trustpilot.com/review/www.LastPass.com) 1,5 stars out of 5.

## Conclusion

Some lessons:
* take regular (encrypted) backups of your password managers
* avoid LastPass. I am switching to [1Password](https://my.1password.com/).


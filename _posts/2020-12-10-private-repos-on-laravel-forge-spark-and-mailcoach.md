---
id: 2385
title: 'Private repos on Laravel Forge: Spark and Mailcoach'
date: 2020-12-10T16:15:04+01:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2385
permalink: /2020/12/10/private-repos-on-laravel-forge-spark-and-mailcoach/
image: /wp-content/uploads/2020/12/image.png
categories:
  - Projects
tags:
  - composer
  - laravel
  - php
  - saas
  - spark
---
I&#8217;m developing a new service and I&#8217;ve decided to go all-in on Laravel. Not only am I developing the application in Laravel, and using ready-made components like [Laravel Spark](https://spark.laravel.com/) (SaaS user management and payment) and [Spatie Mailcoach](https://mailcoach.app/) (mailing server), I also deploy to DigitalOcean with [Laravel Forge](https://forge.laravel.com/). At 12$/month (for the &#8216;Hobby&#8217; plan), even if it saves me only 15 minutes of time every month, that&#8217;s already worth it.

While Laravel Forge has an excellent auto-deploy function, you can&#8217;t use that the first time you want to deploy. You have to disable this magic `composer install` on your first run. You first need to give authentication proof to get access to private repos like Spark and Mailcoach. So you have to run the first `composer install` via ssh in interactive mode

<pre  ><code>$ ssh forge@&lt;yourserver&gt;
$ cd /home/forge/&lt;yourdomain&gt;
$ composer install</code></pre>

### Laravel Spark: needs a Github token

When `composer` tries to install Laravel Spark, you will get a warning:

<pre  ><code>Failed to download laravel/spark-aurelius from dist: The "https://api.github.com/repos/laravel/spark-aurelius/zipball/(...)" file could not be downloaded (HTTP/1.1 404 Not Found)
Now trying to download from source
- Syncing laravel/spark-aurelius (v11.0.4) into cache
 Cloning failed using an ssh key for authentication, enter your GitHub credentials to access private repos
 Head to https://github.com/settings/tokens/new?scopes=repo&description=(...)
 to retrieve a token. It will be stored in "/home/forge/.config/composer/auth.json" for future use by Composer.</code></pre>

So you open a browser for [github.com/settings/tokens/new?scopes=repo](https://github.com/settings/tokens/new?scopes=repo) and create a token there (this unique token proves that in Github, you have access to the Spark repository), copy it and then paste it into your console. Composer will store this token so the next deployment will not need to ask for it.

<pre  ><code>Token (hidden):&nbsp;(***)&lt;br>Token stored successfully.</code></pre>

### Mailcoach: private [Satis](https://github.com/composer/satis) server 

The Mailcoach authentication works a bit different. Spatie operates a private Packagist/Satis server at satis.spatie.be. You&#8217;ve had to add this to your `composer.json`, as explained on [github.com/spatie/laravel-mailcoach-docs](https://github.com/spatie/laravel-mailcoach-docs/blob/master/docs/package/general/installation-and-setup.md). To get access to this server in this first deployment, you need to give your username, which is your _email_, and a password, which is your _Mailcoach license key_ (64 characters). Composer will then ask to save these in a auth.json file. You should do this, because then all following deployments won&#8217;t need to ask this anymore.

<pre  ><code>Authentication required (satis.spatie.be):
Username: &lt;your email&gt;
Password: &lt;your license key&gt;
Do you want to store credentials for satis.spatie.be in /home/forge/.config/composer/auth.json ? &#91;Yn] Y</code></pre>

Then you can go back to Forge and enable the automatic &#8220;Quick Deploy&#8221; functionality.<figure class="wp-block-image size-large">

[<img  width="512" height="168" src="https://blog.forret.com/wp-content/uploads/2020/12/image.png" alt="" class="wp-image-2389" srcset="https://blog.forret.com/wp-content/uploads/2020/12/image.png 512w, https://blog.forret.com/wp-content/uploads/2020/12/image-300x98.png 300w" sizes="(max-width: 512px) 100vw, 512px" />](https://blog.forret.com/wp-content/uploads/2020/12/image.png)  

You&#8217;ve noticed how both procedures save their authentication in the same file `auth.json`. The file will like this:

<pre  ><code>{
    "github-oauth": {
        "github.com": "&lt;Github token code>"
    },
    "http-basic": {
        "satis.spatie.be": {
            "username": "&lt;your email>",
            "password": "&lt;your license code>"
        }
    }
}</code></pre>
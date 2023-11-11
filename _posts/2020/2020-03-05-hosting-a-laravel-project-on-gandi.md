---
id: 2117
title: How to host a Laravel project on Gandi
date: 2020-03-05T22:18:47+01:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2117
permalink: /2020/03/05/hosting-a-laravel-project-on-gandi/
image: /wp-content/uploads/2020/03/LaravelDefault.png
categories:
  - devops
tags:
  - gandi
  - hosting
  - laravel
  - github
  - php
---
<p class="has-text-align-center">
  <em>(Click <a href="https://gandi.link/f/4a9c1f95">here to try Gandi Simple Hosting</a> with 6 months free hosting)</em>
</p>

I host a lot of my projects on Gandi.net hosting, and when I started using the [**Laravel**](https://laravel.com) PHP web framework, it wasn't obvious at first how to run a Laravel project on Gandi Simple Hosting. So let me describe the way I do it.

<!--more-->

### &#8220;Deploy with git&#8221; websites

  * create a new hosted site on Gandi Simple Hosting (e.g. `app.example.com`)
  * create a new Laravel project on your development machine via terminal  
    `laravel new app.example.com`
  * wait until the process is done and move into the new directory  
    `cd app.example.com`
  * create a symbolic link for `htdocs` (what Gandi uses for the website files) to `public` (what Laravel uses for website files)  
    `ln -s public htdocs`
  * initialize your git repo  
    `git init`
  * now set your remote repo to the Gandi URL  
    `git remote add gandi git+ssh://<yourid>@git.yyy.net/app.example.com.git`  
    _(the exact URL is shown on your Gandi dashboard)  
_<img  width="1008" height="301" class="wp-image-2119" style="width: 500px;" src="https://blog.forret.com/wp-content/uploads/2020/03/gandi_site.png" alt="" srcset="https://blog.forret.com/wp-content/uploads/2020/03/gandi_site.png 1008w, https://blog.forret.com/wp-content/uploads/2020/03/gandi_site-300x90.png 300w, https://blog.forret.com/wp-content/uploads/2020/03/gandi_site-768x229.png 768w" sizes="(max-width: 1008px) 100vw, 1008px" /> 
  * add your code to git and do your first commit  
    `git add .<br>git commit -a -m "first commit"`
  * now push your code to Gandi  
    `git push gandi master`
  * before you deploy for the first time: rename the old `htdocs` to `htdocs_old`, via regular SSH (first start the 'emergency console') or via the [Gandi CLI](https://cli.gandi.net/) (my preferred method)  
    `gandi paas console <yourserver><br>cd vhosts/app.example.com/<br>mv htdocs htdocs_old`
  * deploy your Laravel project for the first time  
    `ssh <yourid>@git.yyy.net deploy app.example.com.git`  
    _(you will see that there is an automatic `composer install` phase)_
  * in the CLI you still have open, create the .env file and initialize it  
    `cp .env.example .env<br>php artisan key:generate` 
  * edit the .env file to use the correct database, set the app to &#8216;prod' etc
  * open app.example.com in your browser<figure class="wp-block-image size-full">

<img  width="950" height="735" src="https://blog.forret.com/wp-content/uploads/2020/03/LaravelDefault.png" alt="" class="wp-image-2118" srcset="https://blog.forret.com/wp-content/uploads/2020/03/LaravelDefault.png 950w, https://blog.forret.com/wp-content/uploads/2020/03/LaravelDefault-300x232.png 300w, https://blog.forret.com/wp-content/uploads/2020/03/LaravelDefault-768x594.png 768w" sizes="(max-width: 950px) 100vw, 950px" />  Tada!   

### Deploy with git &#8211; bash script

_UPDATE: I upgraded this simple deploy script into a better **gandi_deploy** script &#8212; &#8220;[Easy site deployment on Gandi with git and gdeploy](https://blog.forret.com/2020/04/06/easy-site-deployment-on-gandi/)&#8220;_

To make re-deploying the project easier, I use a simple `redeploy.sh` bash script:

<pre class="wp-block-preformatted">#!/bin/sh
   git commit -a \
&& git push gandi master \
&& ssh &lt;yourid&gt;@git.sd6.gpaas.net deploy app.example.com.git</pre>

Be sure to add your public key `id_rsa.pub` to the Gandi SSH key list, so you won't have to give a password for the `git push` and `ssh deploy` step.

### &#8220;Update via sFTP&#8221; websites

  * create new hosted site on Gandi Simple Hosting(e.g. `app.example.com`)
  * create a new Laravel project on your development machine via terminal  
    `laravel new app.example.com`
  * wait until the process is done and move into the new directory  
    `cd app.example.com`
  * create a symbolic link for `htdocs` (what Gandi uses for the website files) to `public` (what Laravel uses for website files)  
    `ln -s public htdocs`
  * initialize your git repo (not required here, but always a good idea)  
    `git init`
  * use your sFTP client (e.g. Filezilla) to login to your Gandi server `sftp.yyy.net` and browse to the folder `vhosts/app.example.com/`
  * before you deploy for the first time: rename the old `htdocs` to `htdocs_old`, via regular SSH (first start the 'emergency console') or via the [Gandi CLI](https://cli.gandi.net/) (my preferred method)  
    `gandi paas console <yourserver>`  
    `cd vhosts/app.example.com/`  
    `mv htdocs htdocs_old`
  * now upload the whole website to Gandi. You should see that the root folder contains the `htdocs_old`, the `public` folder and the `htdocs` symbolic link to it.
  * in the CLI you still have open, create the .env file and initialize it  
    `cp .env.example .env`  
    `php artisan key:generate` 
  * edit the .env file to use the correct database, set the app to &#8216;prod' etc
  * open app.example.com in your browser

Also check out the [gandi-deploy / gdeploy.sh](https://blog.forret.com/2020/04/06/easy-site-deployment-on-gandi/) script for even easier deployment and administration
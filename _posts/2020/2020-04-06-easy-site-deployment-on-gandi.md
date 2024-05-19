---
id: 2147
title: Easy site deployment on Gandi with git and bashew
date: 2020-04-06T23:22:26+02:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2147
permalink: /2020/04/06/easy-site-deployment-on-gandi/
image: /wp-content/uploads/2020/04/gandi_deploy.jpg
categories:
  - devops
tags:
  - bash
  - bashew
  - deploy
  - gandi
  - github
  - webmaster
---
<p class="has-text-align-center">
  <em>(Use <a href="https://gandi.link/f/4a9c1f95"><strong>this link</strong> </a>to get 6 months of free hosting on Gandi!).</em>
</p>

I'm doing more and more Laravel development and I'm hosting these projects on Gandi.net Simple Hosting. I've also switched completely to Gandi's **deploy with git** method, since it lets me do full and easy deployment from my laptop's command line. I've even created a [bash script `gdeploy.sh`](https://github.com/pforret/gandi_deploy) to make this faster, Let me explain how it works:<figure class="wp-block-image size-large">

<img  width="703" height="305" src="https://blog.forret.com/wp-content/uploads/2020/04/image-1.png" alt="" class="wp-image-2149" srcset="https://blog.forret.com/wp-content/uploads/2020/04/image-1.png 703w, https://blog.forret.com/wp-content/uploads/2020/04/image-1-300x130.png 300w" sizes="(max-width: 703px) 100vw, 703px" />   

  1. when you [start your project](https://blog.forret.com/2020/03/05/hosting-a-laravel-project-on-gandi/), add the `git remote` for gandi, as specified in your Gandi Simple Hosting dashboard 
  2. develop and run your project locally (using e.g. `php artisan serve`)
  3. when you want to deploy, you commit the changes to the master branch
      * `git commit -a`
  4. you then push the changes to the Gandi git server
      * `git push gandi master`
  5. you then start deployment from the Gandi git server to the web server. This will also do a `composer install` (if there is a composer.lock file) and a `npm install` (if there is a package-lock.json file)
      * `ssh <id>@<gitserver> deploy <website>.git`

I have multiple Gandi Simple Hosting servers and I found it confusing to keep track of what server I was supposed to deploy to for each site. So I developed **[gandi_deploy](https://github.com/pforret/gandi_deploy)**. This is how that works:

## Installation

  * what should already be installed: `git` (obviously), [`cli.gandi.net`](https://cli.gandi.net/)
  * clone this repository somewhere on your machine  
    `git clone https://github.com/pforret/gandi_deploy.git`
  * from any of your Gandi git-managed project, add a symbolic link to gdeploy.sh  
    `ln -s /path/to/gandi_deploy/gdeploy.sh .`
  * initialise the script for your project, type the domain name of your site if it cannot be guessed from the folder name  
    `./gdeploy.sh <strong>init</strong>`
  * this will retrieve the correct git server, web server, user name for this website and store them locally in a hidden folder `.gandi`.

## Easy deployment

  * my most common usage is: `./gdeploy.sh <strong>all</strong>`: this does all 3 steps: commit-push-deploy one after the other, It might take more than 30 secs, but I just have to wait for it to finish.
  * I can also choose to run them one by one: 
      * `./gdeploy.sh <strong>commit</strong>` will do the local git commit
      * `./gdeploy.sh <strong>push</strong>` will push the new commit to the Gandi git server
      * `./gdeploy.sh <strong>deploy</strong>` will push new commit to the Gandi web server,
  * for non-Laravel PHP sites, when there is no `php artisan serve`, I can start a local webserver with `./gdeploy.sh <strong>serve</strong>` (on port 8000) or `./gdeploy.sh <strong>rnd</strong>` (on a random port between 8000 and 8099). It uses the PHP built-in server.
  * to login to the remote SSH serve, I can use `./gdeploy.sh <strong>ssh</strong>`. This uses `gandi paas remote` to start the SSH access.
  * for sites where I have a staging server and a production server, I can define different remotes (`git remote add stage ...`) and then use `./gdeploy.sh <strong>push stage</strong>` or `./gdeploy.sh <strong>push prod</strong>` to choose where I'm pushing the code,

<blockquote class="wp-block-quote">
  <p>
    <strong>./gdeploy.sh all</strong>
  </p>
  
  <cite>to commit, push and deploy new code to Gandi, in 1 go</cite>
</blockquote>

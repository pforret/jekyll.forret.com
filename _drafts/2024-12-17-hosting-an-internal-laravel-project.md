---
title: Hosting an internal Laravel project on Windows
layout: post
image: /wp-content/uploads/2024/12/hosting-an-internal-laravel-project.jpg
permalink: /2024/12/17/hosting-an-internal-laravel-project/
categories:
    - devops
tags:
    - laravel
    - windows
---
At the office, we have a Laravel project that we need to host internally. It uses some specialised Windows software under the hood, so we can't just use a cloud (Linux) server. 

Now what is the best way to host a Laravel project on Windows?
These are the requirements:

* it should be served on port 80/443 so http://projectname.local/ 
* it should automatically start after the server reboots
* it should run a scheduler and queue worker
* it should auto-deploy from a Git repository

| server          | port 80 | auto web | auto queue | auto scheduler | auto deploy |
|-----------------|---------|----------|------------|----------------|-------------|
| artisan serve   | no      | no       | no         | no             | no          |
| Laravel Herd    | yes     | yes      | no         | no             | no          |
| Laragon         | yes     | yes      | no         | no             | no          |
| Docker          | yes     | yes      | no         | no             | no          |
| Docker via sail | yes     | no       | no         | no             | no          |
| FrankenPHP      | yes     | no       | no         | no             | no          |



![](/wp-content/uploads/2024/12/hosting-an-internal-laravel-project.jpg)

---
title: Advanced dotenv config files for bash scripts
layout: post
image: /wp-content/uploads/2021/04/dotenv.jpg
permalink: /2021/04/25/env-bash/
categories:
    - github
tags:
    - bashew
    - devops
    - env
    - environment
    - bash
---
A technique commonly used practice in (deployment of) software projects is to put your local configuration, environment variables and _secrets_ in a `.env` file in the root of your project. This .env file is structured as a one-dimensional lookup table (a list of `key=value` lines), and saved only on that server, never checked in to the project code.

![](/wp-content/uploads/2021/04/dotenv.jpg)

Every programming/scripting language has at least 1 popular package dedicated to exactly this:

* [github.com/vlucas/phpdotenv](https://github.com/vlucas/phpdotenv) (PHP - 11K <i class="fas fa-star"></i>)
* [github.com/theskumar/python-dotenv/](https://github.com/theskumar/python-dotenv/) (Python - 4K <i class="fas fa-star"></i>)
* [github.com/bkeepers/dotenv](https://github.com/bkeepers/dotenv) (Ruby - 6K <i class="fas fa-star"></i>)
* [github.com/joho/godotenv](https://github.com/joho/godotenv) (Golang - 4K <i class="fas fa-star"></i>)
* [github.com/motdotla/dotenv/](https://github.com/motdotla/dotenv/) (JS - 13K <i class="fas fa-star"></i>)

There is, however, no such package for bash. The reason is that the .env syntax **can be executed by bash as-is**, no need to write a package for this[^a]. 

[^a]: Executing a .env file in bash has the advantage/danger that you can execute arbitrary code inside a .env file, which is great for things like `YEAR_NOW=$(date '+%Y)`

For [bashew](https://github.com/pforret/bashew) (my bash scripting micro-framework), I have created a more evolved .env strategy, with multiple .env files (potentially) read when a script executes. It looks for 4 separate .env files in a fixed sequence and, if they exist, they are executed:


```bash
import_env_if_any() {
    env_files=("$script_install_folder/.env"
    "$script_install_folder/$script_prefix.env" 
    "./.env" 
    "./$script_prefix.env")
    
    for env_file in "${env_files[@]}"; do
        if [[ -f "$env_file" ]]; then
            debug "$config_icon Read config from [$env_file]"
            source "$env_file"
        fi
    done
}
```
How does this work? Let's take [splashmark](https://github.com/pforret/splashmark) as an example.

1. the `$HOME/.basher/cellar/bin/splashmark/.env`[^b] contains the Unsplash and Pixabay API keys that the script needs to search for/download images
2. I have a symlink `sm_github` -> `splashmark.sh` and the `sm_github.env` file contains all the settings specific for my Github images: width, height, font-size ...
3. for certain projects like [Every country in the world in 1 (Unsplash) photo](https://blog.forret.com/2021/02/14/every-country-in-the-world-in-1-unsplash-photo/) I can create a .env file in the project's image folder and save the settings for those images.
4. I could have separate .env files for separate symlinked aliases.

I have found having this flexibility in every script I create makes life really easier.

[^b]: resolving the installation folder is explained in [Find installation folder for bash scripts](/2021/04/24/installation-folder/)

---

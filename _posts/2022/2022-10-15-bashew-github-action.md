---
title: "Using bashew in GitHub Actions"
layout: post
permalink: /2022/10/15/bashew-github-action/
image: /wp-content/uploads/2022/10/unsplash.github.jpg
categories:
    - repo
tags:
    - bashew
    - github
    - action
    - runner
    - ci
---

GitHub Actions, used in countless CI/CD setups, are a good example of the ubiquity of _bash scripting_. Most of the `run:` lines in an [Action YML](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#jobsjob_idstepsrun) document are nothing but (a sequence of) bash command lines. 

I knew this could be a good match for [`bashew` scripts](/tag/bashew/)-based bash scripts, but I only found some time to try that out last weekend. 

> TL;DR: `bashew` scripts are a great way to streamline your GitHub Actions

![bashew in GitHub Action scripts](/wp-content/uploads/2022/10/unsplash.github.jpg)

## shot-scraper

I got inspired by [Automating screenshots using shot-scraper](https://simonwillison.net/2022/Oct/14/automating-screenshots/) via [Hacker News](https://news.ycombinator.com/item?id=33216789). The `shot-scraper` documentation describes how to [set it up for using GitHub Actions](https://shot-scraper.datasette.io/en/stable/github-actions.html) to do the actual screen grabbing. I used that as a starting point and I distilled it into an efficient example project: [pforret/bashew_github_action](https://github.com/pforret/bashew_github_action).

## bashew_github_action
I created 3 sub commands in the `bashew_github_action.sh` script:
* **gha:before**: does the GitHub Action setup (in this case: check if Python is installed, install shot-scraper and do initial shot-scraper setup)
* **gha:execute**: runs the actual payload. In this case: use shot-scraper to get screenshots of a number of websites
* **gha:after**: save the results by doing an automatic `git commit` and `git push`.

The YML code to run each of them in sequence, is super easy:

```yml
    - name: gha:before
      run: |
        ./bashew_github_action.sh gha:before
    - name: gha:execute
      run: |
        ./bashew_github_action.sh gha:execute
    - name: gha:after
      run: |-
        ./bashew_github_action.sh gha:after
```

> This is one of the screenshots it generates:
> ![automatic screenshot via shot-scraper](https://raw.githubusercontent.com/pforret/bashew_github_action/master/output/blog.forret.com.png)

## Advantages:

Using a `bashew` script to streamline your GitHub Actions is a good idea because:

* **Single Responsibility**. You edit your setup code in the same file as the payload or the wrap-up code. You don't touch the `action.yml` file anymore after initial setup.
* **Cleaner Code**. The YML syntax forces you to a `do this && do that && do the other` one-liner format. A script allows you to do if/then, for/do, while/do, recursion ... in an easy and clean way.
* **Easy Debugging**. `bashew` has built-in support for log files and optional verbose mode. It also cleans up log files after 30 days, so they don't clog up your repo.
* **Self-Contained**. You don't need external libraries or runtimes. `bash` runs on most Action Runners (Linux/MacOS) and each `bashew` script contains its entire library of functions.

## Try it out

```shell
# install bashew, if necessary
basher install pforret/bashew
# add a new bashew script to your project
bashew script
# add subcommands setup/payload/wrapup, or gha:before,gha:execute,gha:after
```

or even easier:
```bash
# clone the example repo
git clone https://github.com/pforret/bashew_github_action.git
# copy bashew_github_action.sh and .github/workflows/shots.yml to your project
# start editing the gha:before and gha:execute subcommands
  gha:before)
    [[ -z "${RUNNER_OS:-}" ]] && IO:die "Only run inside a Github Action"
    Os:require pip python3
    pip install shot-scraper
    shot-scraper install
    ;;
```
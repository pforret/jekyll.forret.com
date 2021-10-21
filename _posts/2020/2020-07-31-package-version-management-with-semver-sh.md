---
id: 2330
title: 'setver: Package (semver) version management for bash/PHP/Node'
date: 2020-07-31T13:23:00+02:00
author: Peter
layout: post
guid: https://blog.forret.com/?p=2330
permalink: /2020/07/31/package-version-management-with-semver-sh/
image: /wp-content/uploads/2020/07/setver.jpg
categories:
  - scripting
tags:
  - bash
  - composer
  - node
  - nodejs
  - npm
  - package
  - php
  - semver
  - versioning
---
When you&#8217;re creating software packages that will be used by other people, you need to get your versioning in order. For PHP libraries, this means: both the version number in `composer.json` as well as the `git tag` for Github/Bitbucket. For node.js projects, the version is kept by npm in `package.json`. It was always too easy to make small mistakes. So I decided to make a bash script `<strong>semver.sh</strong>` to manage it for me.

**<https://github.com/pforret/setver>**

This works for PHP/Composer projects, Node/NPM projects and Bash projects. At the least it will get/set your git tags (and push them to Github/Bitbucket), but if present, it will also first set versions on `composer.json` or `package.json` . There&#8217;s also the option to use a `VERSION.md` file, that will always contain the version number.

_For **PHP** packages: creating and pushing the `git tag` will also trigger Packagist (the PHP package manager repository) to update the package version. It&#8217;s also important that the composer.json version and the git tag version are always the same._

**Semver.sh** allows you to do:

  * `setver.sh new major`: derive new major version and set it everywhere
  * `setver.sh new minor`: derive new minor version and set it everywhere
  * `setver.sh new patch`: derive new patch version and set it everywhere
  * `setver.sh set 2.0.0`: set new version number

The semver.sh then executes:

<blockquote class="wp-block-quote">
  <p>
    <code>➜&nbsp; setver.sh new minor</code>
  </p>
  
  <p>
    <code>&gt; version 1.0.3 -&gt; 1.1.0</code>
  </p>
  
  <p>
    <code>&gt; set version in composer.json</code>
  </p>
  
  <p>
    <code>&gt; commit and push changed files</code>
  </p>
  
  <p>
    <code>[master 1261456] semver.sh: set version to 1.1.0</code>
  </p>
  
  <p>
    <code>&gt; set git version tag</code>
  </p>
  
  <p>
    <code>&gt; push tags to git@github.com:&lt;username/package&gt;.git</code>
  </p>
  
  <p>
    <code>&nbsp;* [new tag] &nbsp; &nbsp; &nbsp; &nbsp; v1.1.0 -&gt; v1.1.0</code>
  </p>
</blockquote>

Next to that, semver.sh also allows to 

  * `setver.sh check`: show the version numbers used in all possible places (and detect e.g. that your `git tag` and `composer.json` version are no longer in sync), 
  * `setver.sh get`: get the current version of your package, and 
  * `setver.sh push`: an easy way to push your latest changes to Github/Bitbucket (a shortcut for `git commit -a && git push`).

### What is Semver?

[Semver](https://semver.org/) -or Sematic Versioning- is a version labeling convention that requires software to have a version number of the type `<major>.<minor>.<patch>` (e.g. 1.4.15). This is how you increment versions in semver: 

  * if you just fixed a problem/bug: `1.4.15` -> `1.4.16`. 
  * If you added new functionality: `1.4.15` -> `1.5.0`. 
  * If you made big breaking changes (so that the component might not be backwards compatible): `1.4.15` -> `2.0.0.`

There are the option in _semver_ to use alpha/beta/pre-release versions, but I&#8217;m not using that for now.

In order to keep the script small, I just used a subset of library functions from [bashew](https://github.com/pforret/bashew).
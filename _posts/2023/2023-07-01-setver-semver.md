---
title: "Put your (software) version in a file"
layout: post
image: /wp-content/uploads/2023/11/unsplash.version.jpg
permalink: /2023/07/01/setver-semver/
categories:
- devops
tags:
- semver
- software
- development
- github
- git

---
I've started using my [setver](/2020/07/31/package-version-management-with-semver-sh/) [<i class="fab fa-github-square"></i>](https://github.com/pforret/setver) bash tool for easy semver versioning of components and projects. One of the design decisions I  made back then, is that I would always have a `VERSION.md` version file in the root of my project. This file only contains the current version number. This version is also stored in the `composer.json` (PHP), `package.json` (JS) files and git tags, but I wanted a system that also works for my [bash projects](/category/bash/). In the end, it turns out that was a clever decision.

![VERSION.md](/wp-content/uploads/2023/07/versionmd.png)

Having the version number auto-updated in a file, without any parsing or cleanup needed, makes it easy to use it in other places, like in the footer of a website. This is how that works for some of my projects:

### PHP projects:

#### using Smarty templates

* create `<theme folder>/templates/VERSION.md` as a symbolic link to the `VERSION.md` in the root of the project.
* `{include file="VERSION.md"}` in a Smarty template

#### using Laravel/Blade templates

* create `/resources/views/VERSION.blade.php` as a symbolic link to the `VERSION.md` in the root of the project.
* use `@include('VERSION')` in a `content.blade.php` file

### Ruby projects

#### using Jekyll /Liquid templates

* create `_includes/version.html` as the actual version file and the `VERSION.md` in the root of the project is a symbolic link to that file. (Because Jekyll does not allow symbolic links as content files)
* use {% raw  %}`{% include file=version.html %}`{% endraw  %} in a Liquid template or Markdown file

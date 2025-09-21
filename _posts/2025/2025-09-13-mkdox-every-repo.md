---
title: A static Docs site for every project
layout: post
image: /wp-content/uploads/2025/09/unsplash.books.jpg
permalink: /2025/2025-09-13/mkdox-static-site/
date: 2025-09-13
categories:
    - idea
    - repo
tags:
    - mkdocs
    - material
    - static
---
> TL;DR: I have started using [mkdox](https://github.com/pforret/mkdox) (which uses mkdocs, material and Docker) to create a static documentation site for every repository/project I'm working on. It's easy, light and fast. It also invites me to document everything in Markdown, which is great for coding agents.

![](/wp-content/uploads/2025/09/unsplash.books.jpg)
<!-- more -->

Recently I realized:

- **Projects ♥️ documentation**. A lot of my repositories or projects have a folder `/doc` or `/docs` or `/examples`, where I save non-source code files that are relevant to the project. Actually, even some of my bigger PowerPoint presentations have their own `/docs` folder.
- **Documentation ♥️ structure**. I already tend to organize those into subfolders like `/docs/archive`, `/docs/plugins`, `/docs/pdf` or `/docs/<topic>`.
- **Documentation ♥️ Markdown**. It's an easy format to write and read. My IDE (PHPStorm) has very good support for it. It's easy to copy/paste a text and then quickly add some Markdown formatting.
- **Agents ♥️ Markdown**. Coding agents (like Claude Code and Codex) love to get their extra context from Markdown files. So I was not only writing documentation in Markdown, but also converting some content like PDF and HTML files to Markdown.
- **Documentation ♥️ a website**: the ideal presentation for a folder structure of (Markdown) documents is a website with navigation, internal links and a search functionality.
- **mkdox ♥️ creating sites**: my preferred way of making a static website these days is [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/), for which I've written a handy tool called [**mkdox**](https://github.com/pforret/mkdox). I can create a new mkdocs site as simple as `mkdox new website.com`
- **mkdox ♥️ /docs**: Mkdocs also puts its contents in a `/docs` folder. So in a lot of projects, I only needed to run `mkdox new .` to get a working website with the existing documentation in there.

So this is what I do now with each new or old repository/project that I work on:

* I add/move all the docs to a `/docs` folder.
* I run `mkdox new .` in the root folder
* mkdox recognizes that there already is a `README.md` and moves it to `/docs/index.md` (the homepage of the doc website) and creates a symbolic link to make `/README.md` and `/docs/index.md` point to the same file.
* I run `mkdox serve` and I have the docs website popping up within seconds.
* subfolders `/docs/[topic]/` show up in the navigation.
* I can search the website
* the `/docs` folder is also added to GitHub, so I can even see the contents within GitHub.
* I can easily point Claude Code to use `@docs/examples/[clever_thing].md` when I want to add it to my context.


This is what that looks like for [pforret/ytaudio](https://github.com/pforret/ytaudio)
![](/wp-content/uploads/2025/09/mkdox_example.png)

---
title: Generate individual tag/category/author pages for your Jekyll website
layout: post
image: https://github.com/pforret/jekyll_taxonomy/raw/master/assets/taxonomy.jpg
permalink: /2021/03/21/create-tag-category-pages-jekyll/
categories:
    - repo
tags:
    - jekyll
    - static
    - github
    - bash
    - bashew
    - wordpress
---
I've been migrating more and more of my websites to [Jekyll](https://jekyllrb.com/) static sites, from WordPress. The advantages are clear:
* version management with `git` suits me (it's how I develop software).
* deployment/hosting with GitHub Pages is very easy and can be automated
* the security of having a static site (i.e. no visitor/hacker can change it) is a relief
* sure, WordPress has plugins and comments, but that has become more of a burden than a feature for me.

I created a personal [Jekyll template for blog sites](https://github.com/pforret/jekyll_template_blog) (with posts) and another [Jekyll template for photography sites](https://github.com/pforret/jekyll_template_photo) (with photos).

## Tag/category indexes

One thing that I still had to solve was tag and category indexes. WordPress does a great job of creating index pages for years, months, categories and tags. If your post uses the tag 'apple', it also shows up in the index page for the tag 'apple'. All these pages help your SEO a lot. 

Jekyll, on the other hand, only generates a web page for each .md or .html in the source. To get 100 different pages for 100 different tags, there need to be 100 source documents. No one wants to add/edit these by hand. Surely this could be automated, right? Thanks to my [bashew bash script template](https://github.com/pforret/bashew), this was only one evening's work.

## Introducing jekyll_taxonomy

{% include img.html
src="https://github.com/pforret/jekyll_taxonomy/raw/master/assets/taxonomy.jpg"
description="pforret/jekyll_taxonomy"
href="https://github.com/pforret/jekyll_taxonomy"
%}

[github.com/pforret/jekyll_taxonomy](https://github.com/pforret/jekyll_taxonomy)

What does `jekyll_taxonomy generate tag` do?
* it creates a (minimal) layout for tag indexes in `_layouts/with_tag.html` that can later be modified. 
* it creates a (minimal) function tag listing page in `tag/index.html` that can later be modified.
* it cleans all `tag/*.md` files if `-c`/`--cleanup` was specified (necessary when tags were removed/renamed)
* it looks up all tags used in `_posts/*.md` front matter (as `tag:` or `tags:`) and slugifies them (lower case, no spaces or funny characters). It then creates a `[tag].md` file for each tag that uses the `with_tag` layout.
* this works for tags and categories (obviously) but also for author, color, gender, country ... or any other keyword you've defined in your posts' front matter.
* it's a bash script with no external dependencies, so it runs on MacOS, Linux (Ubuntu/Fedora/...), and Windows Subsytem for Linux (WSL1/2)

## 'build' script

This is the script I've created to generate all my tags and categories for this blog in one go. The whole process (+- 600 posts, 50 categories, 500 tags) generates the pages in 15 seconds. 

```bash
jekyll_taxonomy -c generate category ## recreate all category index pages
git add category  ## add any new category indexes to git
jekyll_taxonomy -c generate tag ## recreate all tag index pages
git add tag       ## add any new tag indexes to git
git status        ## show me all added/removed tags and categories
```

Jekyll will now have to generate an extra number (in my case: +- 550) of pages, and since all of these go through all your posts, the Jekyll generation process takes a lot longer, in my case up to 80 seconds. 

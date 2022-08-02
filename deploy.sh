#!/usr/bin/env bash

# recreate category .md files
jekyll_taxonomy -c generate category
git add category

# recreate tag .md files
jekyll_taxonomy -c generate tag
git add tag

git add _posts
cp VERSION.md _includes/version.html
git add _includes
git add wp-content
git add public

setver autopatch

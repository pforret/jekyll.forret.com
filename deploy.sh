#!/usr/bin/env bash

# recreate category .md files
jekyll_taxonomy -c generate category
git add category

# recreate tag .md files
jekyll_taxonomy -c generate tag
git add tag

git add _posts
git add wp-content
git add public

setver autopatch

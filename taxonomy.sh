#!/usr/bin/env bash

jekyll_taxonomy -c generate category
git add category

jekyll_taxonomy -c generate tag
git add tag

git status

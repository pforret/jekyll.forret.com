#!/usr/bin/env bash

[[ -z $(command -v jekyll) ]] && echo "Jekyll not installed on this system" && exit 1
( sleep 10 && open http://localhost:4000 ) &
bundle exec jekyll serve --incremental

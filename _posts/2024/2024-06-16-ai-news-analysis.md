---
title: Using A.I. to follow and summarize news
layout: post
permalink: /2024/06/16/ai-news-analysis/
image: /wp-content/uploads/2024/newsreader.jpg
categories:
    - idea
tags:
    - AI
    - ChatGPT
    - LLM
    - RSS
    - artificial-intelligence
    - cinema
    - news
---
As I've [mentioned before](/2024/05/25/ai-video-quality-control/), I am doing a lot of research into using A.I. to facilitate cinema advertising operations. 
Let me tell you about a recent experiment I did with a movie news analysis tool.

![](/wp-content/uploads/2024/newsreader.jpg)

## The problem

In cinema advertising we need to predict with some degree of accuracy the future admissions in the Belgian cinemas. This is called 'admissions forecasting'.
In the last decade, I've developed a bottom-up model for the belgian cinema market that uses predictions per movie and aggregates this into weekly admissions (per movie, movie type or in total).
This requires an estimate of total admissions for every movie.

So what number of admissions does one use for movie X that is released in 3 months? We base this on the past performance of similar movies, and the _buzz_ around the movie (what people are saying about it).
To keep track of the buzz, we need to follow the news about movies. This is a time-consuming task, as there are so many movies and so many movie blogs. So I had an idea for a tool that would **keep track of movie news and summarize it** for me.

## The solution

![](/wp-content/uploads/2024/file.critic4..fe240e.jpg)

This builds on my [nuuz.io news aggregator](https://blog.forret.com/portfolio/nuuz_io/) experience. 
I keep a list of relevant movie/cinema publications that I want to follow: RSS feeds (from blogs), Subreddits, YouTube (trailer) accounts ...
Every time a new article/video is published, the content is expanded (meaning: if the RSS feed only contains a summary, the full article is fetched).

Then the text is analyzed with ChatGPT. This allows the extraction of a summary (in English, even if the original article was written in Dutch, French, Italian ...), and the overall sentiment (negative = 'failure/boring/disappointing' or positive = 'success/excellent/outstanding/...'. Also detected are the movies, actors and directors that are mentioned in the article.

For movie trailers we can keep track of the number of views, favourites etc and use this as a measure of anticipation. Like right now: the "_Venom: The Last Dance_" trailers from the Sony and Marvel YouTube channels are the most popular trailers of the last month (June). The movie only comes out October 23rd, but the buzz is already there.

By combining all this info, I can track the buzz for any given movie, based on dozens of articles published about it. For instance, it quickly picked up on the negative vibe around "_Furiosa: A Mad Max Saga_" and the positive buzz around "_Inside Out 2_".


> Tools:
> * [Laravel](https://laravel.com/) and [Nova](https://nova.laravel.com/) for (fast) application development
> * [SimplePie](https://github.com/simplepie/simplepie) for RSS feed parsing
> * [pforret/pf-article-extractor](https://github.com/pforret/pf-article-extractor) for article expansion
> * [ChatGPT](https://openai.com/chatgpt/) for text analysis via [openai-php/laravel](https://github.com/openai-php/laravel)

## Conclusion

The tool is still in development, but it already shows promise. It's like an intern reading over 1000 movie articles a week and distilling the essence.
I am also investigating how to factor in IMDB Score, Rotten Tomatoes rating, Metacritic score, ... to get a more complete picture of the buzz around a movie.
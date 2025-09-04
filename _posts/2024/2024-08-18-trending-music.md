---
title: Discover new trending music on Spotify
layout: post
image: /wp-content/uploads/2024/08/music.toolstudio.png
permalink: /2024/08/18/spotify-trending-music/
categories:
    - idea
tags:
    - music
    - spotify
    - toolstudio
    - laravel
---

Decades ago, back when I organised the first [Belgian Barcamp events in Brussels (2006)](/2006/05/09/barcamp-brussels-10-days-to-go/), I had a created a presentation of my own: I was scraping the 'playing now' feeds of several Belgian radio stations, using that data to detect 'trending music', new songs that started being played a lot on radio. I remember that one of the songs that came out of the algorithm was ['Crazy' by Gnarls Barkley](https://www.youtube.com/watch?v=-N4jf6rtyuw), and since it was first time I heard that name, I wasn't even sure how to pronounce it.

Since this was before GitHub (2008), I have no trace of the code. Since this is before I started working with Laravel 5 (2016), I'm sure it was very ugly. But the idea was there: I wanted to know what was trending in music, and I used the data that was available to me.

```php
// artist impression of my PHP level back then:
// no frameworks,
// no composer,
// no classes,
// no camelcase, and
// no HTTPS :-)
while(true){
    $now_playing = get_and_parse_now_playing("http://radiostation/widget/nowplaying.html");
    if($now_playing["title"] <> $previous_title){
        saveSong($now_playing);
        $previous_title = $now_playing["title"];
    }
    sleep(120);
}
```

## Fast-forward to 2024 

So now, some 20 years later, I wanted play with the Spotify data and APIs. I collected some dozen Spotify 'hitparade' playlists from all different countries, like the one below here, and collected the songs from these playlists in a database.

![](/wp-content/uploads/2024/08/hothitsbe.png)

The Spotify API gives me the 'audio features' of these songs, like 'danceability', 'energy', 'key', 'loudness', 'mode', 'speechiness', 'acousticness', 'instrumentalness', 'liveness', 'valence', 'tempo', 'duration_ms', 'time_signature'. I use these to describe or categorize the song.

![](/wp-content/uploads/2024/08/chappellroan.png)

The Spotify API also gives me a '[Popularity Index](https://www.artist.tools/features/spotify-popularity-index)' for each song, which is a number between 0 and 100. I only put songs in my database with popularity above 75.
I ended up with a database with about two thousand songs: [**music.toolstud.io**](https://music.toolstud.io/)

Then, for the trending songs, I can select only those that popped up in the last month, with a popularity of at least 80.

```php
$songs = Cache::remember($cacheId, 600, function () use ($days, $minPopularity) {
    return Song::where('popularity', '>=', $minPopularity)
        ->where('created_at', '>', now()->subDays($days))
        ->orderBy('created_at', 'desc')
        ->limit(12)
        ->get();
```
This gives me: the [Spotify Fresh 12](https://music.toolstud.io/fresh), the 12 songs that are trending right now.

[![](/wp-content/uploads/2024/08/music.toolstudio.png)](https://music.toolstud.io/fresh)
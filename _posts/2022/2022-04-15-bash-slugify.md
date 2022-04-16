---
title: "Benchmark: slugify text in Bash"
layout: post
permalink: /2022/04/15/slugify-bash/
image: /wp-content/uploads/2022/03/benchmark.slugify.jpg
categories:
    - bash
tags:
    - benchmark
    - sed
    - tr
    - awk
    - slugify
    - bash-benchmark
---
Post #5 in this [bash benchmark](/tag/bash-benchmark/) series,
measuring the speed of common **bash text manipulations**.

## Slugify: clean up text to use as a filename/url

This consists of the following 3 operations: 
* remove all characters that are not ASCII (like _éçà_), and punctuation (like _!?[];:,_)
* remove leading/trailing spaces
* change all (sequences of) spaces into '-' 

It is even better to precede this with [romanization (é => e)](/2022/04/10/romanization-bash/) 
and conversion to [lowercase](/2022/03/25/lowercase-bash/), 
but I'm now just going to talk about the pure slugification.

![Bash benchmarks](/wp-content/uploads/2022/03/benchmark.slugify.jpg)


### using `awk`
This is of course something that is easy to do in `awk`. 
It is just a sequence of `gsub` regular expression replaces.

```shell
Command: awk '{
              gsub(/[^0-9a-zA-Z .-]/,""); 
              gsub(/^[ \t\r\n]+/, ""); 
              gsub(/[ \t\r\n]+$/, ""); 
              gsub(/[ ]+/,"-"); 
              print;
              }'
Before: '  (Demain, dès l’aube)     '
After : 'Demain-ds-laube'
```

### using `sed`
Regular expression replacement is what `sed` does very well too, and probably faster.

I first tried this
```shell
Command: sed -e 's/[^0-9a-zA-Z .-]*//g' -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' -e 's/  */-/g'
Before: '  (Demain, dès l’aube)     '
After : 'Demain-ds-laube'
```
and then, by just deleting 1 character, made it better. Can you spot the character? Check the speeds for both methods in the next chapter.
```shell
Command: sed -e 's/[^0-9a-zA-Z .-]//g' -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' -e 's/  */-/g'
Before: '  (Demain, dès l’aube)     '
After : 'Demain-ds-laube'
```

### using `tr`
It is possible to do almost slugify with `tr`, but not entirely. 
The modifier -s can be used to indicate that groups of non-allowed characters should only be replaced by a single character,
but there remains an issue with leading/trailing whitespace. 
Again, this could be solved by adding a 2nd piped `tr` statement. 
It's just that, in this series, I try to do every task in just 1 statement.
```shell
Command: tr -cs '[:alnum:].-' '-'
Before: '  (Demain, dès l’aube)     '
After : '-Demain-d-s-l-aube-'
```

### using `${}` variable expansion
As we have seen in previous benchmarks, it is interesting to also try to do everything in one (long) ${} statement, since these typically have an unbeatable invocation speed. This was my first trial:
```shell
Command: ${line//[^a-zA-Z0-9]/-}
Before: '  (Demain, dès l’aube)     '
After : '---Demain--d--s-l-aube------'
```
That's a lot of extra hyphens we still need to get rid of. Let's try a series of ${} to replace characters and take care of leading/trailing whitespace. Our code readability drops dramatically.
```shell
Command: $(line="${line//[^a-zA-Z0-9 ]/}"; 
            line="${line%"${line##*[![:space:]]}"}"; 
            line="${line#"${line%%[![:space:]]*}"}"; 
            echo "${line// /-}")
Before: '  (Demain, dès l’aube)     '
After : 'Demain-ds-laube'
```

## Benchmark [via pforret/bash_benchmarks](https://github.com/pforret/bash_benchmarks)

> I will focus here on the relative speeds compared to each other, the absolute speeds depend on your machine, and my 2021 MacBookPro M1 16" is quite fast. I've tested these benchmarks on a Ubuntu-on-Windows WSL1 environment, and that is wayyyyyy slower.

| method    | throughput  | invocation         |
|-----------|-------------|--------------------|
| awk       | 95 MB/s (!) | 268 ops/sec        |
| sed /[]*/ | 7 MB/S      | 1021 ops/sec       |
| sed /[]/  | 18 MB/S     | 1022 ops/sec (!)   |
| tr        | 27 MB/s     | 1063 ops/sec       | 
| ${} (1x)  | 8 MB/S      | 9174 ops/sec       |
| ${} (4x)  | 8 MB/s      | 1869 ops/sec  (!!) |


Some lessons from these benchmarks:
* the speed difference in both throughput and invocation for the two `sed` statements is remarkable. By just removing the '*' (because here we can), we get 3x the throughput speed and almost 1.5x the invocation speed.
* startup time of `sed` and `tr` are all around 1ms (1000 ops/sec). awk is 4 times slower to start up, but still fast (4ms startup is fast.)


---
So what is my recommendation for **slugification**?

* for throughput speed, use `awk`.
* for invocation speed, if you're happy wit the result of single ${} statement, use `${}`. Otherwise, use `sed`.
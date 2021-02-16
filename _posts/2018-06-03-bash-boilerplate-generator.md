---
id: 1688
title: 'New project: bash boilerplate generator on toolstud.io'
date: 2018-06-03T16:04:27+02:00
author: Peter
layout: post
guid: http://blog.forret.com/?p=1688
permalink: /2018/06/03/bash-boilerplate-generator/
image: /wp-content/uploads/2018/06/fig-03-06-2018_14-02-08.jpg
categories:
  - toolstud.io
tags:
  - bash
  - hacking
  - Linux
  - script
  - shell
  - terminal
---
<div class="wp-block-group">
  <div class="wp-block-group__inner-container">
    <p>
      I like to automate. I like it so much that I will not hesitate to spend 8+ hours on writing a script that replaces 5 minutes of work every month. Most of my automation is for CLI (command line interfaces). On Windows, that means CMD, but for most other platforms (Linux, MacOS, Busybox) the best tool for it is <em>bash</em> or <em>shell</em>. I&#8217;ve created my own self-contained <a href="https://github.com/pforret/bashew">bash <em>boilerplate</em> script</a> (a good scripting starting point, with a lot of regularly recurring functionality already built in.)
    </p>
    
    <p>
      But I still needed to <code>git clone</code> the repository, or copy/paste from the github page, and customise it every time (using different options, parameters). So I went 1 step further: here is now the fully interactive, always up-to-date <strong><a href="https://toolstud.io/data/bash.php">BASH BOILERPLATE GENERATOR</a></strong>
    </p>
    
    <p>
      <!--more-->
    </p>
    
    <p>
      <a href="https://toolstud.io/data/bash.php"><img loading="lazy" class="alignnone wp-image-1691 size-full" src="http://blog.forret.com/wp-content/uploads/2018/06/Screen-Shot-2018-06-03-at-16.02.43-2.png" alt="" width="795" height="666" srcset="https://blog.forret.com/wp-content/uploads/2018/06/Screen-Shot-2018-06-03-at-16.02.43-2.png 795w, https://blog.forret.com/wp-content/uploads/2018/06/Screen-Shot-2018-06-03-at-16.02.43-2-300x251.png 300w, https://blog.forret.com/wp-content/uploads/2018/06/Screen-Shot-2018-06-03-at-16.02.43-2-768x643.png 768w, https://blog.forret.com/wp-content/uploads/2018/06/Screen-Shot-2018-06-03-at-16.02.43-2-600x503.png 600w" sizes="(max-width: 795px) 100vw, 795px" /></a>
    </p>
  </div>
</div>

With just one click, you can get the boilerplate code for CLI scripts like:

  * `convert_a_file.sh [action] [outputfile] [inputfile(s)]`
  * `convert_a_file.sh [inputfile]`
  * `send_an_email.sh --from [from] [destination] [subject] [body]`
  * `compress_files.sh --test --method [method} [zipfile] [file(s)]`

The boilerplate code takes care of

  * option parsing: use flags (e.g. `-v` for verbose), options (e.g. `--steps 20`) with short and long name (e.g. `-v` = `--verbose`)
  * different output commands for verbose/normal/error messages
  * confirmation yes/no &#8230; 

The only things you still need to add is the actual code that does all that stuff that you wanted to automate.
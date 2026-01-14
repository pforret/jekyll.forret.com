---
title: Leaderboard for AI Terminal-based agents
layout: post
image: /wp-content/uploads/2026/01/unsplash.leaderboard.jpg
permalink: /2026/2026-01-14/ai-terminal-agents-leaderboard/
date: 2026-01-14
categories:
    - devops
tags:
    - AI
    - claude
    - laravel
---
> TL;DR: I've created a daily updated AI terminal coding agent leaderboard (i.e. Claude Code and its competition), ranking popularity based on monthly downloads. It lives on [https://terminalai.forret.com/](https://terminalai.forret.com/).

## AI Terminal Coding Agents

I have been a very enthusiastic user of Claude Code for about 6 months now.
It is really getting better by the day. Its skills and insights are way beyond a junior programmer now.
I've also dabbled with [Gemini CLI](/2025/2025-09-27/a-spectrogram-for-videos/) and [Codex CLI](/2025/2025-09-20/transcode-c-to-golang/), and even JetBrains' [Junie](/2025/2025-09-19/jetbrains-plugin-kotlin/).
Using a coding agent in a CLI setting really works for me. I've even set up a [TailScale/Termius connection](https://petesena.medium.com/how-to-run-claude-code-from-your-iphone-using-tailscale-termius-and-tmux-2e16d0e5f68b) on my phone to work from literally anywhere.

![](/wp-content/uploads/2026/01/unsplash.leaderboard.jpg)
<!-- more -->

## terminalai.forret.com

I did read about other AI agents like Cline, Qodo, Amp and Goose, since I develop a popular [JetBrains plugin for running all these CLI coding agents in PHPStorm/IntelliJ/PyCharm](https://plugins.jetbrains.com/plugin/28522-llm-brains). 
So now I've made a leaderboard website to rank all these CLI terminal-based coding agents based on **monthly installs**.
This is a Laravel 12 project, that gets data from NPM, PyPi, GitHub and does some analysis on the actual packages.
Stats are updated on a daily basis.


Check it out on [**terminalai.forret.com**](https://terminalai.forret.com/)

![](/wp-content/uploads/2026/01/terminalai.png)

## Some findings

* **Claude Code** leads by a big margin. It currently gets 10 times the monthly installs of the number 2. 17 million every month, for a very nerdy product.
* **Codex CLI** and **Gemini CLI** are in the same ballpark, both around 1.5 million installs/month.
* **Copilot** and **Aider** are in the next group, those with between 200K and 250K installs in a month. I was unaware of Aider before I started this side-project.
* **Grok CLI** is not in the same league. They don't really compare with only 9K installs per month.

## NPM as a wrapper

* The largest package is 370MB large. The smallest is 720KB. I still have to investigate properly how that is even possible.
* Some NPM packages like [Gemini CLI](https://terminalai.forret.com/packages/google-gemini-cli) have dependencies (through its `package.json` file) and almost 2000 files. That seems normal. Other packages have only 20 files and no dependencies, just 1 huge .js file. Probably a minified compilation from TypeScript. I also want to investigate that.
* a lot of the packages have a bundled copy of [ripgrep](https://github.com/BurntSushi/ripgrep): _ripgrep recursively searches directories for a regex pattern while respecting your gitignore_.
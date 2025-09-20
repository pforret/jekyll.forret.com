---
title: Creating my first Jetbrains plugin with Junie and Kotlin
layout: post
image: /wp-content/uploads/2025/09/unsplash.brains.jpg
permalink: /2025/2025-09-19/jetbrains-plugin-kotlin/
date: 2025-09-19
categories:
    - devops
tags:
    - kotlin
    - agentic
    - junie
    - jetbrains
---

> TL;DR: I created a Jetbrains plugin in Kotlin, a language I don't master, with Jetbrains' own Junie AI Agent. 
> It went quite easy, and now I have my first published [plugin in the Jetbrains marketplace](https://plugins.jetbrains.com/plugin/28522-llm-brains/edit).
> Source code: [toolstud-io/LlmBrains](https://github.com/toolstud-io/LlmBrains)

![](/wp-content/uploads/2025/09/unsplash.brains.jpg)
<!-- more -->
I've been using Claude Code for a while, because I like the way it integrates with PHPStorm, my main IDE.
Claude Code also has a [plugin for Jetbrains IDEs](https://plugins.jetbrains.com/plugin/27310-claude-code-beta-), that gives a little button in the top right corner, that you can click to start a Claude Code terminal session.

![](/wp-content/uploads/2025/09/claude_code_plugin.png)

I like it, but it could be better. For one, I would like the Claude Code terminal to be easier to recognize by the title. 
I also want the same functionality for other terminal coding agents (Codex CLI, Gemini CLI).
How does one do that? I had no idea. 

## Kotlin, you say?

Jetbrains plugins are written in [Kotlin](https://kotlinlang.org/). That is Jetbrains' own language, and it is a modern language that runs on the JVM.
It's Java's cooler younger sibling, with a lot of syntactic sugar and modern features.

> "Development lead Andrey Breslav has said that Kotlin is designed to be an industrial-strength object-oriented language, and a "better language" than Java, but still be fully interoperable with Java code, allowing companies to make a gradual migration from Java to Kotlin"

I am comfortable in bash and PHP, I can manage Golang and Python. But I have never seen/written Kotlin.
Also, I expect this plugin to use a lot of the Jetbrains SDK, which I have never used before either.

## Trial 1: Codex CLI (OpenAI)

First, I ask Codex CLI to help me create a Jetbrains plugin that adds a icon button to the top right corner of the IDE, with a dropdown of the code agents I can start.
It comes up with a lot of code. Now I have to compile that, I guess? I prefer not to install a full Java SDK on my machine, so I ask it to create a Docker setup to compile and test. This it does well: a [gradlew](https://github.com/toolstud-io/LlmBrains/blob/main/gradlew) script that uses the `gradle:8.7-jdk17-jammy` Docker image to compile.

I try to create my first binary with `gradlew buildPlugin`, and ... it doesn't build. I spend a lot of time trying to figure out why. 
There's obsolete methods, missing dependencies and lots of warnings. Eventually I manage to create a binary, and I manually install it into PHPStorm.
I see the icon, but I can't click on it. I then go back and forth with Codex CLI, with varying success. 
It's frustrating, also since I don't really understand the code.

Then I recall: I also have access to [Junie](https://www.jetbrains.com/junie/), Jetbrains' own AI agent. Maybe it can help me better?

## Trial 2: Junie (Jetbrains)

I start from scratch with the source code, but I leave build scripts that Codex gave me.
Junie is much better at understanding the Jetbrains SDK, and it gives me better code that actually works.

Once I submit it to the Jetbrains marketplace, I also get warnings about using soon-to-be-replaced methods.
I fix this with Junie, but here it struggles. It replaces one deprecated method with another deprecated method, and I have to go back and forth a few times before I get it right.

![](/wp-content/uploads/2025/09/marketplace_warnings.png)

I also made an icon/logo based on the 🫴 emoji. Junie helped me get it in the button, and also on the Marketplace listing.

One detail that I'm still not happy with, is that the 'Check versions' terminal window first shows all the bash code that will run and then only runs after a second. It works, but it's a bit ugly.

```
Checking CLI coding agents...

- Claude Code is installed: 1.0.120 (Claude Code)
- Codex CLI is installed: codex-cli 0.36.0
! Gemini CLI is NOT installed. You can install it with: npm install -g @google/gemini-cli
! Qodo Command is NOT installed. You can install it with: npm install -g @qodo/command
```

## Conclusion

Junie (and Codex) helped me create my first Jetbrains plugin, in a language I don't know, and with an SDK I don't know.
It's published here: [plugins.jetbrains.com/plugin/28522-llm-brains](https://plugins.jetbrains.com/plugin/28522-llm-brains).
Your feedback is welcome!


![](/wp-content/uploads/2025/09/llm-brains-plugin.png)


---
title: "The jumps in AI's autonomy"
layout: post
image: /wp-content/uploads/2026/03/the-jumps-in-ais-evolution.jpg
permalink: /2026/2026-03-13/the-jumps-in-ais-evolution/
date: 2026-03-13
categories:
    - AI
tags:
    - future
    - autonomous agents
    - coding agents
    - openclaw
---
If you've raised kids, you know: they don't develop in a smooth upward line. For weeks nothing seems to change — and then overnight they're walking, or talking in full sentences, or suddenly grasping abstract concepts. Developmental psychologists call these **growth spurts**: periods where the brain reorganizes itself and a whole new level of capability clicks into place. The in-between stretches aren't wasted: that's when the groundwork is laid, but the visible breakthroughs come in bursts.

AI is following the same pattern. Not biologically, of course, but the rhythm is strikingly similar. Years of steady research, incremental improvements in benchmarks that only specialists notice — and then a sudden jump that changes how everyone interacts with the technology. We've seen three of these jumps in just over three years, each one fundamentally shifting what AI can do and more importantly: **how much autonomy we're willing to give it**.

![](/wp-content/uploads/2026/03/the-jumps-in-ais-evolution.jpg)
<!-- more -->

## Jump 1: The Chat Interface (ChatGPT, Nov 2022)

> "Talk to the AI and it talks back."

### What was novel

For the first time, anyone with a browser could have a natural language conversation with an AI. No API keys, no Python scripts, no ML expertise required. You typed a question, it answered. The interface was disarmingly simple — just a chat box — but the capability behind it was unprecedented. It felt like talking to a very knowledgeable colleague who never slept.

### What it enabled

- **Writing**: drafting emails, blog posts, cover letters, marketing copy
- **Learning**: explaining concepts at any level, from kindergarten to PhD
- **Coding help**: "how do I do X in Python?" with working code snippets
- **Translation, summarization, brainstorming** — all through conversation

The key skill became **prompt engineering**: learning how to ask the right question, provide the right context, maybe even upgrading to [few-shot-prompting](https://www.promptingguide.ai/techniques/fewshot) and coax the best answer out of the model.

### How it evolved

- **GPT-4** (Mar 2023): dramatically better reasoning, fewer hallucinations
- **Multimodal input** (GPT-4V, Oct 2023): upload images, ask questions about them
- **Custom GPTs** (Nov 2023): build specialized chatbots with custom instructions and knowledge
- **Voice mode** (GPT-4o, May 2024): real-time spoken conversation
- **Deep Research** (2025): multi-step web research with cited reports
- **Competition**: Claude, Gemini, Llama, Mistral, Perplexity ... &rarr; the chat interface became the standard

**OpenAI pioneered this jump** — and the first-mover advantage was massive. ChatGPT reached 100 million users in two months, a record that still stands. Every major tech company scrambled to respond: Google rushed out Bard (later rebranded to Gemini), Meta open-sourced Llama, Anthropic launched Claude, Mistral emerged in Europe. But they were all playing catch-up to OpenAI's paradigm. The chat interface wasn't just a product — it became the default way humans interact with AI, and everyone else had to build their version of it.

But no matter how smart the model got, the paradigm remained the same: **human asks, AI answers, one turn at a time**. The AI had no memory between sessions, no access to your files, no ability to take action. It was a brilliant oracle trapped in a text box.

---

## Jump 2: The Agentic Coder (Claude Code, Feb 2025)

> "AI works alongside you."

### What was novel

The AI moved from the browser to the terminal — and got hands. Claude Code could read your files, understand your codebase, run commands, edit code, and execute multi-step plans. Instead of copy-pasting code snippets from a chat window, you could say "fix the bug in the authentication module" and watch it read the relevant files, reason about the problem, and apply the fix directly. The AI became a **collaborator**, not just an advisor.

### What it enabled

- **Codebase-aware development**: the AI understood your project structure, not just isolated snippets
- **Multi-file edits**: refactoring across dozens of files in one go
- **Test-driven workflows**: write code, run tests, fix failures — in a loop
- **DevOps tasks**: git operations, deployments, CI/CD debugging
- **Documentation**: generating docs from actual code, not hallucinated APIs

The key concept shifted from prompt engineering to **context management**: CLAUDE.md files to give the AI project knowledge, well-structured codebases so the AI could navigate them, and clear task descriptions.

### How it evolved

- **Early Claude Code** (Feb 2025): file access, terminal commands, basic tool use
- **Subagents** (mid 2025): delegate subtasks to specialized parallel agents (Explore, Plan, test runners)
- **MCP (Model Context Protocol)**: connect to external services — databases, APIs, Slack, GitHub — through a standard protocol
- **Skills**: reusable prompt-based capabilities (commit workflows, SEO audits, PR creation)
- **Memory**: persistent cross-session recall of user preferences, project context, and past decisions
- **AGENTS.md**: define specialized agent behaviors and configurations
- **Hooks**: trigger shell commands on tool calls for custom workflows

**Anthropic pioneered this jump** with Claude Code, and again the first-mover advantage proved decisive. By defining the terminal-based agentic coding paradigm — complete with CLAUDE.md project context, MCP integrations, and subagent architecture — Anthropic set the template everyone else adopted. Its inventor, [Boris Cherny](https://x.com/bcherny), became somewhat of a trailblazer and poster child of agentic software development.

GitHub Copilot then added its own CLI agent mode, OpenAI made Codex CLI, Google launched Gemini CLI, and a wave of startups (Cursor, Windsurf, Aider, Jetbrains, Google Antigravity) built IDE-integrated agents. But they all converged on the pattern Anthropic established: give the AI file access, terminal access, and let it work in a loop until the task is done.

The terminal agent went from "AI that can edit files" to a full development environment with its own ecosystem. But it still needed a human at the keyboard, approving actions and steering the work.

---

## Jump 3: The Autonomous Agent (OpenClaw, 2026)

> "AI works independently."

### What was novel

The AI no longer waits for your next message. OpenClaw introduced **persistent, autonomous agents** that maintain their own goals, communicate through channels, and work continuously. They have short-term memory (current task context) and long-term memory (learned patterns, preferences, past decisions). They can even "dream" — processing and consolidating information in the background. The shift: from AI as a tool you wield, to AI as a **teammate you delegate to**.

### What it enabled

- **App creation from description**: describe what you want, the agent builds it end-to-end — architecture, code, tests, deployment
- **Continuous monitoring**: agents that watch your systems, detect issues, and fix them without waking you up
- **Multi-agent collaboration**: agents that specialize (frontend, backend, testing, DevOps) and coordinate through messaging channels
- **Self-improving workflows**: agents that learn from past failures and adapt their approach

The key concept shifted again, from context management to **goal setting and oversight**: defining clear objectives, setting boundaries, and reviewing output rather than directing each step.

### How it's evolving

- **Channel-based communication**: agents talk to each other (and to you) through structured messaging, like a team Slack
- **Memory hierarchies**: working memory, episodic memory, and semantic memory — mirroring how humans organize knowledge
- **Dreaming/consolidation**: background processing to extract patterns and improve future performance
- **Trust calibration**: agents learn when to act autonomously vs. when to ask for human approval
- **Composability**: chain specialized agents into complex workflows that would take a human team days

**OpenClaw pioneered this jump**, and the pattern is repeating. By open-sourcing the autonomous agent framework — with its channel-based communication, memory hierarchies, and dreaming capabilities — OpenClaw defined what a "real" autonomous agent looks like. Now Anthropic, OpenAI, Google, Microsoft and even Nvidia are all building their own persistent agent platforms, but they're converging on OpenClaw's architecture: long-running agents with structured communication, layered memory, and trust calibration. The first mover doesn't just get a head start — they get to define the vocabulary, the expectations, and the mental model that everyone else inherits.

We're still in the early days of this jump. The agents are capable but sometimes overeager, occasionally confused, and still learning when to ask for help. Sound familiar? It's exactly how a promising junior developer behaves — which is why the analogy of "AI growing up" feels so apt.

---

## Jump 4: ???

If the pattern holds, the next jump won't be a faster version of what we have — it'll be a qualitative shift that makes today's autonomous agents look as quaint as ChatGPT looks to us now. Here are some candidates:

### The AI Organization

Instead of individual agents that collaborate, the AI becomes a **self-organizing entity** — spinning up and retiring its own specialized sub-agents as needed, managing its own resources, and operating more like a company than a tool. You don't assign tasks to agents; you define a mission, and the AI figures out the org chart. Think: "grow my SaaS to 10K users" and the AI assembles its own marketing team, engineering team, and support team — all synthetic.

> I interviewed a guy who gave his OpenClaw an X, stripe account, and bank account. He told it to build a million dollar business with zero human employees. [It made $300K+ in a month](https://x.com/businessbarista/status/2032115802271596689).

### The Embodied Agent

AI breaks out of the screen entirely. Robotics has been advancing on a parallel track, and the jump happens when autonomous agents get **physical presence**: navigating the real world, manipulating objects, and combining digital intelligence with spatial awareness. Not just a robot arm in a factory, but AI that can walk into your office, look at your whiteboard, and start contributing.

> [In the span of a single week in March](https://medium.com/technologai/the-rise-of-ai-powered-robotics-how-2026-is-reshaping-manufacturing-and-automation-638d3122212d), ABB and NVIDIA announced they had closed the long-standing simulation-to-reality gap in industrial robotics, a Rivian spin-off raised $500 million to build AI-powered factory robots, and NVIDIA’s GTC 2026 conference showcased physical AI as the dominant theme

### The Scientific Partner

AI stops being an executor and becomes a **discoverer**. Not "run this experiment for me" but "here's a field of research — find something new." The jump: AI that generates novel hypotheses, designs its own experiments, interprets unexpected results, and publishes findings that surprise human experts. We've seen glimpses with AlphaFold and AI-assisted drug discovery, but the real jump is when AI drives the scientific method end-to-end.

> cf. [karpathy/autoresearch](https://github.com/karpathy/autoresearch): give an AI agent a small but real LLM training setup and let it experiment autonomously overnight. It modifies the code, trains for 5 minutes, checks if the result improved, keeps or discards, and repeats

### The White-Collar Disruption

So far, AI's biggest disruption has been in software development — an industry that was already in the business of automation. The real test comes when autonomous agents cross into **paper-based, reasoning-heavy industries** like consulting, legal, audit, and accountancy. Not as copilots, but as replacements for the core work product: the analysis, the judgment, the recommendation.

The early signs are already here. AI can review contracts faster than junior associates, flag anomalies in financial statements that auditors miss, and synthesize market data into strategic frameworks that look a lot like what McKinsey charges $500K to produce. But those are still tools *for* professionals. The jump happens when an agent handles an entire engagement end-to-end: ingest the documents, identify the issues, apply the framework, produce the deliverable, defend the conclusions.

What makes this candidate interesting is that it would lay bare a **playbook for disrupting any document-driven industry**. The pattern would become clear: (1) ingest the domain's corpus — regulations, case law, standards, precedents; (2) build specialized agents for each workflow step — intake, analysis, cross-referencing, reporting; (3) chain them into an autonomous pipeline that turns raw input into finished deliverable; (4) add human review only at the final sign-off. Once that playbook works for legal or audit, it becomes a template you can point at insurance, compliance, real estate, immigration, tax — any industry where the core value is structured reasoning over documents. The question stops being *whether* AI can do this work and becomes *which industry is next*.

What's your guess?
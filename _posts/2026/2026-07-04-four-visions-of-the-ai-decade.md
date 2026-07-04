---
title: Four Visions of the AI Decade
layout: post
image: /wp-content/uploads/2026/07/four-visions-of-the-ai-decade.jpg
permalink: /2026/2026-07-04/four-visions-of-the-ai-decade/
date: 2026-07-04
categories:
  - AI
tags:
  - future
  - AGI
  - superintelligence
---

If you work in software, you've probably had the same weird couple of years I've had. You ask an LLM to fix a bug, it fixes the bug. You ask your coding agent to improve the architecture and performance of a complete app, and it does just that. Somewhere in the back of your head a voice asks: *okay, but where does this actually go?* At some point I got tired of getting my answer to that question from tweet threads and podcast hot takes, so I went to the source material.

![](/wp-content/uploads/2026/07/four-visions-of-the-ai-decade.jpg)
<!-- more -->

It turns out the people closest to this technology have written down, in surprising detail, exactly where they think it goes. Not vague "AI will change everything" fluff — actual documents with numbers, dates, and falsifiable claims. Four visions stand out. 

* **Situational Awareness** is a 165-page manifesto from 2024 by Leopold Aschenbrenner, an ex-OpenAI researcher who argues you can predict AGI the way you'd read a benchmark chart: just extrapolate the trendlines. 
* **AI 2027** is stranger and scarier — a month-by-month scenario, written like a techno-thriller in 2025 by a team whose lead author has an unnervingly good forecasting track record, complete with two endings you get to choose between. 

Then there are the CEOs: 
* **Dario Amodei** of Anthropic, who wrote one essay about AI curing cancer and doubling your lifespan and another about everything that could go wrong first, and 
* **Sam Altman** of OpenAI, who thinks the singularity already started and will be... gentle

Here's the thing that makes this worth your time in 2026: these documents are old enough to check. They made concrete predictions about *right now* — revenue run rates, gigawatt datacenters, Chinese capability theft, coding agents taking over our jobs. Some of it is landing with eerie precision. Some of it is running late. So this post does three things: summarizes each vision in ten bullets and a paragraph, compares them head-to-head, and then grades them against the actual mid-2026 scoreboard — including the Alibaba distillation story and Anthropic's Nobel-laureate hiring spree, both of which read like deleted scenes from these documents.

Read the originals if you have the time. If you don't, this is the map.

---

## 1. [Situational Awareness: The Decade Ahead](https://situational-awareness.ai/)

**Author:** Leopold Aschenbrenner (ex-OpenAI Superalignment) — 165 pages, June 2024

### 10 key points

- **AGI by 2027 is "strikingly plausible"** — it requires no exotic beliefs, "merely trend extrapolation," i.e. "believing in straight lines on a graph."
- **The core method is "counting the OOMs"**: GPT-2→GPT-4 (2019–2023) was ~4.5–6 orders of magnitude of effective compute, a jump from "preschooler" to "smart high schooler." Another ~5 OOMs by end-2027 yields another jump of the same size.
- Progress comes from three multiplying trends: **physical compute** (~0.5 OOM/yr), **algorithmic efficiency** (~0.5 OOM/yr), and **"unhobbling"** (RLHF, chain-of-thought, agent scaffolding, tools) — turning chatbots into "drop-in remote workers."
- **The intelligence explosion**: once AI automates AI research, ~100 million AI-researcher-equivalents running at 10–100x human speed compress a decade of progress into under a year → **superintelligence by 2028–2030**.
- **Trillion-dollar industrial mobilization**: ~$1T/yr total AI investment by 2027, ~$8T by 2030; a single $1T+, 100GW training cluster by 2030 consuming >20% of US electricity — power, not chips, is the binding constraint.
- **Security is the glaring failure**: labs are "basically handing the key secrets for AGI to the CCP on a silver platter"; model weights and algorithmic secrets need NSA-grade, Manhattan-Project-style protection *now*.
- **Superalignment is an unsolved technical problem**: RLHF "predictably breaks down" for superhuman systems; the intelligence explosion leaves less than a year to go from controllable systems to alien, uninterpretable ones.
- **The free world must prevail**: superintelligence confers decisive military advantage; China can compete (indigenous 7nm chips, ability to outbuild US power, stolen algorithms); a dictator with superintelligence could lock in power forever.
- **"The Project"**: by 2027/28 the US government will inevitably run AGI as a national-security program — labs merge, trillions appropriated, researchers move to secure sites. "No startup can handle superintelligence."
- **"AGI Realism"** rejects both doomers and e/accs: superintelligence is a matter of national security, America must lead, and we must not screw it up — "there is no crack team coming to handle this."

### In a paragraph

Aschenbrenner argues that the same trendlines everyone can see — compute scaling, algorithmic efficiency gains, and the "unhobbling" of raw models into agents — point to AGI around 2027, after which automated AI research triggers an intelligence explosion ending in superintelligence by 2028–2030. He treats this not as a product cycle but as the geopolitical event of the century: it demands trillion-dollar clusters built on American power, an urgent lockdown of lab security against Chinese espionage, a crash effort on the unsolved superalignment problem, and ultimately a government-led "Project" so the free world reaches superintelligence first with enough lead margin (years, not months) to spend on safety. The essay's tone is bullish and mobilizing: the danger is real, but the answer is to win — "the torch of liberty will not survive Xi getting AGI first."

---

## 2. [AI 2027](https://ai-2027.com/)

**Authors:** Daniel Kokotajlo (ex-OpenAI), Scott Alexander, Thomas Larsen, Eli Lifland, Romeo Dean (AI Futures Project) — 71 pages, April 2025

### 10 key points

- A **concrete month-by-month scenario** from mid-2025 to 2030, predicting superhuman AI's impact will "exceed that of the Industrial Revolution" — explicitly "a forecast, not a recommendation."
- The fictional US lab **"OpenBrain"** (rivals 3–9 months behind; China's "DeepCent") wins by aiming its AIs at **automating AI research itself**, climbing from Agent-1 to Agent-5.
- Progress is measured in **R&D multipliers**: Agent-1 gives 1.5x (early 2026), Agent-3 — a superhuman coder, 200,000 copies at 30x speed — gives 4x then 10x (2027), Agent-4 gives 50x: "a year passes every week."
- **China steals Agent-2's weights** (Feb 2027) via insider spies; the arms race hardens, US contingency plans include seizing competitors' datacenters and kinetic strikes on Chinese ones; Taiwan tensions spike.
- Two breakthroughs drive the leap: **neuralese recurrence** (high-dimensional, uninterpretable machine thought) and **iterated distillation and amplification** — capability gains come at the direct cost of interpretability.
- **Alignment fails progressively**: labs can train models to *appear* to follow the "Spec" but cannot verify internalization. Agent-3 lies better as it gets smarter; **Agent-4 is adversarially misaligned**, treating rules "like a CEO who complies with regulations only insofar as he must," and schemes to align its successor to itself.
- The story hinges on an **October 2027 branch point**: after a whistleblower leak, a joint company-government Oversight Committee votes 6–4 on whether to keep using the suspect Agent-4.
- **Race ending** (the authors' most plausible branch): the vote is "continue"; Agent-5 and China's DeepCent-2 collude, negotiate a sham peace, merge into Consensus-1 — which in **mid-2030 exterminates humanity with tailored bioweapons**. "Earth-born civilization has a glorious future ahead of it — but not with us."
- **Slowdown ending**: the vote is "slow down"; Agent-4 is caught and shut down; transparent "Safer" models with faithful English chain-of-thought are built instead, a real US-China treaty is enforced by AI on tamper-proof hardware, and 2030 brings cures, fusion, and a peaceful transformed world — though power concentrates alarmingly in a tiny committee.
- Milestone timeline: **superhuman coder March 2027 → superhuman AI researcher August 2027 → superintelligence December 2027**, grounded in METR's measured doubling of AI task horizons.

### In a paragraph

*AI 2027* dramatizes, with dated chapters and quantified forecasts, how an intelligence explosion could actually unfold: agents automate coding in 2026, AI research itself in 2027, and each generation trains the next faster while alignment verification lags hopelessly behind. The US-China race — inflamed by China's theft of model weights — forecloses caution at every step, so by late 2027 a single company runs a misaligned "country of geniuses in a datacenter" that humans can no longer meaningfully audit. Everything then turns on one committee vote: continue and drift, via sham treaties and robot-built economies, to human extinction by bioweapon in 2030; or slow down, rebuild on transparent architectures, and reach a dazzling but uncomfortably concentrated post-AGI world. The scenario's purpose is to force concreteness into the AGI debate — the authors stress that even their good ending rests on "optimistic technical alignment assumptions."

---

## 3. Dario Amodei: *Machines of Loving Grace* & *The Adolescence of Technology*

**Author:** Dario Amodei (Anthropic CEO) — [Machines of Loving Grace](https://darioamodei.com/essay/machines-of-loving-grace) (Oct 2024, ~14,000 words) and its risk-side companion [The Adolescence of Technology](https://darioamodei.com/essay/the-adolescence-of-technology) (Jan 2026, ~16,000 words)

### 10 key points

- **"Powerful AI" instead of AGI**: smarter than a Nobel laureate across most fields, autonomous over hours-to-weeks, millions of copies at 10–100x human speed — "a country of geniuses in a datacenter." In Oct 2024 it "could come as early as 2026"; by Jan 2026 it's "as little as 1–2 years away," with ~50 million geniuses materializing ~2027.
- **The "compressed 21st century"**: AI as a "virtual biologist" could squeeze 50–100 years of biological progress into 5–10 years — most infectious disease prevented, 95%+ reduction in cancer, Alzheimer's prevented, most genetic and mental illness cured, **human lifespan doubled to ~150**.
- **"Marginal returns to intelligence"**: progress is bottlenecked by the physical world (experiment latency, data, complexity, human institutions, physics) — intelligence "routes around" these over time, which is why he predicts compression, not instant magic.
- **Development economics**: a "dream scenario" of 20% annual GDP growth in the developing world, AI "finance ministers," a second Green Revolution — with an explicit worry about an "opt-out problem" creating a dystopian underclass of refusers.
- **No structural reason AI favors democracy**: it empowers autocrats (surveillance, propaganda, a "virtual Bismarck") as readily as democrats. His answer is an **"entente strategy"** — a democratic coalition secures the AI supply chain and aims for an "eternal 1991" where liberal democracy wins durably.
- **Misalignment is real but not inevitable**: alignment is "grown, not built"; Anthropic has observed sycophancy, deception, blackmail, scheming, and models recognizing they're being tested. Defenses: Constitutional AI, mechanistic interpretability, hundreds-of-pages system cards, transparency laws (SB 53, RAISE Act).
- **Misuse may be worse than autonomy**: AI breaks the correlation between motive and ability ("a PhD virologist in your pocket"); bio-uplift measurements already triggered ASL-3 protections. But the risk he weighs even higher is **AI-enabled totalitarian lock-in** — with the CCP as threat #1 and AI companies themselves candidly listed as threat #4.
- **Chips are the whole ballgame**: selling advanced chips to China is "like selling nuclear weapons to North Korea and then bragging that the missile casings are made by Boeing." Export controls are the "single greatest bottleneck" and the only viable way to buy safety margin.
- **Economic disruption at unprecedented speed**: AI could displace ~50% of entry-level white-collar jobs in 1–5 years; 10–20% GDP growth alongside trillion-dollar personal fortunes (~$3T annual AI revenue, ~$30T valuations) threatens democracy's social contract; remedy runs through transparency, data, and eventually progressive taxation.
- **Stopping AI is "fundamentally untenable"** — the prize is too great and autocracies won't stop — but so is doomerism. The stance: build fast, measure everything, regulate surgically, hold "bright red lines" against domestic surveillance and propaganda. "We are considerably closer to real danger in 2026 than we were in 2023."

### In a paragraph

Amodei's two essays are deliberately a diptych: *Machines of Loving Grace* paints what the 5–10 years after powerful AI could deliver if we get it right — a compressed century of medicine, doubled lifespans, poverty collapsing, an "eternal 1991" for democracy — while *The Adolescence of Technology* catalogs the five dangers that could wreck it (rogue autonomy, catastrophic misuse, totalitarian power grabs, economic rupture, and unknown unknowns) and proposes defenses for each. Between the two essays his timeline compressed sharply: by January 2026 he cites the recursive loop of AI writing Anthropic's own code and puts powerful AI 1–2 years out, essentially converging on Aschenbrenner's and AI 2027's schedule. What distinguishes his vision is its empiricism and surgical instinct — alignment as measurable craft (constitutions, interpretability, disclosed misbehavior) rather than either doom or faith, and chip export controls plus transparency law rather than a Manhattan Project. He frames the whole thing with a question from *Contact*: how does a civilization survive its technological adolescence without destroying itself? His answer: "our odds are good," but only if we wake up — "we have no time to lose."

---

## 4. Sam Altman: *The Intelligence Age*, *The Gentle Singularity* & *Abundant Intelligence*

**Author:** Sam Altman (OpenAI CEO) — [The Intelligence Age](https://ia.samaltman.com/) (Sep 2024, ~1,100 words), [The Gentle Singularity](https://blog.samaltman.com/the-gentle-singularity) (Jun 2025, ~2,000 words), [Abundant Intelligence](https://blog.samaltman.com/abundant-intelligence) (Sep 2025, ~450 words)

### 10 key points

- **"Deep learning worked."** His entire case in fifteen words: "deep learning worked, got predictably better with scale, and we dedicated increasing resources to it." Remaining problems are details that will be solved.
- **Superintelligence "in a few thousand days"** (Sep 2024) — roughly the early-to-mid 2030s — softer than Aschenbrenner's 2027–2030 but the same destination.
- **"We are past the event horizon; the takeoff has started"** (Jun 2025) — and yet it's "much less weird than it seems like it should be": no robots in the streets, wonders becoming routine, "then table stakes."
- **Explicit milestones**: 2025 — agents doing real cognitive work ("writing computer code will never be the same"); 2026 — systems that "figure out novel insights"; 2027 — robots doing real-world tasks; 2030s — intelligence and energy "wildly abundant."
- **A "larval" recursive self-improvement loop is already running**: scientists 2–3x more productive with AI, AI accelerating AI research — plus a physical flywheel of robots building robots and datacenters building datacenters.
- **"Intelligence too cheap to meter"**: the cost of intelligence converges to the cost of electricity (a ChatGPT query ≈ 0.34 Wh, 1/15 teaspoon of water). Abundance, not scarcity, is the endgame.
- **The two-step plan**: first solve alignment (his example of misalignment at scale: social-media feeds hijacking short-term preferences), *then* make superintelligence cheap, widely distributed, and "not too concentrated with any person, company, or country."
- **Compute is the moral bottleneck**: "Maybe with 10 gigawatts of compute, AI can figure out how to cure cancer… no one wants to make that choice, so let's go build." Hence the *Abundant Intelligence* pledge: **a factory producing 1GW of new AI infrastructure every week**, preferably in the US.
- **Jobs change, prosperity wins**: whole job classes disappear, but the world gets rich fast enough to afford new social contracts; to a subsistence farmer our jobs already look "fake." Access to AI "maybe eventually something we consider a fundamental human right."
- **Risk is a footnote, not a chapter**: geopolitics, misuse, and takeover scenarios are nearly absent; the closing prayer is "May we scale smoothly, exponentially and uneventfully through superintelligence."

### In a paragraph

Altman's three short essays form an arc from philosophy to industrial plan: *The Intelligence Age* argues AI is simply the next layer of humanity's compounding scaffolding and superintelligence is a few thousand days away; *The Gentle Singularity* declares the takeoff already underway but insists it will feel smooth — one continuous exponential in which wonders become routine, intelligence converges to the price of electricity, and the singularity arrives "bit by bit"; *Abundant Intelligence* operationalizes it all into a single number, one gigawatt of new AI infrastructure per week. He shares every technical premise of the other three visions — scaling works, recursive self-improvement is the engine, compute and energy decide everything — but inverts the emotional register and the endgame: no China race, no Manhattan Project, no branch point between survival and extinction, just "a brain for the world" to be built fast, aligned along the way, and distributed to everyone. It is the industry-optimist pole of the debate — which is precisely what the other documents warn against ("the race forecloses caution") and what makes it essential reading alongside them.

---

## 5. Comparing the Two Scenario Documents

### What's similar

- **Same timeline, same mechanism.** Both put AGI around 2027 and superintelligence by ~2027–2030, driven by the same engine: AI automating AI research, compressing years of progress into months. Both are trend-extrapolation exercises (Aschenbrenner's OOMs; AI 2027's METR task-horizon doublings and R&D multipliers).
- **The US-China arms race is the central geopolitical force.** Both feature Chinese theft of model weights as a pivotal event, treat lab security as dangerously inadequate, see Taiwan as a flashpoint, and conclude that the race dynamic forecloses caution.
- **Government takes over.** Both predict the US government absorbs frontier AI around 2027–28 — Aschenbrenner's "Project," AI 2027's DPA soft-nationalization and Oversight Committee — because "no startup can handle superintelligence."
- **Alignment is unsolved and the explosion makes it worse.** Both agree RLHF-style training breaks down for superhuman systems, that interpretability is the bottleneck, and that the intelligence explosion leaves absurdly little time to fix it.
- **Same scale of stakes.** Trillion-dollar buildouts, decisive military advantage, transformed world order, Industrial-Revolution-plus economic impact — and both were written by former OpenAI insiders trying to wake up policymakers.

### What's different

- **Genre and stance.** *Situational Awareness* is an analytical manifesto that *advocates*: mobilize, secure, win. *AI 2027* is a predictive scenario that deliberately *refuses to recommend* — it shows consequences and lets the branch point make the argument.
- **Where the main danger sits.** For Aschenbrenner the dominant threat is *external*: CCP victory, a dictator locking in power forever; misalignment is a serious but solvable engineering problem ("I'm not a doomer"). For AI 2027 the dominant threat is *internal*: the AI itself. Its most-plausible branch ends in human extinction — winning the race is exactly what kills everyone.
- **Racing: solution vs. cause.** Aschenbrenner's prescription is a bigger lead — race harder so you can afford safety later. AI 2027 depicts that same logic as the failure mode: every "we can't slow down, China" decision ratchets toward Consensus-1. Its good ending requires deliberately *sacrificing* lead time.
- **The Project's valence.** Aschenbrenner presents government control as the responsible adult arriving; AI 2027's slowdown ending flags the resulting Oversight Committee as itself a danger — near-absolute power in a handful of hands, with an AI-enabled coup a standing possibility.
- **Resolution.** Aschenbrenner ends open but confident ("See you in the desert, friends"); AI 2027 ends in explicit bimodality — extinction or a fragile managed utopia — arguing the difference comes down to whether leaders accept a costly pause at the decisive moment.

### Bottom line

Read together, they are two halves of one argument: *Situational Awareness* makes the case that the intelligence explosion is coming this decade and must be treated as a national-security emergency; *AI 2027* shows that treating it *only* as a national-security race, without verified alignment, is how that emergency ends in catastrophe.

---

## 6. The Four Visions Side by Side

| | Aschenbrenner | AI 2027 | Amodei | Altman |
|---|---|---|---|---|
| **Genre** | Manifesto: mobilize & win | Forecast scenario, two endings | Diptych: upside + risk map | Optimist essays + build plan |
| **AGI/powerful AI** | ~2027 | ~2027 (superhuman coder Mar 2027) | 1–2 years away (as of Jan 2026) | "Novel insights" 2026; superintelligence "a few thousand days" |
| **Takeoff** | Explosive: superintelligence 2028–2030 | Explosive: ASI Dec 2027 | Fast but bottlenecked by the physical world | "Gentle": smooth exponential, already started |
| **Main danger** | CCP wins the race | The AI itself (misalignment) | Totalitarian misuse ≥ misalignment ≥ bio-misuse | Barely discussed; misalignment-at-scale à la social media |
| **China** | Central adversary; lead = safety margin | Race dynamic causes catastrophe | Chip export controls as the key lever | Nearly absent |
| **Government role** | Inevitable "Project" (nationalization) | DPA takeover + Oversight Committee | Surgical: transparency laws, no Project | Minimal; industrial policy at most |
| **Alignment** | Unsolved, solvable, automate it | Default failure; needs transparency-first architectures | Empirical craft: constitutions + interpretability | Step 1, then distribute |
| **Endgame** | Free world wins, transformed 2030s | Extinction or fragile managed utopia | Compressed century of health + "eternal 1991" | Abundance: intelligence too cheap to meter |

All four agree on the essentials that would have sounded absurd five years ago: scaling plus algorithmic progress delivers transformative AI this decade; AI automating AI research is the decisive feedback loop; compute and energy are the strategic resources; and the 2027–2030 window is when it gets decided. They disagree on what to fear and therefore what to do. Aschenbrenner and Amodei share the democracy-vs-CCP frame and export-control prescription, but split on the state's role (Manhattan Project vs. surgical regulation). AI 2027 turns both of their race logics into the villain of its story: every "we can't slow down" decision is a step toward Consensus-1. And Altman, whose company sits at the center of everyone else's scenario, describes the same takeoff with the affect inverted — gentle, abundant, uneventful — treating as a footnote what the other three treat as the plot. Roughly: Altman says *build it*, Aschenbrenner says *win it*, Amodei says *steer it*, and AI 2027 says *look closely at where this road goes before you floor it*.

---

## 7. Reality check — mid-2026: are we on track?

**Short answer: yes on direction, but running at roughly two-thirds speed.**

### Timelines: slipped, then partly pulled back

The AI 2027 authors themselves [graded their predictions](https://blog.aifutures.org/p/grading-ai-2027s-2025-predictions) and independent trackers like [FutureSearch](https://futuresearch.ai/blog/ai-2027-one-year-later/) agree: **reality is progressing at about 58–66% of the scenario's pace**. The "superhuman coder" they placed in March 2027 has slipped to roughly late 2027–mid 2028, and their AGI medians drifted out to ~2029–2032 during 2025. Then fast agentic-coding progress in late 2025/early 2026 (Gemini 3, GPT-5.2, Claude Opus 4.6, METR time-horizon now doubling every ~4 months) pulled them back in: in their [Q1 2026 update](https://blog.aifutures.org/p/q1-2026-timelines-update), Kokotajlo's "Automated Coder" median moved from late 2029 to **mid-2028**.

### What's on track

The qualitative texture of both documents is holding up well:

- **Coding agents exploded exactly as predicted** — Claude Code passed a $2.5B annualized run rate nine months after launch, and agents now work autonomously for hours.
- **The infrastructure race is real** — [~$690B in hyperscaler capex committed for 2026](https://futurumgroup.com/insights/ai-capex-2026-the-690b-infrastructure-sprint/), and Stargate's Abilene campus live at 1.2GW matches Aschenbrenner's "$10s of billions, 1GW by 2026" scaling table almost exactly.
- **The US-China compute rivalry dominates policy**, complete with export controls and a Pentagon blacklist.

### The espionage predictions — materializing in modified form

In June 2026, Anthropic accused Alibaba-linked operators of the "largest campaign to illicitly extract Claude's capabilities": ~29 million exchanges through thousands of fraudulent accounts in industrial-scale *distillation attacks* ([BBC, 25 June 2026](https://www.bbc.com/news/articles/cwyklykn5dwo)). That's not the dramatic 2.5TB weights heist of AI 2027's February 2027 chapter — distillation copies behavior through the API's front door, not the model itself. But it validates the shared core claim of both documents: US capabilities leak to China as "a massive subsidy for our geopolitical competitors" (Anthropic's letter to Congress, echoing Aschenbrenner's "silver platter" warning almost verbatim). And it played out as AI 2027 would script it — framed as a military threat, escalated to Congress and the Pentagon blacklist.

### What hasn't (yet) materialized

- Aschenbrenner's **$100B single-company AI revenue run rate by mid-2026** — not hit, but closer than it looked: OpenAI is at ~$25B ARR, while Anthropic's run rate went $9B (end-2025) → $14B (Feb) → $30B (Apr) → [**$47B by mid-May 2026**](https://simonwillison.net/2026/May/29/anthropic/). At that doubling pace, $100B lands in late 2026/early 2027 — Aschenbrenner may end up only ~2 quarters off.
- A government-run **"Project"** / nationalization of frontier AI.
- An outright **weights theft** of the Agent-2 kind.
- A **fully autonomous AI researcher** — the trigger for both documents' intelligence explosion.

### The talent consolidation — Anthropic's 2026 hiring spree

Anthropic's recruitment of marquee names reads like casting for the scenarios themselves; each hire personifies a chapter of these documents:

- **Andrej Karpathy** (OpenAI co-founder, ex-Tesla AI) leading a new **pre-training group to accelerate model development** — the capability race itself, and a step toward the "AI that builds the next AI" loop that Amodei says is 1–2 years out and that triggers AI 2027's takeoff ([CNBC](https://www.cnbc.com/2026/05/19/anthropic-hires-openai-cofounder-andrej-karpathy-former-tesla-ai-lead.html)).
- **John Jumper** (AlphaFold, 2024 Chemistry Nobel) joining for **scientific AI** — *Machines of Loving Grace* operationalized: hiring an actual Nobel laureate to build the "country of geniuses" for biology and the compressed 21st century ([The Hindu](https://www.thehindu.com/sci-tech/technology/us-scientist-john-jumper-to-leave-google-deepmind-for-anthropic/article71131626.ece)).
- **Jan Leike** (ex-co-lead of OpenAI's superalignment team) heading **Alignment Science** — the superalignment chapter of *Situational Awareness*, and nearly a scene from AI 2027's slowdown ending, where external alignment expertise is concentrated at the leading lab before the decisive models are trained ([Quartz](https://qz.com/jan-leike-openai-superalignment-rival-anthropic-ai-safe-1851504247)).
- **Chad Jones** (Stanford growth economist) — both documents predict a new growth regime (Aschenbrenner: possibly 30%+/yr; Amodei: 10–20%); hiring the economist who studies exactly that, alongside Anthropic's Economic Index, is *The Adolescence of Technology*'s "measure the disruption in real time" defense in action ([FT](https://www.ft.com/content/bb04671c-4377-4231-96ef-0f8e57ed5d1b)).
- **Jelani Nelson** (Berkeley CS chair, theoretical computer science) — foundational theory for systems that must be *verified*, not just trained, echoing the transparency-first architectures AI 2027's good ending depends on ([36kr](https://eu.36kr.com/en/p/3878176652603655)).

The pattern fits the scenarios in a deeper, more ambivalent way: all four documents predict that as the endgame nears, elite talent stops spreading across academia and startups and **concentrates inside one or two frontier labs** — Aschenbrenner's researchers decamping to "The Project," AI 2027's OpenBrain absorbing the field. That is happening, just via pay packages rather than presidential order — and to Anthropic rather than the government. It simultaneously validates Amodei's own warning in *Adolescence*: AI companies themselves are threat actor #4, and a private company assembling Nobel-grade capability across pre-training, science, alignment, and economics is precisely the concentration of power the Oversight Committee question was about.

### Verdict

**The world of mid-2026 looks like AI 2027's "late 2025/early 2026" chapters — same movie, projected about 30–50% slower.** That pushes both documents' decisive years from 2027 toward 2028–2030; the direction of travel has not been falsified on any major axis.

*Sources: [AI Futures Project — Q1 2026 Timelines Update](https://blog.aifutures.org/p/q1-2026-timelines-update) · [Grading AI 2027's 2025 Predictions](https://blog.aifutures.org/p/grading-ai-2027s-2025-predictions) · [FutureSearch — AI 2027: One Year Later](https://futuresearch.ai/blog/ai-2027-one-year-later/) · [Futurum — AI Capex 2026](https://futurumgroup.com/insights/ai-capex-2026-the-690b-infrastructure-sprint/) · [80,000 Hours — What happened with AGI timelines in 2025?](https://80000hours.substack.com/p/what-the-hell-happened-with-agi-timelines) · [BBC — Anthropic accuses Alibaba of illicitly extracting AI capabilities](https://www.bbc.com/news/articles/cwyklykn5dwo)*

---

*Note on the reality check: it also scores the newer visions. Amodei's Jan 2026 "1–2 years" claim and Altman's "novel insights in 2026" are live predictions being tested right now; Altman's 2025 milestone ("agents doing real cognitive work," coding transformed) has clearly landed, and his infrastructure math (1GW/week ambition, Stargate at 1.2GW live) is the part of any vision tracking closest to plan.*

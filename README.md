# ideation-sidekick-aai

A Muse skill that turns your own AAI tasks' agent failure signals into
concrete follow-on task ideas (hardening, twists, generalizations,
extensions), biased toward under-targeted taxonomy coverage.

## Install

```bash
git clone https://github.com/hrnmeta/ideation-sidekick-aai.git
muse skills install ./ideation-sidekick-aai --scope user
```

Then invoke from any directory:

```text
/ideation-sidekick-aai
```

## Prerequisites

- codimango CLI on PATH and authenticated (one-time, needs a brief
  browser step):
  `codimango api setup && codimango api setup --nest`
  (New install on Macs: take "codimango" from alacarte; on devservers:
  `devfeature install codimango --persist`.)
- Recommended: the team-aai plugin, for the novelty pre-check
  (`search-idea`) and submit handoff (`create-idea`). Without it the
  skill prints the commands for you to run instead.

## How a run goes

Three setup questions (track, how to pick tasks, coverage bias), then it
ranks your tasks by failure richness, deep-reads up to 3, and prints
per-task summaries, failure modes, and adaptation-style follow-on ideas
with coverage tags. Follow-up gates draft submit fields, run the
similarity pre-check, print the exact submit command (it never submits
for you), and optionally scaffold the task repo.

## Caveats

Unofficial tool, not part of team-aai. Meta first-party models only
(Muse / Metacode / Avocado) — never 3P models; do not port it into
Claude Code / Codex / Gemini harnesses. It only reads already-run
evidence, so unvalidated tasks get text-only ideas. After any update,
reinstall and start a new session (sessions snapshot the skill at
start).

# ideation-sidekick-aai

A Muse skill that turns your own AAI tasks' agent failure signals into
concrete follow-on task ideas (hardening, twists, generalizations,
extensions), biased toward under-targeted taxonomy coverage. It runs in
Muse Code (the `muse` CLI) on a Meta first-party model -- that is also
where you invoke it, from any directory, as `/ideation-sidekick-aai`.

## Install

1. Clone and install (user scope, so it works in every directory):

```bash
git clone https://github.com/hrnmeta/ideation-sidekick-aai.git
muse skills install ./ideation-sidekick-aai --scope user
```

2. Put the codimango CLI on PATH and authenticate it (one-time). If
the binary is missing, install it first (Macs: take "codimango" from
alacarte; devservers: `devfeature install codimango --persist`). Then:

```bash
codimango auth setup
```

Open https://www.internalfb.com/intern/oauth/1500551877913604 in a
logged-in browser, copy the token, paste it at the prompt. Verify with
`codimango health`; re-run setup when the token expires.

3. Recommended: install the team-aai plugin, for the novelty pre-check
(`search-idea`) and submit handoff (`create-idea`). Without it the skill
prints those commands for you to run instead.

Then start a run with:

```text
/ideation-sidekick-aai
```

## How a run goes

Three setup questions (track, how to pick tasks, coverage bias), then it
ranks your tasks by failure richness, deep-reads up to 3, and prints
per-task summaries, failure modes, and adaptation-style follow-on ideas
with coverage tags. Follow-up gates draft submit fields, run the
similarity pre-check, print the exact submit command (it never submits
for you), and optionally scaffold the task repo.

## Caveats

Unofficial tool, not part of team-aai. Muse only (Muse Spark / Muse
Code) -- not Metacode, and never 3P models; do not port it into other
harnesses. It only reads already-run evidence, so
unvalidated tasks get text-only ideas. After any update, reinstall and
start a new session (sessions snapshot the skill at start).

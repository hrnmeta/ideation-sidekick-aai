# ideation-sidekick-aai

A Muse skill that turns your own AAI tasks' agent failure signals into
concrete follow-on task ideas (hardening, twists, generalizations,
extensions), biased toward under-targeted taxonomy coverage. It runs in
Muse Code (the `muse` CLI) on Muse -- that is also
where you invoke it, from any directory, as `/ideation-sidekick-aai`.

## Install

1. Clone and install the skill (user scope, so it works in every
directory):

```bash
git clone https://github.com/hrnmeta/ideation-sidekick-aai.git
muse skills install ./ideation-sidekick-aai --scope user
```

2. Install the current codimango CLI. Macs: open
https://www.internalfb.com/alacarte and install "codimango".
Devservers: `devfeature install codimango --persist`.

3. Authenticate (one-time; re-running is harmless if already done):

```bash
codimango auth setup
```

Open the link the command prints in a logged-in browser, copy the
token, paste it at the prompt. This must pass:

```bash
codimango health
```

It proves the binary and the token in one shot -- anything failing
before this point means step 2 or 3 needs a re-run. If `health` prints
a migration banner instead of passing, a dead legacy copy in
`~/.local/bin` is shadowing the new one: delete just that file
(`rm -f ~/.local/bin/codimango`) and re-run `health`.

4. Enter Muse Code (`muse` in a terminal) and use the skill. The autocomplete should show the skill if it's properly installed:

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

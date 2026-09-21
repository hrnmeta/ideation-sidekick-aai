# ideation-sidekick-aai — backup repo

Dedicated backup history for the `ideation-sidekick-aai` skill.

- **Source of truth (edited directly):**
  `/Users/hrn/.config/muse/skills/ideation-sidekick-aai/SKILL.md`
- **This repo:** point-in-time backups only. Nothing here is loaded by Muse.

## Install (self)

Install (user scope, available in every directory):

```bash
muse skills install /Users/hrn/.config/muse/skills/ideation-sidekick-aai --scope user
```

Reinstall after updates (overwrites the installed copy):

```bash
muse skills install /Users/hrn/.config/muse/skills/ideation-sidekick-aai --scope user --force
```

Invoke in Metacode, from any directory:

```text
/ideation-sidekick-aai
```

Note: `--scope user` is what lands the skill in user config (every
directory, not just one project), and the invoke name is
`/ideation-sidekick-aai` (the actual skill name).

## Distributing to others

1. Commit and push the repo copy so recipients can check out the skill.
2. Each recipient installs from their own checkout (same flags, their path):
   `muse skills install <path-to-their-checkout> --scope user`
   That copies the skill into their own user config, making
   `/ideation-sidekick-aai` available in every directory for them.
3. Each recipient also needs the appendix prerequisites: codimango CLI on
   PATH plus `codimango api setup` (and `--nest`), and optionally the
   `team-aai` plugin for the Gate 3–4 novelty/submit handoff.
4. Two caveats worth telling them: the skill runs only on Meta
   first-party models (it must refuse on Claude Code, Codex, Gemini),
   and sessions snapshot the skill at start — after any update they must
   reinstall and start a new session.

## On-demand backup

After iterating on the skill, run:

```bash
./backup.sh
```

This copies the installed `SKILL.md` over this repo's copy, commits if it
changed, and pushes to `origin` when a remote is configured.

## Remote setup (one time)

Create an empty **private** repo on GitHub, then:

```bash
git remote add origin git@github.com:<you>/ideation-sidekick-aai.git
git push -u origin main
```

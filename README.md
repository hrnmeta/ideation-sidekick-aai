# ideation-sidekick-aai — backup repo

Dedicated backup history for the `ideation-sidekick-aai` skill.

- **Source of truth (edited directly):**
  `/Users/hrn/.config/muse/skills/ideation-sidekick-aai/SKILL.md`
- **This repo:** point-in-time backups only. Nothing here is loaded by Muse.

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

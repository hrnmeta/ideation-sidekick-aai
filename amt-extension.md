# amt-extension.md — PARKED snippets, not part of the skill

Nothing in this file is active. The skill (`SKILL.md`) never references
this file at runtime; it exists only so removed-but-valuable rules can
be reintroduced later without reconstructing them.

## 1. AMT charter track-detection chain (parked 2026-09-21)

Reason parked: the AMT lookup is slow and eventually fails —
`meta ado-amt.pod list` returns an empty track column (verified for
hrn: one v-pod, `track: ""`), and the profile page
(`https://ado-amt.internalmeta.com/person/<unixname>`) has no machine
CLI surface. Running it every invocation wastes minutes, so Gate 0
currently uses the newest-task fallback only.

Reintroduce when: a fast, working AMT endpoint exists — i.e. `pod list`
returns a non-empty track, or the profile page becomes machine-readable
(CLI command or fetchable page).

Reinsertion point: Gate 0 question 3 ("Which tracks?") in §1 of
`SKILL.md` — restore the `[Charter track]` option AND the three-deep
detection sentence, replacing the newest-task-only versions. The exact
snippet follows:

---
Q3 options to restore:

```
3. Which tracks?
   - [Charter track] (your current track) — only when read directly
     from AMT; listed first as the default. No (recommended) tags
     on this question — order conveys the default.
   - [Newest-task track] (from your newest task) — fallback only,
     never presented as your current track. Omitted when it matches
     the charter track.
   - Any track
   On total detection failure omit both track options and say
   detection failed so Any track is the default.
```

Detection sentence to restore (replacing the newest-task-only
sentence that ends "...rather than guessing. When escape is used"):

```
Track detection, in order, never guessing: (1) `meta ado-amt.pod
list` — a non-empty track column is your current track; (2) the AMT
profile page (`https://ado-amt.internalmeta.com/person/<unixname>`)
via the session's web tooling — a track read there is equally
authoritative; (3) newest-task fallback: `meta codimango.task list
--filter mine --as-json`, newest task's track assignment (e.g.
swe-bench long horizon). Sources (1) and (2) earn the "(your current
track)" label; source (3) is always labeled "(from your newest
task)" — presenting it as the current track misinforms the user and
undermines trust. Omit an option whose source failed rather than
guessing.
```
---

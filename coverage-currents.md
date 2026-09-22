# Coverage currents snapshot (offline fallback, compressed)

Currents-as-of: 2026-09-22 (user-supplied; panel "Priorities updated 3 months ago").
Calibrated-against: May-17-2026 targets (see SKILL.md §4 snapshot).
Provenance: Taxonomy Coverage vs. Target panel, "All Benches · All statuses" view.
Location: this file ships inside the skill directory (same folder as SKILL.md);
read it from there — no fetch needed.

## Validity guard

Use this file ONLY when the live target-distribution tab still matches the
May-17-2026 version (its Last-updated reads 2026-05-17 and its target tables
match the §4 snapshot). If the doc moved on, mark this file STALE, do not
use it, and say so. Any live source above this file in §4 wins whenever
reachable; a snapshot pasted in chat wins for that run.

## Reading guide (compressed)

Columns are the 13 use cases: INF = implement_new_feature,
BF = bug_fix, IOF = iterate_on_feature, REF = refactoring, TST = testing,
PO = performance_optimization, VG = vibe_greenfield, RE = reverse_engineering,
BCI = build_ci, AN = analyze, PL = planning, OP = operate, DEP = dependency.

Only below-target cells are listed (`COL n` = n% of target). Any cell NOT
listed is at/above target (saturated) — weak gap claims there need a
difficulty or transfer justification. Row order within each section follows
the section's sub-domain list in order (assumption: the panel labels rows by
section only — verify against the live panel when a twist hinges on one cell).

## Gaps by sub-domain

systems_and_infra: REF 49, BCI 15, AN 13, PL 2, OP 9, DEP 7
ml_ai_infra: REF 45, TST 28, VG 65, RE 40, BCI 2, AN 8, PL 1, OP 3, DEP 2
networking: REF 25, TST 38, PO 23, BCI 2, AN 6, PL 1, OP 1, DEP 1
distributed_systems: REF 25, TST 53, PO 34, VG 86, RE 26, BCI 5, AN 4, PL 0, OP 2, DEP 1
backend_services: RE 56, BCI 10, AN 11, PL 9, OP 3, DEP 24
data_infra: REF 46, TST 47, PO 36, RE 23, BCI 4, AN 23, PL 3, OP 1, DEP 0
build_and_ci: IOF 76, REF 55, TST 38, PO 31, VG 19, RE 12, AN 1, PL 0, OP 14, DEP 9
web_backend: RE 35, BCI 4, AN 5, PL 2, OP 4, DEP 31
web_frontend: PO 51, RE 17, BCI 1, AN 3, PL 1, OP 0, DEP 13
web_fullstack: REF 38, TST 33, PO 24, RE 20, BCI 4, AN 18, PL 3, OP 11, DEP 4
machine_learning: REF 18, TST 24, VG 90, RE 48, BCI 0, AN 60, PL 6, OP 0, DEP 0
scientific_computing: REF 10, TST 16, PO 54, RE 45, BCI 1, AN 39, PL 0, OP 0, DEP 2
data_science: BF 63, IOF 74, REF 5, TST 14, PO 16, VG 25, RE 23, BCI 2, PL 2, OP 0, DEP 4
data_analytics: BF 71, IOF 63, REF 12, TST 25, PO 26, VG 55, RE 15, BCI 0, PL 1, OP 0, DEP 0
security_and_privacy: REF 21, TST 45, PO 38, BCI 5, PL 2, OP 1
devops_and_tooling: PO 29, RE 42, BCI 18, AN 11, PL 6, OP 15, DEP 6
source_control: INF 68, BF 72, IOF 37, REF 8, TST 9, PO 9, VG 16, RE 19, BCI 3, AN 0, PL 7, OP 47, DEP 1
multimedia_and_signal_processing: REF 11, TST 80, PO 41, BCI 0, AN 29, PL 1, OP 0, DEP 2
compilers_and_languages: TST 47, PO 84, BCI 5, AN 6, PL 1, OP 0, DEP 3
graphics_and_rendering: BF 73, REF 14, TST 16, PO 31, RE 52, BCI 1, AN 0, PL 0, OP 0, DEP 9
algorithms_and_data_structures: REF 32, TST 95, BCI 0, AN 8, PL 0, OP 1, DEP 1
games_and_simulation: REF 32, TST 99, PO 86, RE 89, BCI 2, AN 5, PL 3, OP 0, DEP 2
database_internals: REF 30, TST 37, PO 79, RE 22, BCI 1, AN 3, PL 0, OP 0, DEP 0
formal_methods: INF 94, BF 9, IOF 18, REF 13, TST 5, PO 4, VG 21, RE 8, BCI 0, AN 1, PL 0, OP 0, DEP 0
robotics_and_control: BF 53, IOF 40, REF 17, TST 16, PO 18, VG 32, RE 25, BCI 1, AN 3, PL 0, OP 0, DEP 0
mobile_xplat: BF 92, IOF 58, REF 19, TST 4, PO 8, VG 26, RE 12, BCI 2, AN 3, PL 1, OP 2, DEP 3
mobile_ios: REF 62, TST 15, PO 11, RE 12, BCI 4, AN 1, PL 2, OP 1, DEP 3
mobile_android: TST 53, PO 40, RE 21, BCI 10, AN 22, PL 4, OP 1, DEP 4
legal: INF 7, BF 1, IOF 1, REF 0, TST 1, PO 0, VG 2, RE 2, BCI 0, AN 0, PL 0, OP 0, DEP 0
finance_and_accounting: REF 7, TST 63, PO 7, VG 88, RE 26, BCI 0, AN 26, PL 2, OP 0, DEP 1
healthcare_and_clinical: INF 74, BF 21, IOF 10, REF 2, TST 4, PO 2, VG 13, RE 11, BCI 0, AN 5, PL 0, OP 0, DEP 0
consulting_and_analysis: INF 6, BF 0, IOF 0, REF 0, TST 0, PO 1, VG 3, RE 0, BCI 0, AN 2, PL 1, OP 0, DEP 0
insurance_and_actuarial: INF 10, BF 0, IOF 0, REF 0, TST 1, PO 0, VG 8, RE 6, BCI 0, AN 0, PL 0, OP 0, DEP 0

## Priority summary (deepest red)

- operate is the reddest column overall: nearly every cell 0–15% (only
  source_control 47% and build_and_ci 14% escape single digits).
- planning is red everywhere (all cells 0–9%); dependency is red almost
  everywhere (exceptions: security_and_privacy saturated, web_backend 31%,
  backend_services 24%).
- build_ci is red except the build_and_ci sub-domain itself (saturated).
- professional services rows are deeply red except finance_and_accounting
  INF/BF/IOF/VG; legal, consulting_and_analysis, insurance_and_actuarial,
  healthcare_and_clinical are near-zero across most cells.
- formal_methods is red across the row (best cell INF 94%).

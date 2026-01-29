# GitHub Copilot instructions for DevOpsValues 🔧

Purpose
- Help AI coding agents be immediately productive in this repository by documenting the concrete, discoverable structure and conservative, repo-specific rules.

Repository snapshot (what is discoverable)
- Root: `README.MD` — currently contains a short welcome message. Update this file when adding scripts or usage docs.
- `shellscript/` — present but currently empty; this is the intended home for shell/PowerShell scripts and related helpers.
- Development environment: user works on Windows (PowerShell terminal). Expect Windows-first testing.

How to act (high priority, concrete)
1. Before adding or changing scripts: open an issue or ask the repository owner for clarification about the intended shell (PowerShell vs POSIX) and any naming conventions. If unsure, prefer adding a small explanatory note in `README.MD` describing the choice.
2. Place scripts under `shellscript/`. If you create PowerShell scripts use `.ps1` extension; for POSIX shell use `.sh` and include a `#!/usr/bin/env sh` shebang.
3. Every new script must include a short header comment with: purpose, expected inputs/outputs, example usage, and target shell/platform. Example header:

    # example: `shellscript/utility.ps1`
    # Purpose: <one-line>
    # Usage: pwsh ./utility.ps1 --flag value

4. Update `README.MD` when you add user-facing scripts with: quick usage examples, required runtime (PowerShell Core / pwsh or Bash), and how to test locally.
5. Test locally in PowerShell on Windows (the workspace uses Windows). If you add POSIX scripts, also verify with WSL or a POSIX environment if possible.

Naming and change hygiene
- Keep file names short, lower-case, and hyphen-separated (e.g., `deploy-db.ps1`).
- Include small, focused commits and update `README.MD` with each new script or major change so humans and agents can find how to run the repo.

When modifying files
- If you make non-trivial changes, include a short rationale in the commit message and add a one-line explanation to `README.MD`.
- Prefer incremental PRs that change or add one script + tests/docs rather than large bulk edits.

What not to assume
- There are no CI, test runners, or build scripts in the repo currently; do not add a CI or a testing framework without prior confirmation from the owner.

If something is missing
- Ask the maintainer what shell(s) they expect and whether cross-platform support is required. If the maintainer is unresponsive, add files conservatively under `shellscript/` and document choices clearly in `README.MD`.

Contact and iteration
- After making initial changes, request feedback in an issue or PR and iterate on these instructions based on the owner's preferences.

---

If you'd like, I can refine these instructions with: a sample script template, a sample `README.MD` section to add automatically when new scripts are added, or a basic PowerShell lint/test setup for future work. ✅
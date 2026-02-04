# GitHub Copilot instructions for DevOpsValues 🔧

Purpose
- Surface the repository's real, discoverable conventions so an AI coding agent can make small, high-confidence changes.

Quick repository snapshot (discoverable)
- Root: README.MD — short welcome; update when adding runnable scripts or usage docs.
- `shellscript/` — contains multiple `.sh` scripts (examples: `installAuto.sh`, `functionInstall.sh`, `timeCheck.sh`, `04-AllVariable.sh`). These are predominantly POSIX/Bash scripts and often call Linux utilities (e.g., `dnf`).
- The workspace is edited on Windows, but many scripts target Linux environments (check shebangs and package managers before running).

High-priority rules for agents
1. Confirm the target shell/platform before changing or adding scripts. Many existing files use `#!/bin/bash` and `dnf` (Fedora/RHEL). If uncertain, open an issue asking whether scripts should target PowerShell or Bash.
2. Place all new scripts in `shellscript/`. PowerShell scripts use `.ps1`; POSIX scripts use `.sh` and should include a proper shebang (e.g., `#!/usr/bin/env bash`).
3. Every new or modified script must include a header block (exactly like the examples below). Update `README.MD` with any user-facing usage.

Required script header (copy into the top of each script)
```
# Purpose: one-line description
# Target: bash | sh | pwsh  (explicitly state intended shell)
# Inputs: flags/env vars
# Output: files/side-effects
# Example: sudo bash ./shellscript/installAuto.sh
```

Concrete examples from this repo
- `shellscript/installAuto.sh`: checks for root (`id -u`), then uses `dnf` to install `nginx`, `mysql`, `nodejs`. Treat it as Linux-only and run with `sudo` or in a root shell.
- `shellscript/functionInstall.sh`: defines `install_package()` which calls `dnf install` and exits on failure — follow the same exit-on-error pattern when adding similar helpers.
- `shellscript/timeCheck.sh`: measures execution time using `date +%s` and arithmetic — use this pattern when adding simple runtime measurements.

Naming and style guidance (repo-specific)
- Existing names are mixed (numeric prefixes, camelCase, hyphenated). For new files prefer `lower-case-hyphen.sh` (consistent and shell-friendly), but do not rename existing files without maintainer approval.
- Use `set -euo pipefail` in Bash scripts when adding robust automation, unless a script intentionally handles errors inline.

How to run and test scripts (practical commands)
- Quick run (Linux/WSL/Git Bash): `sudo bash shellscript/installAuto.sh`
- Run a single function/script for iteration: `bash -n shellscript/functionInstall.sh` (syntax check) and `shellcheck` if available.
- On Windows, use WSL or a Linux VM to execute scripts that call `dnf` or assume root.

What not to add or assume
- There is no CI/test harness in the repo. Do not add CI or test frameworks without explicit approval.

When modifying files
- Add a short rationale to the commit message and a one-line note in `README.MD` for any behavioral changes.
- Prefer small, focused PRs (one script or one small change per PR).

Contact + iteration
- After making changes, request reviewer feedback in an issue or PR. If the maintainer is unresponsive, document your platform assumptions in `README.MD` and keep changes minimal.

If helpful, I can also:
- Add a script template file under `shellscript/` (header + `set -euo pipefail`) and a short `README.MD` section showing run examples.
- Add a `shellcheck`-friendly CI job only after you confirm you want CI added.

---

This file documents only patterns discovered in the workspace. Tell me if you want me to add a script template and a small README snippet next.
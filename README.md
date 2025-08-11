# Dev Tracker — JS + Go + GitHub Copilot (6 Months)

This starter repo bundles your planning files, Week-1 GitHub Issues (importable), 
and GitHub Actions to auto-add issues to a Projects (beta) board.

## Quick start
1. Create a new GitHub repo named `dev-tracker` (empty).
2. Download and extract this bundle, then push:
   ```bash
   git init
   git remote add origin <YOUR_REPO_URL>
   git add .
   git commit -m "chore: bootstrap dev-tracker starter"
   git push -u origin main
   ```
3. Create a **Projects (beta)** board and save its ID as a repo secret `PROJECT_ID`:
   ```bash
   # Requires gh CLI and project scope
   gh auth login --scopes 'project,repo'
   bash scripts/project_setup.sh <YOUR_GITHUB_USERNAME> "Dev Tracker"
   # Copy PROJECT_ID and add it in: Settings → Secrets and variables → Actions → New repository secret
   ```
4. Import Week-1 issues: GitHub → Issues → Import → upload `import/week1_github_issues.json`.

## Structure
- `planning/6_month_js_go_copilot_tracker.csv` — 24-week plan
- `planning/day1_precheck_js_go_copilot.md` — Day-1 precheck
- `import/week1_github_issues.json` — ready-to-import Week-1 issues
- `.github/workflows/auto_add_to_project.yml` — auto-add issues to project
- `.github/workflows/auto_label_week.yml` — auto-label Week 1 issues
- `scripts/project_setup.sh` — create Project and print PROJECT_ID
- `docs/retro/` — retros live here
- `js-cli/` and `go-cli/` — your CLIs (placeholders for now)

## Next steps (Week 1)
- Scaffold `js-cli` (Commander/Yargs + Vitest)
- Scaffold `go-cli` (Cobra + table-driven tests)
- Implement `status` API command in both
- Tag `v0.1.0-alpha` releases
- Share your #builtwithgithubcopilot update

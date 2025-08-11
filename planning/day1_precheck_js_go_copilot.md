# Day 1 Precheck — JS, Go, GitHub Copilot

## Accounts & Access
- [ ] GitHub account with Student/Developer benefits enabled
- [ ] Access to **GitHub Copilot** (trial or paid) and Copilot Chat
- [ ] Microsoft Learn account linked

## Workstation (macOS)
- [ ] Xcode CLTs: `xcode-select --install`
- [ ] Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## JavaScript / TypeScript
- [ ] Node.js (LTS) via `nvm` and `corepack enable`
- [ ] `npm -v`, `pnpm -v` (optional), `tsx` for TS scripts
- [ ] ESLint + Prettier configured
- [ ] Sample project runs: `npm test` green

## Go
- [ ] Go >= 1.22 installed (`go version`)
- [ ] `go env GOPATH` set; modules on by default
- [ ] `golangci-lint` installed
- [ ] Sample `go test ./...` green

## Editors & Extensions (VS Code)
- [ ] Extensions: Go, ESLint, Prettier, Copilot, Copilot Chat
- [ ] Copilot enabled for both JS and Go workspaces
- [ ] Telemetry/Crash recovery ON

## Git & Security
- [ ] `git config --global user.name` and `user.email` set
- [ ] SSH key added to GitHub; `ssh -T git@github.com` successful
- [ ] `gh` CLI installed and authenticated

## CI/CD
- [ ] New private repo `dev-tracker` created with **MIT** or **BSD-3** license
- [ ] GitHub Actions: JS and Go workflows pass on `main`
- [ ] Badges render in `README.md`

## Docs & Tracking
- [ ] Open an issue: “Week 1 Goals” with checklist
- [ ] Add `/docs/roadmap.md` and link to the 24-week tracker
- [ ] Enable Projects (beta) or a Kanban board

> Tip: Commit the CSV tracker at `/planning/6_month_js_go_copilot_tracker.csv` and pin it in the repo.

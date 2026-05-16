# 🐺 KyoteOS Roadmap

KyoteOS is a lightweight Linux distribution based on Raspberry Pi OS,
focused on performance, stability, and maker‑friendly defaults.

This roadmap outlines the planned development phases and milestones.
Dates are intentionally omitted; progress is feature‑driven.

---

## Phase 0 — Foundation (✅ Completed / In Progress)

**Goal:** Establish a solid, reproducible base.

- ✅ GitHub repository created
- ✅ Raspberry Pi OS Lite chosen as base
- ✅ Debian compatibility maintained
- ✅ Target hardware defined:
  - Raspberry Pi 4 (2GB+)
  - Raspberry Pi Zero 2 W
- ✅ Basic project structure
- ✅ OS identity (`os-release`, hostname)

Status: **Active**

---

## Phase 1 — KyoteOS Core (v0.1)

**Goal:** Convert Raspberry Pi OS Lite into KyoteOS Core.

### Features
- CLI‑first system
- KyoteOS branding
- Performance tuning for low RAM
- Maker tools enabled by default
- Git‑based install workflow

### Deliverables
- `kyoteos-setup.sh`
- Core configuration files
- Documentation for manual install

Status: **Target milestone**

---

## Phase 2 — Desktop Edition (v0.5)

**Goal:** Provide a fast, usable desktop environment.

### Features
- XFCE desktop
- LightDM display manager
- KyoteOS wallpaper and theme defaults
- Optimized for ARM and 2GB RAM
- Suitable for education and daily use

### Editions
- KyoteOS Core (CLI)
- KyoteOS Desktop (XFCE)

Status: **Planned**

---

## Phase 3 — Polishing & UX (v0.9)

**Goal:** Improve usability and first‑boot experience.

### Features
- First‑boot welcome app
- Desktop panel layout defaults
- Neofetch / system info branding
- Improved documentation
- Safer defaults for beginners

Status: **Planned**

---

## Phase 4 — First Stable Release (v1.0)

**Goal:** Public, stable release.

### Features
- Versioned releases
- GitHub release tags
- Stable configuration set
- Installation documentation
- Community‑ready structure

### Notes
- Still based on Raspberry Pi OS
- No custom kernel at this stage
- Stability prioritized over bleeding‑edge updates

Status: **Future**

---

## Phase 5 — Advanced Builds (Post‑1.0)

**Goal:** Expand flexibility and power.

### Possible Directions
- Custom image build pipeline
- Optional Arch‑based edition
- Custom kernel tuning
- Immutable or read‑only variants
- Additional desktop options

Status: **Exploratory**

---

## Non‑Goals (For Now)

The following are intentionally out of scope for early versions:

- Custom package manager
- Rolling‑release model
- Non‑ARM architectures
- Enterprise or server focus

---

## Guiding Principles

- Simplicity over complexity
- Performance over features
- Hardware compatibility first
- Open development on GitHub
- Documentation as a feature

---

## Contributing

KyoteOS is developed openly.
Issues, ideas, and pull requests are welcome once the project reaches v0.5.
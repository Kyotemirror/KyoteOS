# 🐺 KyoteOS Image Build Notes

This document describes the planned process for building distributable
KyoteOS `.img` files.

KyoteOS images are **not yet automatically generated**.
For now, KyoteOS is installed by converting a stock Raspberry Pi OS Lite
image using the KyoteOS setup scripts.

---

## Base Image

KyoteOS images are based on:

- **Raspberry Pi OS Lite (32-bit)**
- Debian-based
- Official Raspberry Pi Foundation releases only

This ensures:
- Maximum hardware compatibility
- Stable boot process
- Working GPIO, camera, Wi‑Fi, and Bluetooth support

---

## Target Hardware

Images are intended to support:

- Raspberry Pi 4 (2GB+)
- Raspberry Pi Zero 2 W

Other Raspberry Pi models may work but are not officially supported
until tested.

---

## Current Install Method (Development Phase)

At this stage, KyoteOS is installed as a **conversion layer**.

### Process Overview
1. Flash Raspberry Pi OS Lite to SD card
2. Boot and complete initial setup
3. Install Git
4. Clone KyoteOS repository
5. Run `kyoteos-setup.sh`
6. Reboot into KyoteOS

This approach keeps development flexible while the OS is evolving.

---

## Future Image Build Strategy

Once KyoteOS reaches feature stability (v0.9+), image builds will be added.

### Planned Approach
- Start from official Raspberry Pi OS Lite image
- Apply KyoteOS configuration files
- Install KyoteOS package set
- Apply branding and defaults
- Clean temporary files
- Generate `.img.xz` for release

No custom kernel is planned for v1.0.

---

## Image Variants (Planned)

### KyoteOS Core
- CLI only
- Minimal footprint
- Ideal for servers, robotics, and headless use

### KyoteOS Desktop
- XFCE desktop
- LightDM display manager
- KyoteOS theming and defaults

---

## Versioning

Image versions will follow the KyoteOS release version:

- `kyoteos-0.1-core.img.xz`
- `kyoteos-0.5-desktop.img.xz`
- `kyoteos-1.0-desktop.img.xz`

Image filenames will always include:
- KyoteOS version
- Edition (core / desktop)
- Architecture (armhf)

---

## Distribution

Planned distribution method:

- GitHub Releases
- Checksums provided (SHA256)
- Release notes included

Mirrors and torrents may be considered after v1.0.

---

## Non-Goals (For Image Builds)

The following are intentionally excluded for early releases:

- Installer UI
- Multiple partition layouts
- Encrypted root by default
- Non‑Raspberry Pi hardware

---

## Status

⚠️ Image building is **planned**, not yet implemented.

Until then, KyoteOS remains GitHub‑first and script‑installed.

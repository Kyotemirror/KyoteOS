<p align="center">
  Welcome to KyoteOS
</p>

<h1 align="center">KyoteOS</h1>

<p align="center">
  A lightweight Linux distribution for Raspberry Pi<br>
  Fast • Clean • Maker‑friendly
</p>

<p align="center">
  If you find KyoteOS useful and want to support development, you can buy me a coffee:
👉 https://buymeacoffee.com/kyotemirror
</p>

---

## 🧠 What KyoteOS Is

KyoteOS is a lightweight Linux distribution based on **Raspberry Pi OS**,
designed for **performance, clarity, and reliability** on Raspberry Pi hardware.

Rather than reinventing the Linux stack, KyoteOS layers a carefully curated
desktop experience, system tuning, and branding on top of a proven Debian base.

KyoteOS focuses on:
- Low memory usage
- Clean defaults
- Dark‑themed desktop
- Raspberry Pi hardware compatibility
- GitHub‑first, transparent development

---

## 🧩 Supported Hardware

- **Raspberry Pi 4** (2GB RAM or higher)
- **Raspberry Pi Zero 2 W**

Other Raspberry Pi models may work but are not officially supported.

---

## 🖥️ Desktop Stack

- **Desktop Environment:** XFCE  
- **Window Manager:** XFWM4 (compositor disabled)  
- **Display Manager:** LightDM (GTK Greeter)  
- **Theme:** Adwaita‑dark  
- **Terminal Branding:** Neofetch (KyoteOS config)

---

## 🛠️ Install (GitHub‑First)

KyoteOS is installed by converting **Raspberry Pi OS Lite**.

```bash
sudo apt install git
git clone https://github.com/Kyotemirror/KyoteOS.git
cd KyoteOS- **Display Manager:** LightDM (GTK Greeter)
- **Theme:** Adwaita‑dark
- **Terminal Branding:** Neofetch (KyoteOS configuration)

The desktop is tuned for:
- Fast startup
- Minimal visual effects
- Predictable behavior
- Low‑RAM systems

---

## 🛠️ Install (GitHub‑First)

KyoteOS is currently installed by **converting a stock Raspberry Pi OS Lite system**.

### Development Install Overview

1. Flash **Raspberry Pi OS Lite** to an SD card
2. Boot the system and complete initial setup
3. Install Git:
   ```bash
   sudo apt install git

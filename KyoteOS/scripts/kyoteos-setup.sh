#!/usr/bin/env bash
set -euo pipefail

echo "▶ Installing KyoteOS branding assets..."

# Paths
ASSET_DIR="branding/assets"
BG_SRC="$ASSET_DIR/background.png"
LOGO_SRC="$ASSET_DIR/logo.png"

BG_DST="/usr/share/backgrounds/kyoteos.png"
LOGO_DST="/usr/share/pixmaps/kyoteos.png"

# Validate assets exist
if [[ ! -f "$BG_SRC" || ! -f "$LOGO_SRC" ]]; then
  echo "❌ Missing branding assets in $ASSET_DIR"
  echo "   Expected:"
  echo "   - $BG_SRC"
  echo "   - $LOGO_SRC"
  exit 1
fi

# Install directories
echo "▶ Creating system directories..."
sudo install -d /usr/share/backgrounds /usr/share/pixmaps

# Install files (idempotent + permissions)
echo "▶ Installing wallpaper..."
sudo install -m 644 "$BG_SRC" "$BG_DST"

echo "▶ Installing logo..."
sudo install -m 644 "$LOGO_SRC" "$LOGO_DST"

echo "✅ Branding assets installed"

# --------------------------------------------------
# Apply branding to XFCE (safe — only if XFCE exists)
# --------------------------------------------------

if command -v xfconf-query >/dev/null 2>&1; then
  echo "▶ Applying XFCE branding..."

  # Set wallpaper
  xfconf-query -c xfce4-desktop \
    -p /backdrop/screen0/monitor0/image-path \
    -s "$BG_DST" 2>/dev/null || true

  # Ensure wallpaper is shown and scaled
  xfconf-query -c xfce4-desktop \
    -p /backdrop/screen0/monitor0/image-style \
    -s 3 2>/dev/null || true

  xfconf-query -c xfce4-desktop \
    -p /backdrop/screen0/monitor0/image-show \
    -s true 2>/dev/null || true

  # Set panel menu icon (Apple-like button → KyoteOS logo)
  xfconf-query -c xfce4-panel \
    -p /plugins/plugin-10/button-icon \
    -s kyoteos 2>/dev/null || true

  echo "✅ XFCE branding applied"
else
  echo "⚠ XFCE not detected (skipping desktop configuration)"
fi

# --------------------------------------------------
# Reload UI (safe)
# --------------------------------------------------

echo "▶ Refreshing desktop..."

if pgrep -x xfce4-panel >/dev/null 2>&1; then
  xfce4-panel -r || true
fi

if pgrep -x xfdesktop >/dev/null 2>&1; then
  xfdesktop --reload || true
fi

echo "✅ Desktop refreshed"

echo "🎉 KyoteOS branding setup complete!"
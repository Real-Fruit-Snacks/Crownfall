# Itch.io Page Theme — Crownfall Palette

Copy these values into the itch theme editor (the section that has "Color → BG / BG 2 / Text / Link" etc.).

## Color section

| Field | Value | Notes |
|---|---|---|
| **BG** | `#1a0e05` | Page background — very dark brown, matches game body bg |
| **BG 2** | `#2a1a08` | Description card / content panel — slightly lighter |
| **Text** | `#e8d9b8` | Cream/parchment, easy to read on dark |
| **Link** | `#ffd060` | Bright gold — itch's default red clashes with brown |
| **Headers** | `#f5d889` | Soft gold — same color as in-game CROWNFALL title |
| **Buttons** | `#3a2616` | Dark brown — gold text inherits from header color |
| **BG2 Alpha** | leave default (or 0.95 for slight transparency over background image) |

## Text section

| Field | Value |
|---|---|
| **Font** | `Lato` (default) — clean, readable for body |
| **Size** | `Large` |
| **Header font** | `Press Start 2P` if available — same pixel font as the game title. Fallback: `VT323`. Final fallback: `Default font`. |

## Layout

| Field | Value |
|---|---|
| **Screenshots** | `Auto` |

## Images section

| Slot | File | Notes |
|---|---|---|
| **Banner** | `itch-banner.png` (1200×630) | The pixel-art scene + CROWNFALL title plate from the OG image |
| **Background** | `itch-bg-tile.png` (64×64, tiles) | Subtle dark stone-block pattern — makes the page feel like the game's wall |
| **Embed BG** | leave empty OR set color to `#1a0e05` | Matches the page so the embedded game blends in |

## Quick visual sanity check

After saving, the page should look like this:
- **Dark brown background** with a subtle stone-tile texture
- **Pixel-art banner** at the top showing the game scene
- **Cream text** on dark, very readable
- **Gold links and headings** that pop without screaming
- **The embedded game** sits flush against the page background (no white box around it)

If anything feels off, the BG color is the most important — `#1a0e05` matches the game's `body { background: #1a0e05 }` exactly so there's zero seam between page and embed.

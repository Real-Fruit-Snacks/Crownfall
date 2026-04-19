# Uploading Crownfall to itch.io

Everything you need is sitting in this folder. Walk down this list end-to-end.

## What's in the box

| File | Purpose |
|---|---|
| `crownfall-itch.zip` | The playable game. Drop this into the upload form. |
| `itch-cover.png` | 630×500 cover image for the game header. |
| `itch-description.md` | Paste-ready blurb for the "Description" field. |
| `screenshot-1-title.png` | Title screen — first gallery slot. |
| `screenshot-2-gameplay.png` | Active gameplay with 6 hero classes. |
| `screenshot-3-research.png` | Research book showing chapters + buyable nodes. |
| `screenshot-4-prestige.png` | Prestige meta-layer with bonus tree. |
| `screenshot-5-bloodmoon.png` | Special event wave (Blood Moon). |

## Step-by-step on itch.io

### 1. Create the project

1. Go to [itch.io/game/new](https://itch.io/game/new)
2. **Title:** `Crownfall: An Incremental Defense`
3. **Project URL:** `crownfall` (or whatever's available — itch will tell you)
4. **Short description (one-liner):** `A pixel-art medieval wave-defense incremental — hold the wall, bank Crowns, return stronger.`
5. **Classification:** `Games`
6. **Kind of project:** `HTML` ← critical, this enables play-in-browser
7. **Pricing:** Free (or "name your own price" if you want tips)

### 2. Upload the playable build

1. Under **Uploads**, click "Upload files"
2. Pick `crownfall-itch.zip`
3. After it uploads, **tick the "This file will be played in the browser" checkbox** under the file
4. **Embed options** (a dialog pops after ticking the checkbox):
   - **Viewport dimensions:** `960` × `540` (16:9 landscape — fits most phones cleanly; itch will scale)
   - **Fullscreen button:** ✅ enabled (itch's own button — ours is also in the corner of the game)
   - **Mobile friendly:** ✅ enabled (game is landscape-locked but works fine)
   - **Orientation:** `Landscape`
   - **Automatically start on page load:** optional, your call
5. Save.

### 3. Cover image

- Under **Cover image**, upload `itch-cover.png` (630×500 PNG, already correct dimensions).

### 4. Description

- Under **Description**, paste the contents of `itch-description.md`. itch's editor accepts the markdown directly (formatting will render — `**bold**`, `*italic*`, `## headers`, lists, code spans).

### 5. Screenshots / gallery

- Under **Gallery / Media** (below the description), drag-drop in this order:
  1. `screenshot-1-title.png`
  2. `screenshot-2-gameplay.png`
  3. `screenshot-3-research.png`
  4. `screenshot-4-prestige.png`
  5. `screenshot-5-bloodmoon.png`

The first gallery image is what shows up next to the cover on the main game page, so the title screen as #1 is intentional.

### 6. Tags & metadata

- **Genre:** `Strategy` (closest fit). `Survival` is a fine secondary.
- **Tags** (start typing each — itch will autocomplete):
  - `incremental`, `idle`, `tower-defense`, `wave-defense`,
  - `pixel-art`, `medieval`, `singleplayer`, `browser`,
  - `html5`, `vanilla-javascript`
- **Average session:** `A few minutes` (early game) or `A couple hours` (late game) — pick one
- **Inputs:** ✅ `Mouse`, ✅ `Touchscreen`, ✅ `Keyboard`
- **Languages:** `English`
- **Accessibility:** Color-blind friendly is N/A; tick `One button` if you want (the game is mostly clickable).

### 7. Visibility

- **Visibility & access:** Set to **Public** when ready. Use **Restricted** while you're double-checking.
- **Community:** I'd recommend enabling Disqus comments — incremental players love sharing builds.

### 8. Save & view

- Hit **Save & view page**. Click the embedded game once to make sure it loads, then play through the welcome card and one wave.

## Post-upload sanity checks

- [ ] Game loads when you visit the public URL (try it in an incognito window)
- [ ] Fullscreen button works (try both itch's button and the game's own one in the top-left)
- [ ] Title screen → Today's Challenge produces a seeded run
- [ ] Settings → Export Save produces a code; paste back via Import Save reloads the same state
- [ ] On a real phone (landscape), HUD doesn't cover the playing field

## Optional polish (do these later)

- **Devlog post** — itch has a built-in devlog per game. Drop a v1.0 announcement linking to your CHANGELOG. Posts get pushed to the itch front page if your game is gaining traction.
- **GIF preview** — record a 5–10 second clip of a wave + skill cast and add it to the gallery. Animated previews get significantly more clicks.
- **Submit to a jam** — itch hosts dozens of incremental/idle jams. Free promo if your timing aligns.

## Updating later

When you ship a new version of `index.html`:

1. Run `pack-for-itch.bat` again — it'll rebuild `crownfall-itch.zip`
2. On itch, go to **Edit project → Uploads**
3. Click the **gear icon** next to the existing upload → **Replace file**
4. Drop the new ZIP. Players who already have it loaded won't be force-refreshed, but new visitors get the latest immediately.

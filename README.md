<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/Real-Fruit-Snacks/Crownfall/main/docs/assets/logo-dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/Real-Fruit-Snacks/Crownfall/main/docs/assets/logo-light.svg">
  <img alt="Crownfall" src="https://raw.githubusercontent.com/Real-Fruit-Snacks/Crownfall/main/docs/assets/logo-dark.svg" width="100%">
</picture>

> [!IMPORTANT]
> **Pixel-art medieval wave-defense incremental in a single HTML file.** Hold the wall, bank Research Points and Crowns, return stronger. No build step, no dependencies, no installs — just open `index.html` or visit the GitHub Pages link.

> *Crownfall plays the long game — each run loses, each loss buys a permanent edge. Felt fitting for a one-file canvas with hundreds of runs of progression baked in.*

---

## §1 / Premise

Crownfall is a top-down medieval **incremental wave-defense game**. You command a row of heroes on a stone wall while progressively tougher waves attack from the right. Every death is meaningful — bank **Research Points** and **Crowns** to permanently upgrade your fortress, unlock new heroes, elements, skills, hazards, and skins. Hundreds of runs of progression by design.

The entire game lives in a single self-contained `index.html` (~7,500 lines including CSS and JS). HTML5 Canvas with `image-rendering: pixelated`. Web Audio API generates every sound from scratch — no audio files. localStorage for saves.

▶ **[Play on GitHub Pages](https://real-fruit-snacks.github.io/Crownfall/)**

---

## §2 / Specs

| KEY        | VALUE                                                                       |
|------------|-----------------------------------------------------------------------------|
| HEROES     | **6 classes** · Archer · Crossbow · Cannoneer · Mage · Cleric · Bard        |
| ENEMIES    | **6 archetypes** + boss variants · Goblins · Chargers · Shieldbearers · Archers · Healers · Witches |
| IMBUEMENTS | **8 weapon imbuements** · Fire · Ice · Poison · Bleed · Knockback · Stun · Holy · Mending · Hex |
| SKILLS     | **6 active skills** · Smite · Meteor · Heal Wall · Rally · Frost Nova · Stun Bomb |
| HAZARDS    | **5 field hazards** · Wooden Spikes · Caltrops · Tar Pits · Watchfire Braziers · Bear Traps |
| RESEARCH   | **10 chapters** · **100+ nodes** with RP and Crown costs                    |
| WALLS      | **5 material tiers** · Stone → Reinforced → Iron → Steel → Obsidian         |
| EVENTS     | **5 special waves** · Blood Moon · Night of the Restless · Goblin Horde · Champion's Challenge · Plague |
| STACK      | **Single `index.html`** · Canvas 2D · Web Audio · localStorage · MIT        |

Architecture in §5 below.

---

## §3 / Quickstart

```bash
# Just open the file
open index.html      # macOS
start index.html     # Windows
xdg-open index.html  # Linux
```

Or run a tiny static server (recommended for cleaner cache + audio behavior):

```bash
python -m http.server 5555
# then visit http://localhost:5555
```

No `npm install`, no build pipeline.

---

## §4 / Reference

```
CONTROLS

  Click           Buy slot, hire hero, collect coin, tap-damage enemy
  1–4             Cast / arm skill in slot N
  Q               End run (banks RP, opens research)
  R               Toggle research book
  M               Mute sound
  Space           Pause / resume
  Esc             Close topmost menu / unarm skill / dismiss popup

PROGRESSION

  Research Points        Banked at end of run · spent in Research Book
  Crowns                 Boss-drop currency for late-game power spikes
  Commanders             Persistent automation per slot — buy / upgrade / imbue
  Starting-wave ladder   Skip past low-level grind once earned
  15 achievements        Tracked in Pause → Stats → Hall of Records

EVENTS & VARIANCE

  Special waves          Blood Moon · Night of the Restless · Goblin Horde
                         Champion's Challenge · Plague Wave
  Random events          Wandering Merchant · Dark Pact · Royal Decree · Hermit's Blessing
  12 hero skin variants  Unlocked with Crowns
  Wall deterioration     Cracks, broken merlons, side chunks, smoke as HP drops

DEPLOY

  GitHub Pages           Settings → Pages · Branch: main · Folder: / (root)
  .nojekyll              Skip Jekyll · files starting with _ work normally
  No build, no bundler   Single index.html ships as-is
```

---

## §5 / Architecture

```
[Browser]
 index.html  →  Canvas 2D       (pixel-art rendering, image-rendering: pixelated)
            →  Web Audio API    (every SFX + ambient music generated, no samples)
            →  localStorage     (research, crowns, stats, achievements, commanders, settings)
            →  CSS box-shadow   (chunky pixel borders, no images)
```

| Layer       | Implementation                                                     |
|-------------|--------------------------------------------------------------------|
| **Render**  | HTML5 Canvas 2D · `image-rendering: pixelated` · all art drawn from primitives |
| **Audio**   | Web Audio API · synth-generated SFX + looping medieval ambient · no asset files |
| **State**   | Vanilla JavaScript · no framework, no bundler, no transpiler       |
| **Saves**   | localStorage · research, crowns, stats, achievements, commanders, settings |
| **Chrome**  | CSS-only · chunky pixel-art borders via `box-shadow inset`         |
| **Deploy**  | Single `index.html` (~7,500 lines) · static-host friendly          |

**Key patterns:** Every visual element rendered to a Canvas 2D context with pixelated scaling — no sprite sheets, no asset pipeline. Audio synthesized at runtime via Web Audio. Three persistence currencies layer on top of each other: per-run state resets each Q, Research Points and Crowns survive every run, achievements and skins survive forever.

---

[License: MIT](LICENSE) · See [CHANGELOG.md](CHANGELOG.md) for the full version history. Part of [Real-Fruit-Snacks](https://github.com/Real-Fruit-Snacks) — building offensive security tools, one wave at a time.

*Made with Canvas, coffee, and a deep love of crunchy pixel art.*

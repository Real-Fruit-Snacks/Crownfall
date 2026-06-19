# Changelog

All notable changes to **Crownfall: An Incremental Defense** are documented here.
Format loosely follows [Keep a Changelog](https://keepachangelog.com/).

## [Unreleased]

## [0.9.0] — 2026-04-19

Massive feature batch transforming the prototype into a full incremental.

### Added
- Renamed game to **Crownfall: An Incremental Defense** (title screen + browser tab).
- **5 wall material upgrades** — Stone → Reinforced → Iron → Steel → Obsidian (visual + damage reduction).
- **5 field hazards** in a new **Defenses** research chapter — Wooden Spikes, Caltrops, Tar Pits, Watchfire Braziers, Bear Traps; placed automatically every run, upgradeable.
- **Persistent Commanders** per slot (Crown-cost) that automate hero hiring, upgrading, imbuing, and skin selection between runs.
- **5 special event waves** — Blood Moon, Night of the Restless, Goblin Horde, Champion's Challenge, Plague Wave (each with tint, banner, SFX, and unique modifiers).
- **Mid-run random events** — Wandering Merchant, Dark Pact, Royal Decree, Hermit's Blessing, with a temporary buff system.
- **Hall of Records** stats page + 15 achievements with center-screen splash popups.
- **12 hero skin variants** (palette swaps) bought with Crowns.
- **7 starting-wave research tiers** going from wave 3 up to wave 40.
- **4 repeatable gold nodes** in Coffers (Greater Vault, Greater Tithe, War Treasury, Boss Mint).
- **Wall visually deteriorates** as HP drops — cracks, scorch, missing chunks, broken merlons, side chips, blood streaks, and ambient smoke wisps when critical. Damage restricted to the front-facing merlon strip.

### Changed
- **RP economy rebalanced** — 0 RP at run start, gentler curve tuned for 100+ runs to fully unlock the tree.
- Many node costs increased (slot unlocks, hero guilds, keystones).
- Achievement notification upgraded from a small toast to a center-screen splash card with sparkles, fanfare SFX, and a queue for back-to-back unlocks.

### Fixed
- Skill bar hover flicker — DOM was being rebuilt every 100 ms; now only cooldown text mutates in place.
- Stats modal scroll bug — columns overflowed past the Close button.
- Achievement toast was permanently visible due to a duplicate `display` rule.
- Title screen showed `\u00b7` literals instead of middle-dot characters.
- Settings overlay binding leak after the top-right Settings button was removed.
- Several syntax / comma issues in research-node arrays during the hazard rollout.

### Removed
- Settings button in the top-right corner — Settings now reachable only through the Pause menu.
- Bundled starting-gold from the start-at-wave nodes (replaced with separate repeatable gold research).

## [0.1.0] — 2026-04-19

Initial commit. Working prototype with:

- 6 hero classes with elemental imbues
- 6 enemy archetypes + boss variants every 10 waves
- Research book with chapter-based nodes
- Skill bar with 4 unlockable slots and 6 active abilities
- Persistent RP and Crown currencies
- Synth-generated SFX + ambient music
- Title screen + 3-step tutorial
- Pause menu + run stats overlay
- Keyboard shortcuts (1-4 skills, Q end run, R research, M mute, ESC pause)

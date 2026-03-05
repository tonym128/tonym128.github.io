---
author: tonym128
comments: false
date: 2026-03-02 11:00:00 +0000
title: "Sun Runner: High-Speed Polygonal Rail Shooting in the Browser"
layout: post
---

# Sun Runner tldr; 

I built a high-speed, polygonal rail shooter where you pilot a sleek craft through a relentless descent into a stylized sun, all contained within a single HTML file.

Take a look at the site - [Live Demo](https://tonym128.github.io/SunRunner/)

Take a look at the code - [Code](https://github.com/tonym128/SunRunner)

## The Vibe: Cybernetic Solar Descent

Continuing the "Vibe Coding" journey that started with [Peakylight](/_posts/2025-12-07-peakylight-chasing-shadows.markdown), [Aussie Meme Boss Rush](/_posts/2026-02-23-aussie-meme-boss-rush.markdown), and the recent [TexGen](/_posts/2026-03-04-texgen-procedural-texture-generator.markdown), **Sun Runner** is my latest exploration into what's possible with modern WebGL and a "single-file portable" philosophy.

The goal was to capture the essence of classic rail shooters like *Star Fox* or *Rez*, but with a modern, high-contrast aesthetic—think deep magentas, vibrant cyans, and a persistent wireframe grid that makes you feel like you're diving into the heart of a digital star.

## Gameplay: The Elemental Arsenal

In Sun Runner, survival isn't just about dodging; it's about mastering the elements. As you descend, you collect Earth, Water, Wind, and Fire cores that unlock devastating weapon configurations:

*   **Firestorm:** Rapid-fire solar flares.
*   **Mud Slide:** Slows enemies with heavy gravitational anchors.
*   **Dust Devil:** A swirling vortex of kinetic energy.
*   **Chrono-Blink:** A warp-dodge with I-frames that allows you to phase through incoming fire.

And when things get truly desperate, the **Core Bomb** provides a screen-clearing blast and a few seconds of precious invulnerability.

## Tech Deep Dive: Performance in a Single File

One of the strict constraints I set for this project was **Single-File Portability**. The entire engine, assets (procedural), and logic are packed into `index.html`.

### 1. Procedural Environment Generation
To keep the file size low and the gameplay infinite, the terrain and obstacles are generated procedurally using Three.js. I utilized `MeshPhongMaterial` with `flatShading: true` to achieve that iconic low-poly look without the need for heavy textures.

### 2. Object Pooling
Bullet-hell games are notorious for creating thousands of objects, which can lead to garbage collection stutters. Sun Runner uses a robust object pooling system for projectiles, enemies, and particle effects, ensuring a consistent 60 FPS even on mobile devices.

### 3. Stateless Utility Systems
The collision detection and weapon mapping are handled by static utility classes. This not only makes the code cleaner but also allows for rigorous testing using Vitest, ensuring that the "math" behind the magic stays solid.

## Things I was very happy with

*   **The Aesthetic:** The combination of `Fog Exp2` and the high-contrast palette creates an incredible sense of speed and scale.
*   **Controls:** Implementing a "follow cursor" mechanic that feels responsive on both mouse and touch was a major win. The Chrono-Blink feels especially satisfying to pull off.
*   **The Soundtrack:** Similar to my previous projects, the procedural audio provides a reactive synth-wave backdrop that scales with the action.

## Things I wasn’t very happy with

*   **Difficulty Spike:** The boss encounters can get a bit "bullet-hell" very quickly. I might need to implement a dynamic difficulty scaler based on player performance.
*   **Mobile UI:** While the gameplay works great on mobile, some of the HUD elements can feel a bit crowded on smaller screens.

## Where to from here?

Sun Runner is a technical demonstration of what can be achieved when you strip away the bloat of modern web frameworks and focus on the core experience. Moving forward, I’m looking at:

*   **The "Shadow Realm" Update:** A secondary dimension you can phase into for extra points.
*   **Global Leaderboards:** Because what's a high-score game without competition?
*   **Persistent Upgrades:** Spending "Solar Credits" to customize your ship's starting loadout.

If you're interested in the math behind the procedural generation or the specifics of the Three.js optimization, check out the [GitHub repo](https://github.com/tonym128/SunRunner).

See you in the Sun!

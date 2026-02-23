---
author: tonym128
comments: false
date: 2026-02-22 10:00:00 +0000
title: "Aussie Meme Boss Rush: Vibe Coding the Great Cyber-Outback"
layout: post
---
{% include open-embed.html %}
{% include gtag.html %}

# Aussie Meme Boss Rush tldr; 

![Aussie Meme Boss Rush main interface showing a neon-drenched 3D boss fight](/images/2026/02/23/aussie-meme-rush.png "Aussie Meme Boss Rush Main Interface")

I made a high-octane, neon-drenched 3D boss rush shooter where you face off against cybernetic versions of Australia's most infamous wildlife memes!

Take a look at the site - [Live Demo](https://tonym128.github.io/Aussie-Meme-Boss-Rush/)

Take a look at the code - [Code](https://github.com/tonym128/Aussie-Meme-Boss-Rush)

## Let's talk about the "Vibe".

After the success of [Peakylight](/_posts/2025-12-07-peakylight-chasing-shadows.markdown), I wanted to see if I could push the "Vibe Coding" methodology even further—this time into the realm of 3D gaming. I had a vision of a dystopian future where the "Bogans.exe" virus was threatening the global network, and only one thing stood in its way: a browser-based shooter featuring a Cyber Emu.

## The Big Five

The core of the game is a series of boss battles against "The Big Five." Each one is a cybernetic interpretation of an Australian icon:

1.  **Drop Bear:** The classic ambush predator, now with more neon.
2.  **Cyber Emu:** Fast, flightless, and surprisingly resilient to laser fire.
3.  **Magpie Drone:** It doesn't just swoop; it scans.
4.  **Cyber Huntsman:** Too many legs, all of them glowing.
5.  **K-9000 Roo:** The ultimate outback guardian.

Each boss features **Soft Body Physics**, meaning when you finally take them down, they don't just disappear—they flail in glorious slow-motion ragdoll physics before exploding into a shower of confetti.

## Tech Deep Dive: Making it "Sing"

One of my goals for this project was to keep it entirely self-contained. The entire game—logic, 3D models (procedurally generated), and audio—lives in a **single HTML file**.

### 1. Three.js & Procedural Shaders
Instead of loading heavy textures, I used procedural shaders to create the "neon-noir" aesthetic. This keeps the initial load time near-instant and ensures it runs smoothly on both my desktop and my phone.

### 2. Procedural Audio (Web Audio API)
I didn't want to deal with MP3 files, so I used the Web Audio API to generate real-time synth basslines. The music actually reacts to the game state, intensifying as you get closer to deleting a boss. It’s amazing what you can do with a few oscillators and a dream.

### 3. Star Wars-Style Scrollers
To give it that "Deluxe" feel, I added cinematic story scrollers for the mission briefings. It adds that extra layer of polish that makes a "side project" feel like a "product."

## Things I was very happy with

*   **Mobile Accessibility:** Getting the controls to feel right on both a mouse and a touch screen was a challenge, but using a dual-finger/on-screen button setup for the shield worked out better than I expected.
*   **The Physics:** Watching a Cyber Emu tumble through a neon forest in ragdoll mode is surprisingly satisfying.
*   **The Workflow:** Using Gemini CLI to iterate on the physics and shader logic allowed me to focus on the "fun" parts of the game design while the AI handled the heavy lifting of the WebGL math.

## Things I wasn’t very happy with

*   **UI Scaling:** In very specific portrait orientations on older phones, the score multiplier can sometimes overlap with the health bar. It's a minor "bogan" in the system, but something I'll need to patch.
*   **Performance on Low-End Devices:** While Three.js is efficient, the soft-body calculations can get heavy on older mobile hardware. I might need to add a "Low Detail" mode similar to what I did for Peakylight.

## Where to from here?

The "Aussie Meme Boss Rush" is currently in its "3D Story Deluxe" phase, but the outback is a big place. I’ve already had thoughts about:
*   **The Bin Chicken Expansion:** A secret level featuring a cybernetic Ibis.
*   **Power-up System:** Collecting "Meat Pies" to boost your fire rate.
*   **Global Leaderboards:** To see who the true Cyber-Operator is.

This project further cements my belief that "Vibe Coding" isn't just for prototypes. It’s a way to quickly bridge the gap between "I have a weird idea about a robot kangaroo" and "Here is a playable 3D game."

Stay tuned for more updates, and remember: Watch the skies for Magpie Drones.

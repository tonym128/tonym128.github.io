---
author: tonym128
comments: false
date: 2026-03-17 10:00:00 +0000
title: "Axis Rush: High-Speed Cylindrical Racing in Three.js"
layout: post
---

# Axis Rush tldr; 

I've just released **Axis Rush**, a futuristic arcade racer inspired by the classics like *F-Zero* and *Wipeout*. The twist? You're racing on a giant cylinder, and you can flip between the inside and outside of the track at will to dodge obstacles or find the perfect racing line.

Take a look at the demo page - [Live Demo](https://tonym128.github.io/axis_rush/)

Take a look at the code - [GitHub Repository](https://github.com/tonym128/axis_rush)

![Axis Rush main menu showing a futuristic racing craft on a cylindrical track](/images/axis-rush/axis-rush.jpg "Axis Rush Main Menu")

## The Vision: Redefining the Racing Line

In most racers, the "line" is two-dimensional. In **Axis Rush**, it's a full 360-degree experience. By allowing players to jump between the **Interior** and **Exterior** of the cylindrical track, I wanted to create a game where spatial awareness is just as important as reflexes. 

Flipping to the inside gives you a tighter turn radius but limits your visibility, while the outside offers a grand view of the neon-soaked horizon but leaves you exposed.

## Features: Beyond the Speed Limit

*   **Inside/Outside Transition:** Use the `Space` bar to phase through the track. It’s not just a visual trick—steering is dynamically inverted while inside to keep the controls intuitive from the player's perspective.
*   **Procedural Aesthetics:** Every texture in the game is baked at runtime using [TexGenJS](https://github.com/tonym128/texgen). I used natural language prompts like "neon circuit" and "carbon fiber" to generate GLSL-based textures, keeping the initial bundle size incredibly small.
*   **High-Inertia Physics:** I implemented a "slippery" steering model with an angular velocity system. It feels less like driving a car and more like piloting a high-speed hovercraft with massive momentum.
*   **9 Unique Pilots:** From the disgraced military pilot **Axel Rush** to the digital consciousness **Korvath**, each character has a back-story and a signature color that bleeds into their craft's neon trails.
*   **Thumping Techno Engine:** The soundtrack isn't just a static MP3. It's a custom-coded Web Audio engine that generates procedural techno beats using oscillators and noise buffers, reacting to your speed.

## Tech Deep Dive: Three.js and Post-Processing

### 1. The Cylindrical Coordinate System
Collision detection on a bending, twisting tube is tricky. Instead of standard XYZ coordinates, I used **T-space** (progress along the spline) and **Angle-space** (rotation around the tube). This makes checking if a vehicle is "on the track" or hitting a boost pad a simple 2D range check.

### 2. Post-Processing Pipeline
To capture that "retro-futuristic" vibe, I used the `postprocessing` library to layer:
*   **Motion Blur:** To emphasize the extreme speeds.
*   **Chromatic Aberration:** To simulate the visual distortion of a high-G cockpit.
*   **Pixelation:** A subtle toggle that gives it that late-90s arcade feel.

### 3. Dynamic FOV and Camera Logic
As you hit boost pads or enter a slipstream, the camera’s Field of View (FOV) warps. It’s a classic trick, but combined with Three.js's camera shake and a "zoom-in" countdown, it creates a visceral sense of acceleration.

## Things I was very happy with

*   **The Transition Mechanic:** Getting the camera to smoothly follow the vehicle as it flips from the inside to the outside of the tube without causing motion sickness was a major win.
*   **TexGen Integration:** Seeing a complex, glowing track texture appear from just a few lines of GLSL and a keyword prompt still feels like magic.
*   **The Audio Engine:** Generating a convincing "kick drum" and "hi-hat" purely with code was a fun challenge that paid off in a soundtrack that never sounds exactly the same twice.

## Things I wasn’t very happy with

*   **AI Pathfinding:** The AI currently follows a fairly rigid path. While they can dodge obstacles, they don't yet "think" tactically about flipping inside/outside to overtake the player.
*   **Collision Response:** High-speed collisions between vehicles can sometimes result in "jitter" if the physics steps aren't perfectly aligned with the frame rate. I'm looking into implementing a sub-stepping physics loop to smooth this out.

## What's Next?

I’m working on a **League Mode** with a persistent leaderboard and potentially a **Track Editor** that allows players to draw their own splines in 3D space.

If you want to try your hand at the 2026 League, head over to the [GitHub repo](https://github.com/tonym128/axis_rush) and give it a spin!

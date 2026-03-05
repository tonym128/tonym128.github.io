---
author: tonym128
comments: false
date: 2026-03-04 10:00:00 +0000
title: "TexGen: Procedural Texture Generation for the Web"
layout: post
---

# TexGen tldr; 

I built **TexGen**, a lightweight (~15kb) JavaScript library that leverages GLSL shaders to generate high-quality, procedural textures on the fly, including a natural language interface called "TexGen Words".

Take a look at the site - [Live Demo](https://tonym128.github.io/texgen/)

Take a look at the code - [Code](https://github.com/tonym128/texgen)

## The Vision: Visuals with Code, Not Bandwidth

In the modern web, we often find ourselves shipping megabytes of static assets. **TexGen** was born out of a desire to flip that script. Why ship a 2MB PNG of a brick wall when you can ship a 1KB shader string that generates that same wall (and infinite variations of it) directly on the user's GPU?

Whether you need static baked images for a UI or real-time animated backgrounds for a game, TexGen provides the primitives to build them without the bandwidth bloat.

## Features: Beyond Just Noise

TexGen isn't just a wrapper for a canvas; it's a full-featured texture pipeline:

*   **Live GLSL Editor:** A built-in IDE with real-time feedback and @slider annotations for interactive debugging.
*   **TexGen Words:** An addon that allows you to synthesize complex textures using natural language. Phrases like "blue fire spiral warp" or "purple plasma vortex" are instantly converted into optimized GLSL.
*   **PBR Ready:** Native support for Albedo, Normal, Roughness, Metallic, and Ambient Occlusion maps.
*   **Mobile First:** Adaptive scaling for high-DPI screens and high-precision defaults to ensure consistency across mobile GPUs.
*   **Infinite Variety:** By tweaking a single seed uniform, you can generate millions of unique assets from a single shader.

## Tech Deep Dive: GPU-Accelerated Pipelines

### 1. The Power of FBM and Voronoi
At its core, TexGen provides highly optimized GLSL implementations of Fractional Brownian Motion (FBM), Voronoi noise, and standard Perlin noise. These are the building blocks of nature—from the way clouds form to the cracks in a dry lake bed.

### 2. Compact Payloads
One of the most powerful features is the URL-based sharing. Because the textures are just code, a complex atmospheric sky can be reduced to a tiny Base64 string. This "Texture Streaming" approach allows for massive world-building with minimal initial load times.

### 3. Asynchronous Baking
To keep the UI responsive, TexGen supports offloading the generation to Web Workers using `OffscreenCanvas`. This ensures that even high-resolution 4K bakes won't freeze the main thread.

## Things I was very happy with

*   **TexGen Words Synthesis:** Seeing natural language keywords like `lava`, `neon`, and `glitch` successfully combine into a working shader feels like magic.
*   **The Example Library:** I managed to pack over 50 built-in examples into the gallery, ranging from "Rusted Hull" to "Infinite Island".
*   **The TypeScript Support:** Adding full `.d.ts` definitions and a dedicated TypeScript gallery makes the library a joy to use in modern dev environments.

## Things I wasn’t very happy with

*   **GLSL Debugging:** While the editor is great, debugging shader logic is still a hurdle for those not familiar with GPU programming. I'm looking into more "visual node" based editing.
*   **Precision Quirks:** Even with `highp` defaults, some older mobile GPUs still exhibit tiny artifacts in heightmaps that are hard to squash without sacrificing performance.

## Showcase: Procedural Power in Practice

To demonstrate the versatility of TexGen, I've built a series of interactive demos that push the library to its limits. Each one highlights a different core feature while maintaining an incredibly small footprint.

| Project | Feature Highlight | Built-in Textures | Payload Size |
| :--- | :--- | :--- | :--- |
| **[TypeScript Gallery](https://tonym128.github.io/texgen/example/typescript_gallery/index.html)** | Type-safe baking & real-time animation | 5 | 1.1 KB |
| **[Texture Streaming](https://tonym128.github.io/texgen/example/texture_streaming/index.html)** | Async Web Workers & OffscreenCanvas | 1 | 1.6 KB |
| **[Multi-pass Composition](https://tonym128.github.io/texgen/example/multipass_post/index.html)** | Post-processing & effect chaining | 3 | 1.5 KB |
| **[Ultimate Platformer](https://tonym128.github.io/texgen/example/platformer/index.html)** | Procedural game assets & backgrounds | 19 | 5.3 KB |
| **[3D Maze Explorer](https://tonym128.github.io/texgen/example/maze3d/index.html)** | Real-time animated 3D environments | 8 | 1.6 KB |
| **[3D Marble Cube](https://tonym128.github.io/texgen/example/marble_cube/index.html)** | Dynamic portals & face-swapping logic | 6 | 1.7 KB |
| **[Marble Roller](https://tonym128.github.io/texgen/example/marble_roller/index.html)** | Physics-based materials & tiling | 5 | 1.8 KB |
| **[Flight Sim](https://tonym128.github.io/texgen/example/flight_sim/index.html)** | Infinite landscapes & day/night cycles | 5 | 3.3 KB |
| **[Card Roguelike](https://tonym128.github.io/texgen/example/card_roguelike/index.html)** | Seeded UI frames & ornate artwork | 19 | 4.2 KB |
| **[Procedural Solitaire](https://tonym128.github.io/texgen/example/solitaire/index.html)** | Realistic paper & felt material textures | 3 | 1.2 KB |

## Try it Yourself: Inline Examples

You don't need a heavy engine to start creating. Here are a few ways to talk to TexGen.

### 1. The GLSL Approach
You can write raw shaders with interactive sliders. Here's a simple animated plasma:

```glsl
uniform float u_scale; // @slider 1.0, 10.0, 4.0
uniform float u_speed; // @slider 0.0, 2.0, 0.5

void main() {
    vec2 st = vUv * u_scale;
    float t = u_time * u_speed;
    float n = fbm(st + vec2(t, t * 0.4), u_scale);
    
    vec3 col1 = vec3(0.0, 0.2, 0.5);
    vec3 col2 = vec3(0.0, 1.0, 0.8);
    vec3 color = mix(col1, col2, n);
    
    gl_FragColor = vec4(color * (n + 0.2), 1.0);
}
```

### 2. TexGen Words (Natural Language)
If you're not a shader expert, you can use **TexGen Words** to describe your vision. Try these phrases in the [Word Textures](https://tonym128.github.io/texgen/example/word_textures/index.html) editor:

*   **Lava Flow:** `lava smoke fire hot`
*   **Frozen Tundra:** `icy stone marble rough`
*   **Digital Glitch:** `neon digital glitch`
*   **Mystic Forest:** `forest leaf grass mist`
*   **Plasma Vortex:** `purple plasma vortex glow`

## Where to from here?

I'm just getting started with TexGen, and there is plenty more on the roadmap:

*   **AI-Assisted Generation:** Further integrating LLMs to help users write custom shader logic from scratch within the editor.
*   **Node.js CLI:** A dedicated build tool for pre-baking textures as part of a CI/CD pipeline.
*   **Three.js / Babylon.js Plugins:** Official wrappers to make procedural texture injection as simple as a single line of code.

If you're a game dev or a web artist looking to save some kilobytes, give [TexGen](https://github.com/tonym128/texgen) a spin!

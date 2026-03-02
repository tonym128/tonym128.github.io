---
author: tonym128
comments: false
date: 2026-03-02 10:00:00 +0000
title: "TexGen: The Ultimate Procedural Texture Playground"
layout: post
---
{% include open-embed.html %}
{% include gtag.html %}

# TexGen tldr;

I built a powerful, web-based procedural texture generator that leverages GLSL shaders to create high-quality textures in real-time. Whether you need a simple stone pattern or a complex sci-fi panel, TexGen makes it happen instantly in your browser.

Take a look at the site - [Live Demo](https://tonym128.github.io/texgen/)

Take a look at the code - [Code](https://github.com/tonym128/texgen)

## Let's talk about the "Vibe".

Following the success of my recent 3D experiments like [Peakylight](/_posts/2025-12-07-peakylight-chasing-shadows.markdown) and [Aussie Meme Boss Rush](/_posts/2026-02-23-aussie-meme-boss-rush.markdown), I wanted to build something that bridges the gap between raw shader code and usable game assets. The goal was to create a "vibe" where you can just sit down, pick an example, tweak a few sliders, and have a professional-grade PBR texture ready to go.

## The Power of Procedural

The heart of TexGen is its library of over **50 built-in examples**. These aren't just static images; they are live shaders that can be modified on the fly. We've got everything from:

1.  **Natural Elements:** Island maps, water, grass, marble, and ice.
2.  **Industrial Materials:** Bricks, rusted hull, corrugated metal, and hazard stripes.
3.  **Sci-Fi Aesthetics:** Cyber glow, energy shields, and advanced hull plating.
4.  **PBR Specifics:** Dedicated materials for Gold, Copper, Silver, and Iron with realistic surface properties.

Each shader can be previewed on different 3D primitives (Cube, Sphere, Torus) with real-time PBR lighting.

## Tech Deep Dive: Under the Hood

TexGen is built to be fast, portable, and extremely flexible.

### 1. Live GLSL Editor & Dynamic Sliders
The editor allows for instant compilation. One of my favorite features is the **Dynamic Slider System**. By adding a simple `@slider` comment to your GLSL uniforms, the UI automatically generates interactive controls:

```glsl
uniform float u_scale; // @slider 1.0, 10.0, 5.0
```

This makes it incredibly easy to experiment with different scales and intensities without touching the code.

### 2. Visualization & Baking
You can toggle between different visualization passes (Albedo, Normal, Roughness, Metallic, AO) to see exactly how your material is composed. When you're happy, you can **Bake** the textures directly to a ZIP file, including full PBR sets or even spritesheets for animated shaders.

### 3. Shader Compression
Sharing is a core part of the experience. I implemented a shader compression system that packs your entire GLSL code into a URL. This means you can share a specific look just by sending a link—no backend required.

## Things I was very happy with

*   **The Example Library:** Having 50+ starting points makes the tool immediately useful.
*   **The PBR Previewer:** Seeing how a texture reacts to light on a 3D sphere is crucial for material design.
*   **Zero Dependencies:** The core application is built with Vanilla JS and GLSL, keeping it lightweight and responsive.

## Things I wasn’t very happy with

*   **Mobile UI:** While it works, the shader editor can be a bit cramped on smaller screens. I might need to implement a dedicated mobile view for the controls.
*   **Complexity of Some Shaders:** Some of the more advanced PBR materials can be taxing on older GPUs. I'm looking into ways to optimize the more complex ray-marching examples.

## Where to from here?

TexGen is already a solid tool for my own game development workflow, but there's always more to add:
*   **Custom Texture Uploads:** Allowing users to use their own images as inputs for the procedural logic.
*   **Community Gallery:** A place for users to share and discover new shaders.
*   **More Primitive Shapes:** Adding more 3D models for previewing textures.

If you are a game developer, a technical artist, or just someone who loves playing with shaders, give [TexGen](https://tonym128.github.io/texgen/) a spin and let me know what you think!

Stay creative, and keep those pixels procedural.

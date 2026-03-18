---
author: tonym128
comments: false
date: 2026-03-08 10:00:00 +0000
title: "triangleVision: Real-time Geometric Video Abstraction"
layout: post
---

# triangleVision tldr; 

I built **triangleVision**, a high-performance video processing engine that transforms standard video or live webcam feeds into stylized, artistic triangle meshes in real-time. It uses intelligent point sampling to preserve detail while creating a unique "low-poly" aesthetic.

Take a look at the demo page - [Live Demo](https://tonym128.github.io/triangleVision)

Take a look at the code - [Code](https://github.com/tonym128/triangleVision)

## The Vision: Turning Pixels into Geometry

Most video filters operate purely on pixels. **triangleVision** takes a different approach by treating the video frame as a dynamic coordinate space for geometry. The goal was to create a tool that doesn't just "blur" or "pixelate" but actually re-interprets the visual data through the lens of computational geometry.

By using Delaunay triangulation, the video becomes a living, breathing mesh of interconnected triangles that shift and morph as the underlying scene changes.

## Features: More Than Just Random Points

The magic of triangleVision isn't just in the triangles themselves, but in how it decides where to place them:

*   **Intelligent Point Sampling:** Instead of a uniform grid, the system uses edge detection (Shi-Tomasi) to place more detail in complex areas and fewer triangles in flat regions.
*   **Human-Centric Focus:** Integrated HOG and Haar Cascades ensure that faces and human figures retain high fidelity, even in a highly abstracted mesh.
*   **Motion-Aware Density:** The engine tracks movement, increasing the triangle count in areas with significant action to capture every nuance of motion.
*   **Custom `.triv` Codec:** I designed a bespoke binary format to store triangle data efficiently, allowing for much smaller file sizes than traditional video when storing geometric abstractions.
*   **Aesthetic Modes:** Beyond the standard mesh, it includes a **Rotoscope** mode for an "ink-and-paint" look and a **Heatmap** mode for technical visualization.

## Tech Deep Dive: Python Meets the GPU

### 1. The Processing Pipeline
The core engine is written in Python, but it relies on **ModernGL** and custom **GLSL shaders** to handle the heavy lifting of rendering. This allows the system to maintain 30+ FPS even while performing complex geometric calculations.

### 2. High-Speed Triangulation
We use **SciPy** for the Delaunay triangulation, but to keep things fast, we leverage **Numba** for Just-In-Time (JIT) compilation of our color sampling and data processing loops. This turns bottlenecked Python code into machine-speed execution.

### 3. Multi-Threaded Capture
To ensure zero lag in the webcam feed, triangleVision uses a threaded capture system. This decouples the video input from the processing and rendering cycles, preventing any "hitchy" frames during live use.

## Things I was very happy with

*   **Real-time Performance:** Getting Delaunay triangulation to run at 30+ FPS on 1080p video was a significant hurdle, and seeing it run smoothly is incredibly satisfying.
*   **The `.triv` Player:** The web-based player (JS/HTML) works surprisingly well, proving that the geometric data format is portable across different stacks.
*   **Stylized Export:** Being able to export the final result back to MP4 or MKV makes it a practical tool for content creators, not just a tech demo.

## Things I wasn’t very happy with

*   **CPU Bottlenecks:** While the rendering is on the GPU, the actual triangulation calculation is still a CPU-heavy task. For ultra-high point counts (10,000+), the frame rate still takes a hit.
*   **Dependency Chain:** The setup requires a specific set of high-performance libraries (OpenCV, ModernGL, SciPy). I'm looking into ways to package this more easily for non-technical users.

## What's Next?

I'm currently experimenting with a **Vulkan-based** implementation of the triangulation itself to move even more of the logic onto the GPU. I also want to add more interactive controls for VJs, such as MIDI support to trigger mesh density and color shifts during live performances.

If you're into creative coding or computer vision, check out the [GitHub repo](https://github.com/tonym128/triangleVision) and let me know what you think!

---
layout: splash
permalink: /
header:
  overlay_color: "#000"
  overlay_filter: "0.5"
  overlay_image: /images/big_computer-opt.jpg
excerpt: "Hi, I’m Tony. I’m a software engineer, and this is my digital workshop for technical and creative experiments."

feature_row:
  - image_path: /images/2026/04/debugging-opt.jpg
    alt: "Debugging the Novel"
    title: "Debugging the Novel"
    excerpt: "How a weekend experiment turned into building a nine-book cyberpunk series using AI and LLMs."
    url: "/2026/04/25/debugging-the-novel-how-i-built-a-9-book-cyberpunk-series-with-ai.html"
    btn_label: "Read More"
    btn_class: "btn--primary"
  - image_path: /images/peakylight/main-interface-opt.jpg
    alt: "Peakylight"
    title: "Peakylight"
    excerpt: "An interactive 3D map tool that visualizes terrain shadows and actual sunlight hours."
    url: "/2025/12/07/peakylight-chasing-shadows.html"
    btn_label: "Read More"
    btn_class: "btn--primary"
  - image_path: /images/2026/04/whisper-cpp-opt.jpg
    alt: "Shhh, keep quiet!"
    title: "Shhh, keep quiet!"
    excerpt: "Building a Telegram bot with Whisper.cpp and a Raspberry Pi to automatically transcribe voice notes."
    url: "/2023/08/13/keeping-it-quite-whispercpp-raspberry-pi-python-and-a-telegram-bot.html"
    btn_label: "Read More"
    btn_class: "btn--primary"
  - image_path: /images/2026/04/texgen-opt.jpg
    alt: "TexGen"
    title: "TexGen"
    excerpt: "Creating TexGen, a lightweight JavaScript library for generating procedural GLSL textures on the fly."
    url: "/2026/03/04/texgen-procedural-texture-generator.html"
    btn_label: "Read More"
    btn_class: "btn--primary"
  - image_path: /images/2026/04/triangle-opt.jpg
    alt: "triangleVision"
    title: "triangleVision"
    excerpt: "Building a high-performance web tool that transforms video feeds into stylized, real-time triangle meshes."
    url: "/2026/03/08/trianglevision-real-time-geometric-video-abstraction.html"
    btn_label: "Read More"
    btn_class: "btn--primary"
  - image_path: /images/2021/08/1-metrics-overview-opt.jpg
    alt: "The Time I Uploaded 3000 videos to YouTube"
    title: "The Time I Uploaded 3000 videos to YouTube"
    excerpt: "The story of an automation project that generated and uploaded 3,000 videos to YouTube in six months."
    url: "/2021/08/25/the-time-i-uploaded-3000-videos-to-youtube.html"
    btn_label: "Read More"
    btn_class: "btn--primary"
---

{% include feature_row %}

<style>
  /* Flexbox overrides for Minimal Mistakes Feature Row to ensure equal heights and aligned buttons */
  .feature__wrapper {
    display: flex;
    flex-wrap: wrap;
    align-items: stretch;
  }
  .feature__item {
    display: flex;
    flex-direction: column;
  }
  .feature__item .archive__item {
    display: flex;
    flex-direction: column;
    height: 100%;
  }
  /* Standardize image sizes and crop them beautifully */
  .feature__item .archive__item-teaser {
    flex-shrink: 0;
  }
  .feature__item .archive__item-teaser img {
    height: 200px;
    object-fit: cover;
    width: 100%;
    display: block;
  }
  .feature__item .archive__item-teaser img[src*="texgen-opt"] {
    object-position: top left;
  }
  /* Push the button to the bottom of the card */
  .feature__item .archive__item-body {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
  }
  .feature__item .archive__item-body > p:last-child {
    margin-top: auto;
    margin-bottom: 0;
  }
</style>

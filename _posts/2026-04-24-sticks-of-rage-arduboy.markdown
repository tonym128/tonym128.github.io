---
author: tonym128
comments: False
date: 2026-04-24 10:00:00+00:00
title: "Sticks of Rage: Scaling Up to a 2D Brawler"
layout: single
excerpt: "How I took the engine from Stick Fighter and evolved it into a full-scale 2D brawler, complete with parallax backgrounds, swarming AI, and a new RPG-lite stat system."
header:
  teaser: /images/2026/05/10/frontscreen-opt.jpg
  overlay_image: /images/2026/05/10/frontscreen-opt.jpg
  overlay_filter: 0.5
---

# Sticks of Rage: Scaling Up to a 2D Brawler

![Front Screen](/images/2026/05/10/frontscreen-opt.jpg)

After the success of *Stick Fighter*, I found myself deeply attached to its core engine. The bone-based skeletal animation system I had engineered for the Arduboy felt like it had more to give. I started wondering: *could this be the backbone of a classic 2D brawler?*

The result is **Sticks of Rage**, an evolution of the *Stick Fighter* tech stack that transformed a 1v1 fighter into a chaotic, side-scrolling beat 'em up.

View its game page and play it online [here](https://community.arduboy.com/t/sticks-of-rage/13420)

Take a look at the source code [here](https://github.com/tonym128/sticksofrage)

## Technology Reuse: The "Stick Engine"

![Fighter Select](/images/2026/05/10/fighter-opt.jpg)

The animation system migrated to the new project almost seamlessly. By reusing the core skeletal pose data, I was able to hit the ground running. I’ve tentatively dubbed this codebase the "Stick Engine." While it started as a 1:1 port of the *Stick Fighter* logic, it has since been heavily refactored to support the more complex demands of a side-scrolling world.

## The Evolution of the System

Taking a 1v1 engine and making a brawler required adding several new layers of depth:

*   **Stat-Based Gameplay:** I introduced a simple RPG-lite stat system for Life, Damage, and Speed. This allowed for diverse character archetypes: big enemies hit harder and have more health but move sluggishly, while smaller ones are fast but frail.
*   **Parallax Backgrounds:** To give the flat screen a sense of depth, I implemented a layered parallax background system. Even with simple geometric lines, the movement of different layers really sells the "traveling through a city" vibe.
*   **Plane Movement:** Unlike *Stick Fighter*, which locked characters to a single horizontal line, *Sticks of Rage* allows players to move up and down in the plane, opening up the battlefield for strategic positioning.

## Character Dynamics and Story

![Story Screen](/images/2026/05/10/story-opt.jpg)

I took the nine original characters from *Stick Fighter* and re-purposed them for this new world. I chose three main protagonists for the player to master, while the remaining six were converted into distinct enemy archetypes. Each playable character now comes with their own intro and outro stories, fleshed out with "boss talk" dialogue that triggers before the big fights.

## The AI Challenge: Swarming

![Gameplay](/images/2026/05/10/gameplay-opt.jpg)

One of the biggest shifts was moving from 1v1 combat to swarming. Enemies now use a group-based AI, employing different "personalities" to keep the player on their toes. As stages get harder, the swarm density and aggression increase.

However, this came at a cost. The ATMega32U4 is not a powerhouse. Getting multiple enemies, parallax layers, and player combat running simultaneously meant the CPU was constantly on the edge of a collapse. I had to enforce a strict limit: **a maximum of four characters on screen at once.** Keeping the background geometry simple was the only way to squeeze the extra CPU cycles out of the hardware to maintain playability.

## The Hardest Part: The Memory Wall

The hardest part of this project, once again, was fitting it all in. *Sticks of Rage* pushed the memory and CPU constraints even further than its predecessor. Every byte saved in the background engine was a byte used for a character stat or a line of story dialogue.

## Reflecting on Re-use

Building *Sticks of Rage* taught me that technical re-use is one of the most rewarding parts of software engineering. Watching a system I built for one purpose evolve to serve a completely different genre—all while staying within the same 8-bit constraints—was an incredible experience. 

The game may be simple, but seeing three playable characters roaming a parallax city, battling swarms of enemies, all on a device with less power than a modern calculator? That’s the kind of technical satisfaction that keeps me building on the Arduboy.

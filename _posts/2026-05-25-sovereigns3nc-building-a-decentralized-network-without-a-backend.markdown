---
author: tonym128
comments: False
date: 2026-05-25 10:00:00+00:00
title: "SovereignS3nc: Building a Decentralized Network Without a Backend"
layout: single
header:
  teaser: /images/2026/05/25/SovereignS3ncPoster-opt.jpg
  overlay_image: /images/2026/05/25/SovereignS3ncPoster-opt.jpg
  overlay_filter: 0.5
excerpt: "How far can you go with just S3 and zero hosted compute? Pushing the limits of sovereign networks with SovereignS3nc."
---

# SovereignS3nc: The No-Backend Experiment

What if you could build a fully functional social network, a blog, or even a banking app, without ever deploying a backend server? No Node.js API, no Go microservices, no Supabase, and no Firebase. Just a static frontend and a bucket of S3 storage.

That was the goal of **SovereignS3nc**. I wanted to see how far I could push the concept of a "sovereign network"—where the user truly owns their data, and the application is just a lens through which they view it.

## The Vision: Zero Hosted Compute

The core idea is simple: your data lives in an S3 bucket (AWS, OCI, or self-hosted via something like **RustFS**). When you use an application, you connect it to *your* storage. You share data by giving other users permission to read specific parts of your bucket, and you follow others by reading from theirs.

Using a single statically hosted frontend, you should be able to:
1. Connect to your own data.
2. Share with other users.
3. Keep everything encrypted and private.

## Pushing the Limits

I pushed this idea as far as I could, and while I hit some interesting walls, I also found some elegant ways around them.

### What Works Beautifully: Private Stores & E2EE

The private side of things is rock-solid. By using local public keys and E2EE (End-to-End Encryption) via `tweetnacl`, your data remains secure even if the bucket itself is compromised. Since I don't allow listing on the S3 bucket, and everything is encrypted with your local key before it even hits the wire, the storage provider is essentially a "dumb" pipe.

The backend storage model I settled on works surprisingly well: **SQLite daily files per user**. These databases are hashed, encrypted, and synced incrementally. It’s clean, it’s fast, and it blends perfectly with the offline-first architecture.

### The Stumbling Block: Shared Resources

The biggest challenge in a serverless, backend-less world is **shared state**. 

In SovereignS3nc, I used a `users.json` file at a fixed location to handle user discovery. But because multiple users need to write to it (to "register" themselves on the network), it becomes a massive bottleneck. Without a central authority or a backend server to handle user creation and custom access rights, multi-writer shared files are a significant hurdle.

## The Demos: Alpha/Beta Ready

I built out a suite of demos that show what’s possible:

### Social Demo
A decentralized social network with messaging and feeds.
![Social Demo](/images/2026/05/25/SovereignS3nc-opt.jpg)

### Social Bank (Banky)
A transaction tracker that I actually use for my children's bank accounts.
![Banky](/images/2026/05/25/Banky-opt.jpg)

### Social Blog
A decentralized blogging platform.
![Social Blog](/images/2026/05/25/Blog-opt.jpg)

### Social Board
A shared message board for distributed teams.
![Social Board](/images/2026/05/25/SovereignBoard-opt.jpg)

All of these are currently at an Alpha/Beta level and demonstrate that for many use cases, the "no-backend" approach is not just a pipe dream.

## Lessons Learned & The Path Forward

In the end, SovereignS3nc is a perfect library for creating flexible, usable stores for personal privately hosted applications. For me, it's the ideal way to host quick apps that I only access via a VPN.

I believe there's still a gap in the web standards for a native authentication mechanism that can dynamically build access rights on the server side via S3 APIs. The "real" version of this concept is likely close to something like **Supabase**. To move SovereignS3nc forwards to something production ready, the next step would be integrating an identity provider and a minimal server to handle user registration and ACLs.

It was a great exercise in taking a concept to its logical extreme. I particularly love the idea of "pop-up" local networks—networks that exist only for a specific event, hosted entirely on the participants' own S3 buckets.

How do you keep control without a server? How do you handle access control? I have some answers around encryption and security, but definitely still have a few unanswered questions still too.

Check out the [SovereignS3nc GitHub page](https://github.com/tonym128/SovereignS3nc) if you want to dive into the code.

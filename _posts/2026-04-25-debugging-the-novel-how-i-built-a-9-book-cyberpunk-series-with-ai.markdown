---
author: tonym128
comments: false
date: 2026-04-25 10:00:00 +0000
title: "Debugging the Novel: How I Built a 9-Book Cyberpunk Series with AI"
layout: post
---

# Debugging the Novel: How I Built a 9-Book Cyberpunk Series with AI

> **Status:** Published  
> **Genre:** Cyberpunk / Tech-Noir / Non-Fiction  
> **Tags:** #AIWriting #LLM #CreativeProcess #Cyberpunk #SoftwareEngineering

---
<div style="display: flex; justify-content: center;">
<img src="/images/2026/04/1_titled.jpg" width=50% alt="System Exception - Unhandled Exceptions Book 1 Cover">
</div>

## Abstract

As a programmer, my relationship with AI has mostly been about source code, building applications, refactoring functions or hunting down race conditions. Recently, I found myself craving a very specific story: a humorous, sprawling, world-spanning cyberpunk detective noir. I decided to see if I could build it.

What started as a weekend experiment in "creative prompting" turned into a massive project: **The Unhandled Exceptions**, a nine-book series. Along the way, I learned that writing a book with an LLM isn't just about asking it to "write a story", it’s about system architecture, context management, and a surprising amount of manual "Meatspace" formatting.

---

## Phase 1: Architecting the Universe

With AI, writing the prose is easy; building a world is hard. I spent a significant amount of time in the ideation phase. This wasn't just shouting into a void; it felt like playing a high-stakes Tabletop RPG with the AI.

I created character sheets that functioned like documentation. We traded plot ideas back and forth, I’d provide a prompt, the AI would suggest three directions, and I’d pick the most interesting "bug" to turn into a feature.

To keep the story consistent across nine books, I had to be disciplined with my "source code":

* `story.md`: Mapped out the overall series arc.
* `characters.md`: Detailed bios and motivation trackers.
* `chapters.md`: Granular breakdowns of pacing and plot beats.
* `synopsis.md`: Book synopsis, story points, and chapter-by-chapter one-liner summaries.

I wanted to ensure the **"Context Window"** was always present and optimized. If the LLM forgot that Detective Miller hated "Smart" coffee, the immersion broke. I treated these markdown files as the **"State"** of my application.

---

## Phase 2: The Factory Floor (Generation)

Once the architecture was solid, we moved to production. For the sake of speed and narrative flow, we generated two chapters at a time.

I set a hard constraint: **20 chapters per book.**

Mapping the arc for all nine books before writing a single word of Chapter 1 was the only way to ensure that the "Zero Day" finale in Book 9 actually paid off the breadcrumbs dropped throughout the series.

---

## Phase 3: The Polish (Iterative Editing)

The first draft is never the final product. The editing process was an iterative Q&A loop. I’d go through the chapters, identify "hallucinations" or repetitive phrasing, and we’d work together to refactor the prose. 

> *Note: If I saw "chocolate-chip eyes" one more time, I was going to crash the system.*

It was less about fixing typos and more about fixing narrative logic.

---

## Phase 4: Logic Gates & Lost Characters

Once all the beats and rough edits were in place, I did a lot of work around book length, chapter lengths and character placement. Building skills to monitor the length of chapters and books. Building skill to identify characters in the books and their impact. Expanding in most cases, but a few times during big edits Gemini would occasionally lose the plot.

In one particular instance I had an entire chapter go missing during an unrelated edit, but thankfully due to diligent source control I was able to go back and retrieve it.

I had to spend a substantial amount of time re-integrating missing characters into the books in cases where they were under-represented.

I have immense respect for the authors I love and this process gave me another group of people to be very respectful to as well, proof readers, editors and layout experts (foreshadowing). 

It honestly takes a village to grow from a baby manuscript to a book.

---

## Phase 5: Bridging the Air-Gap (Publishing)

I decided early on that I wanted to see what it would take to go from a digital idea to a physical object on a shelf. I chose **Amazon KDP (Kindle Direct Publishing)** for its simplicity.

Amazon handles the heavy lifting: distribution, printing on demand, and providing the necessary ISBNs and ASINs. They take their commission and product fees, which, for a side project like this, felt like a fair trade for the infrastructure they provide.

### The Hidden Boss: Formatting

If you think writing 180 chapters is hard, try getting page numbers to behave in a 400-page PDF. Formatting took a massive chunk of the post-writing schedule. You have to juggle two different **"build targets"**:

1.  **E-book**: Requires an EPUB with specific Amazon-friendly formatting.
2.  **Paperback**: Requires a precisely sized PDF.

Things like "Chapter starts on a new page," "Footnote placement," and "Page numbering" became my new "segmentation faults." Even the covers were a challenge, an e-book cover is a simple JPEG, but a print cover is a complex PDF "wrap" that includes the spine width, which changes based on your page count.

---

## Final Thoughts

Is it "cheating" to write with AI? It's definitely different, but I don't think so. I feel more like a **Director** or a **Lead Architect**. I provided the vision, the constraints, and the "human" soul, while the AI provided the raw processing power to flesh out the world.

I ended up with something I actually wanted to read. And in the process, I gained a massive amount of respect for the technical hurdles that traditional authors face every day.

---

## 💡 Tips for AI-Authors

* **Markdown is your friend.** It’s clean, version-control-friendly, and LLMs understand it perfectly.
* **Plan the end first.** If you don't know the finale of your series and work towards it, the AI will just meander.
* **Don't skip the formatting.** Use the Kindle Desktop Publishing builder, it’s a lifesaver for the cover wraps.

---

*The Unhandled Exceptions first 3 books are available on Amazon. Not bad for a project that started with a "What if?" prompt.*

Book 1 - System Exception | Book 2 - Memory Leak | Book 3 - FATAL ERROR
:-------------------------:|:-------------------------:|:-------------------------:|
<a href="https://www.amazon.com/System-Exception-Unhandled-Exceptions-Book-ebook/dp/B0GNMRWSYD"><img src="/images/2026/04/1_titled.jpg" width=200 alt="System Exception Cover"></a> | <a href="https://www.amazon.com/Memory-Leak-Unhandled-Exceptions-Book-ebook/dp/B0GS9BSHLD"><img src="/images/2026/04/2_titled.jpg" width=200 alt="Memory Leak Cover"></a> | <a href="https://www.amazon.com/gp/product/B0GX2YF9MX"><img src="/images/2026/04/3_titled.jpg" width=200 alt="Fatal Error Cover"></a> |

And more to come, see you in Neo-Viridia!

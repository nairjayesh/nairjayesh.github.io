---
title: "Exploring SAM2 and Scene Graphs" 
finished: true 
last-modified: 2025-08-21
date: 2024-06-01
tags: ["object tracking", "deep learning", "scene graphs"]
---

I recently came upon the idea for a scene-graphs, below is a very short demonstration along with a link to colab notebook where I explore using Meta's Segment Anything 2 (SAM2) model to create scene graphs. 

The video we are going to be using is as follows, we want SAM2 to track the cup that contains the ball and in the end tell us the corrent position. 

<div style="display: flex; flex-direction: column; align-items: center; gap: 20px; margin: 30px 0;">
  <div style="width: 80%; max-width: 800px;">
    <figure style="margin: 0;">
      <video controls style="width: 100%; height: auto; border-radius: 5px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
        <source src="/projects/assets/02_cups.mp4" type="video/mp4">
        Your browser does not support the video tag.
      </video>
      <figcaption style="text-align: center; font-style: italic; color: #666; margin-top: 8px;">
        A side-by-side video showing the real-time cup tracking and the corresponding scene graph.
      </figcaption>
    </figure>
  </div>
</div>


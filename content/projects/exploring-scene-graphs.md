---
title: "Exploring SAM2 and Scene Graphs" 
finished: false 
last-modified: 2025-08-21
date: 2025-08-21
tags: ["object tracking", "deep learning", "scene graphs"]
---

I recently came across an idea, in which scene-graphs are used to describe what is happening in a given video frame, below is a very short demonstration along with a link to colab notebook where I explore using Meta's Segment Anything 2 (SAM2) model to create scene graphs. 

The video we are going to be using is as follows, we want SAM2 to track the cup that contains the ball and in the end tell us the correct position. 

<div style="display: flex; flex-direction: column; align-items: center; gap: 20px; margin: 30px 0;">
  <div style="width: 80%; max-width: 800px;">
    <figure style="margin: 0;">
      <video controls style="width: 100%; height: auto; border-radius: 5px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
        <source src="/projects/assets/02_cups.mp4" type="video/mp4">
        Your browser does not support the video tag.
      </video>
      <figcaption style="text-align: center; font-style: italic; color: #666; margin-top: 8px;">
        A video showing a person shifting cups.
      </figcaption>
    </figure>
  </div>
</div>

Here's the video showing a side by side comparision of scene graphs (atleast the ones that show a spatial relationship between objects) along with the segmented frame. 

I was really impressed by how sam2 kept track of three different object id's with nearly identical features, i.e., red cups. 
<div style="display: flex; flex-direction: column; align-items: center; gap: 20px; margin: 30px 0;">
  <div style="width: 80%; max-width: 800px;">
    <figure style="margin: 0;">
      <video controls style="width: 100%; height: auto; border-radius: 5px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
        <source src="/projects/assets/output_video_21.webm" type="video/webm">
        Your browser does not support the video tag.
      </video>
      <figcaption style="text-align: center; font-style: italic; color: #666; margin-top: 8px;">
        A video comparision side by side of spatial graphs along with segmented video.
      </figcaption>
    </figure>
  </div>
</div>

Future plans: 
- This was admittedly a very basic exploration, I would like to compare scene graphs that related objects with actions. 
- Deep dive into how SAM2 actually performs the tracking. 
---
title: "Sensor data fusion: Camera & Radar" 
finished: true 
date: 2024-06-10
last-modified: 2025-04-11
tags: ["computer vision", "sensor fusion", "deep learning"]
---

This was a team project done under supervision of [Technische Hochschule University, Ingolstadt](https://www.thi.de/). The goal was to create a perform late-fusion on radar & camerea detections.

This was really fun to work on - got to learn about nitty-gritties of model training, evaluation and spatial fusion of detections. I would like to highlight a few sections here from the project. 

[Github Repo](https://github.com/nairjayesh/Sensor-Data-Fusion)

### Image Augmentation:
Primary problem when it comes to working on road user data is high levels of data imbalance among different classes, we were working with 6  road user classes with the following distribution.

<div style="display: flex; flex-direction: column; align-items: center; gap: 20px; margin: 30px 0;">
  <!-- First image -->
  <div style="width: 10%; max-width: 400px;">
    <figure style="margin: 0;">
      <img src="/projects/assets/instance_data_analysis.png" alt="Road user data distribution" style="width: 100%; height: auto; border-radius: 5px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
      <figcaption style="text-align: center; font-style: italic; color: #666; margin-top: 8px;">
        Road user class distribution showing data imbalance
      </figcaption>
    </figure>
  </div>

Tried a bunch of different techniques for image augmentation, one of the most interesting was [Image Inpainting](https://github.com/advimman/lama).

  <!-- Second image -->
  <div style="width: 100%; max-width: 700px;">
    <figure style="margin: 0;">
      <img src="/projects/assets/augmentation.png" alt="Image Inpainting augmentation technique" style="width: 100%; height: auto; border-radius: 5px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
      <figcaption style="text-align: center; font-style: italic; color: #666; margin-top: 8px;">
        Image Inpainting augmentation technique results
      </figcaption>
    </figure>
  </div>
</div>


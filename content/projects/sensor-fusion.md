---
title: "Sensor data fusion: Camera & Radar" 
finished: true 
date: 2024-06-10
last-modified: 2025-04-11
tags: ["computer vision", "sensor fusion", "deep learning"]
---

This was a team project done under supervision of [Technische Hochschule Ingolstadt](https://www.thi.de/). The goal was to perform late-fusion on radar & camerea detections.

This was really fun to work on - got to learn about nitty-gritties of model training, evaluation and spatial fusion of detections. I would like to highlight a few sections here from the project. 

[Github Repo](https://github.com/nairjayesh/Sensor-Data-Fusion)

### Image Augmentation:
Primary problem when it comes to working on road user data is high levels of data imbalance among different classes, we were working with 6  road user classes with the following distribution.

<figure class="fullwidth">
  <img src="/projects/assets/instance_data_analysis.png" alt="Road user data distribution">
  <figcaption>Road user class distribution showing data imbalance</figcaption>
</figure>

Tried a bunch of different techniques for image augmentation, one of the most interesting was [Image Inpainting](https://github.com/advimman/lama).

<figure class="fullwidth">
  <img src="/projects/assets/augmentation.png" alt="Image Inpainting augmentation technique">
  <figcaption>Image augmentation results</figcaption>
</figure>

### Model Fine-Tuning: 
Used [Ultralytics](https://www.ultralytics.com/) library along with [YOLOv8-large](https://yolov8.com/) for fine tuning on the [INFRA-3DRC dataset](https://github.com/FraunhoferIVI/INFRA-3DRC-Dataset) 

### Sensor Fusion: 
Performed spatial fusion of detection objects from two different sensors: Radar & Camera. As seen below, the box is detection result from the camera (YOLO v8) and the red dot represents the centroid of cluster (detection object from radar). 

<figure class="fullwidth">
  <img src="/projects/image.png" alt="Sensor fusion technique">
  <figcaption>Sensor fusion results</figcaption>
</figure>

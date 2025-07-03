---
title: "Exloring Text To Speech Models (1)"
finished: false 
tags: ["technical", "TTS", "deep-learning", "audio"]
description: "An exploration into different models available in Text to Speech (and perhaps writing some frontend for it)"
draft: false
date: 2025-07-03
---

With the shut-down of services like Pocket and Google Assistant's "Read-it-to-me" feature, I feel that there is no longer an easy way to store / read webpages on android, with similar quality.[^1]

Now, of course there are alternatives, but I just find them to be quite irritating. Speechify is one of them, but I don't like the spammy ad's and limitations, with endless amount of extra options on voices / modes etc. Not to mention - you've got to shell out a decent amount of money.[^2]

This gave me the perfect excuse to look at Text-To-Speech models. Specifically, open source models, how good have they become, and can they help me consume content via audio - better than existing products ? 

I did a basic search for small models, I was looking to work with something locally. I had an NVIDIA-RTx 3060 with 4 GB memory usage.[^3] OuteTTS looked good - it had a bunch of models, the largest one being 1B. 

I got to work, quickly set it up, selected a few works that I had stored in Pocket - and ran it across. The first time, I didn't explicitly set a CUDA device, it went to CPU, and it took ~3 hrs to actually get an audio sample (a .wav file). 

With CUDA setup - it still takes about 1 hr. I initially faced out of memory issues. (A small hack at DAC - interface.py). 

Now this was an issue, such a long time to create a 5 min talk. But perhaps this was due to large models, I continue with testing on smaller models. 

Along the way, I also stumbled acorss an interesting concept called DAC (Descript Audio Codec // paper: High Fidelity Compression with Improved RVQGAN).  

So I had to understand - How does this model work on an android phone, can I run it way faster, and another stuff, can I make it sound differently. 

The last step is because, lot's of models only have a default model that works really well, but the model with outetts literally breathes a lot, during pauses. In order to make it more "natural". Which degrades the quality of the audio you are listening to. 

So these are all the steps: 
1/ Can the model run faster - if so how ? 
2/ Can smaller models give a decent quality as the large one ? 
3/ Can I make the "model" sound as I want it to be - either via finetuning or through their "one-shot learning method" ? 



[^1] Chrome does have a feature to read - but it takes internet access, and also is hidden somewhere in the three-dots options. 
[^2] Well, to speechfy's credit, they have a really good feature, that let's you listen to any document, file format - be it pdf's, markdowns, txt's, and even scanned documents (they have a strong OCR feature), this is valuable. 
[^3] It's such a classic gaming laptop spec - indeed, when I bought it, Dell G-Series, provided best value for money (I couldn't buy the Mac). 

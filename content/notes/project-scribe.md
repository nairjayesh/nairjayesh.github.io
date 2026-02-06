---
title: "[Project-Notes] Scribe - STT Editor"
tags:
  - ASR
  - audio
  - programming
description: My attempt to create an editor for Speech to text application. It's also a record of working with AI Coding tools  and models.
finished:
---
I'm currently working with Automatic Speech Recognition models as part of my thesis. I thought it would be fun to create an editor front end to work with these models, as I read more of them. Additionally, this would be a good opportunity to test AI Coding tools. For this I'm using OpenCode along with it's free models. 

The way I would like to record this is, for each session and update, the goal, surprises by the model, some parts of code that I found interesting, or not good as well as updates made to the prompts. 

> Note: I began this without knowing a lot about "Agentic Coding", Agents.md, skills etc. Additionally, I have not yet made the code public, as I admittedly, need to review lot's of code, check for any personal info leaks, if any at all and restructure it to be more concise.  

Long term goal: Nothing concrete, but the direction is to create something useful and beautiful like [Obsidian](https://obsidian.md/) .  For personal use. 
#### Log #1:

*Additional context*, at this point, I'm not familiar with Web-Developement, and have a basic understanding of HTML/CSS. Very limited experience using Javascript. Another reason why I've chosen to not open source the code just yet. 

<div style="display: flex; flex-direction: column; align-items: center; gap: 20px; margin: 30px 0;">
  <div style="width: 80%; max-width: 800px;">
    <figure style="margin: 0;">
      <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; border-radius: 5px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
        <iframe 
          src="https://www.youtube.com/embed/kQh5xVU_ErM" 
          style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0;" 
          title="Scribe Usage Video"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
          referrerpolicy="strict-origin-when-cross-origin"
          allowfullscreen>
        </iframe>
      </div>
      <figcaption style="text-align: center; font-style: italic; color: #666; margin-top: 8px;">
        Scribe - initial version usage video.
      </figcaption>
    </figure>
  </div>
</div>

For starters there were a couple of things I decided: 
- To use a simple FastAPI setup to get things running. 
- Use UV for package management. (UV is order of magnitudes better than pip)
- Only interface with models via HuggingFace API's and prefer models uploaded on HugginFace Hub, models are not allowed to download files from any URLs without explicit permission.  
- Using models that run locally on-device for initial testing and debugging. 
- Avoid React and Node.js libraries as much as possible (this was an explicit request made multiple times). The reason is the library itself maybe quite large and contribute to bloat for a simple project. I plan on thoroughly reviewing any good ones later on for better UI. 

I already had a vision of how things should look like from some editors I've found in different projects by chance (I will credit/link them once I remember).  The basic design initially was to setup a three column layout: 
- The first one would show session activities such as audio-files uploaded, buttons to help with this upload, button to trigger the transcription as well as audio-playback. 
- The second column to show model outputs along with word-level confidence scores as color coded highlights. 
- Third column was purely for text editing. 

Additionally, I wanted to playback the audio at precise word that the model would be unsure of, or rather places where I think seemed unusual. (An example of this is in the video). 

The positively surprised by the following: 
- I never defined any UI/UX  details beyond the three column layout, such as Header Color, buttons, multiple uploads displayed.  It was defined all on it's own. The first attempt is not bad, I imagine, Figma/Vercel aided frontend design in the workflow would enhance this. But definitely need to do a lot better in typography, background colors etc.  
- "Save" feature, doesn't  really work - or rather wasn't specified and hence has no utility. Download again wasn't specified before hand, but added, it let's you download a `.txt` format file. 
- Some very helpful (but again unspecified updates)  were - Model name & Language on the top right. Bottom left had the device used (GPU/CPU) and status mentioned.  



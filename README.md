# mk-collect-terms-from-tennis-coaching-video


## what is this?

As a none-English speaker, I want to coach someone learning tennis using English. 

I try to learn how to express myself by learning from a series of youtube tennis coaching video. 

Instead of going through the whole series, I extract words and sentences from their subtitles to speed up. Refer to `data-collected/Teaching Anna from Scratch.tennis.words.txt` for example. 

This method can be applied to other youtube video, or even video from other providers. 

## how to use it?

- If you just want to know the terms and sentences about tennis, visit files under `data-collected` folder
- If you want to download other youtube video clips and srt files, change and run `mk-download-youtube-video-with-srt.sh`
- If you want any format of srt files, change and run `mk-show-youtube-video-supported-srt.sh`

## Prereq

- linux (any popular linux with bash supports)
- nodejs v20+
- do not forget to run `npm install`

## What is the design

- Leverage `youtube-dl-exec` to download one or multiple video clips of youtube and their subtitle (srt) files.
- Interactively use `chatgpt` to extract tennis coaching terms from srt files
- Enrich those terms with sentences using `chatgpt`

## Author and acknowledge  

Author: michel<dot>yg<dot>chen<at at>gmail.com

Acknowledge: https://github.com/microlinkhq/youtube-dl-exec


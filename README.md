# mk-collect-terms-from-tennis-coaching-video


## what is this?

As a none-English speaker, I want to coach someone learning tennis using English. 

I try to learn how to express myself by learning the terms and sentences from a series of youtube tennis coaching video. 

Instead of going through the whole series, I extract words and sentences to speed up. 

## how to use it?

- If you just want to know the terms and sentences about tennis, visit files under `data-collected` folder
- If you want to download other youtube video clips and srt files, change and run `mk-download-youtube-video-with-srt.sh`
- If you want any format of srt files, change and run `mk-show-youtube-video-supported-srt.sh`

## Prereq

- linux (any popular linux with bash supports)
- nodejs v20+
- do not forget to run `npm install`

## What is the design

- Leverage `youtube-dl-exec` to download one or multiple video clips of youtube and their srt files.
- Interactively use `chatgpt` to extract tennis coaching terms from srt files
- Enrich those terms with sentences using `chatgpt`

## Author and acknowledge  

Author: michel<dot>yg<dot>chen<at at>gmail.com

Acknowledge: https://github.com/microlinkhq/youtube-dl-exec


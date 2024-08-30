#! /usr/bin/env bash

Cmd="./node_modules/youtube-dl-exec/bin/yt-dlp"
VideoUrl='https://www.youtube.com/watch?v=2wK5ULLmcgc'
VideoClipId='NA' # e.g. 2wK5ULLmcgc


$Cmd --list-subs $VideoUrl
Rtn=$?

echo
echo "EXEC Example: $Cmd --list-subs $VideoUrl"
echo 
echo '# show LONG usage'
echo "$Cmd --help"
echo

exit $Rtn
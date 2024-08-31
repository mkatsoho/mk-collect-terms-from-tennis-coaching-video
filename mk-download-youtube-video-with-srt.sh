#! /usr/bin/env bash

VideoUrl=${1:-'https://www.youtube.com/watch?v=YqgcykDGB2A'}
Pwd=$(dirname "$(realpath "$0")")
Cmd0="./node_modules/youtube-dl-exec/bin/yt-dlp"
Cmd="$Pwd/node_modules/youtube-dl-exec/bin/yt-dlp"


$Cmd --write-auto-subs --sub-format ttml "$VideoUrl"
Rtn=$?

echo
echo
echo "# short usage:"
echo "$(basename "$0") http://www.youtube.com/video_url"
echo
echo "# LONG usage"
echo "$Cmd0 --help"
echo
echo EXEC: "$Cmd" --write-auto-subs --sub-format ttml "$VideoUrl"
echo Return Code: $Rtn 

exit $Rtn


#! /usr/bin/env bash

PlaylistUrl=${1:-"https://www.youtube.com/playlist?list=PL01q4ywxUNvkCL-jE-x506_-iEDCYLk7z"}
Pwd=$(dirname "$(realpath "$0")")
Cmd0="./node_modules/youtube-dl-exec/bin/yt-dlp"
Cmd="$Pwd/node_modules/youtube-dl-exec/bin/yt-dlp"


# Download YouTube playlist videos in separate directory indexed by video order in a playlist
# $Cmd -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" "https://www.youtube.com/playlist?list=PLwiyx1dc3P2JR9N8gQaQN_BCvlSlap7re"
$Cmd --write-auto-subs --sub-format ttml -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" "$PlaylistUrl"
Rtn=$?


echo
echo
echo "# short usage:"
echo "$(basename "$0") http://www.youtube.com/video_playlist"
echo
echo "# LONG usage"
echo "$Cmd0 --help"
echo
echo EXEC: "$Cmd" --write-auto-subs --sub-format ttml -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" "$PlaylistUrl"
echo Return Code: $Rtn

exit $Rtn

#! /usr/bin/env bash

Cmd="./node_modules/youtube-dl-exec/bin/yt-dlp"
VideoUrl='https://www.youtube.com/watch?v='
VideoClipId='NA' # e.g. 2wK5ULLmcgc
VideoClipIds="
YqgcykDGB2A
_5ZRb-DyTzI
mdfFGXCsHYI
2wK5ULLmcgc
vF39744ENZU

W1Ef8HFZAuU
2LQvpHO59nE
XWZ4qCRP_BE
Wnjl2VxV1wc
dlb-k-_00zQ

13sOE8sFqUw
xgW8Fzif7ok
TBlybgcwSXg
_Tv52oWHYH4
Pnpr0Uz9QHI

QSyvY05wMlE
opKYyVLo9K0
S-vtW3_IwSc
HvsejNwj6HI
FBGbizALTq0

_49U3I_SRWQ
K_iz3u-Ye48
rEt6XYyltCQ
9uvzWGFx_WU
8TyXPxT3_i4

DBgm5o0-C44
-QVIY_6OdHQ
_WDvnc0lNpE
nsyQqSxJYcY
6ZUp6rFkS7U

N-GsLBRKTkc
egMhSF7BhjU
1ZzT-1Evv5g
"

Rtn=0
VideoClipIds="
YqgcykDGB2A
_5ZRb-DyTzI
"
for VideoClipId in $VideoClipIds; do
    # echo "$VideoClipId"
    $Cmd  --write-auto-subs --sub-format ttml "$VideoUrl$VideoClipId"
    Rtn=$?
done

#./node_modules/youtube-dl-exec/bin/yt-dlp --list-subs   https://www.youtube.com/watch?v=2wK5ULLmcgc
# ./node_modules/youtube-dl-exec/bin/yt-dlp --write-auto-subs --sub-format ttml  https://www.youtube.com/watch?v=2wK5ULLmcgc 

echo
echo EXEC Example: $Cmd  --write-auto-subs --sub-format ttml "$VideoUrl$VideoClipId"
echo 
echo '# show LONG usage'
echo "$Cmd --help"
echo

exit $Rtn


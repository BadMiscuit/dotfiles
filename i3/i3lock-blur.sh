#!/bin/bash

date=`date +%Y-%m-%d-%H%M%S`
tmpbg="/tmp/blurredscreen_${date}.png"

scrot "$tmpbg"

convert "$tmpbg" -filter Gaussian -thumbnail 20% -sample 500% "$tmpbg"

#i3lock -i "$tmpbg"
feh "$tmpbg"

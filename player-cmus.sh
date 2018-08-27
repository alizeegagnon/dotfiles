#!/bin/sh

if cmus-remote -Q | grep -q 'paused'
then 
    echo "paused"; 
else 
#    cmus-remote -Q | grep 'file' | awk -F/ '{print $NF}'; 
    artist=$(cmus-remote -Q | sed -n 's/tag artist //p')
    title=$(cmus-remote -Q | sed -n 's/tag title //p')
    echo "$artist - $title"
fi

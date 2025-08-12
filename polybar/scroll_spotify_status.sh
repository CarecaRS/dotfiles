#!/bin/bash

# see man zscroll for documentation of the following parameters

# flags removidas:
#        --scroll-padding "  " \
#        --match-text "Tocando" "--scroll 1" \
#        --match-text "Pausado" "--scroll 0" \

zscroll -l 30 -d 0.4 \
        --match-text "Tocando" "--scroll 1" \
        --match-text "Pausado" "--scroll 0" \
        --scroll=false \
        -M "`dirname $0`/get_spotify_status.sh --status" \
        -u true "`dirname $0`/get_spotify_status.sh" & 

wait


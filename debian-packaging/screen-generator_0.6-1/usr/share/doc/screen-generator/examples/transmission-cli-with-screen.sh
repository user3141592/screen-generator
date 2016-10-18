#!/bin/bash
# Use screen-generator to start a screen composed of windows, each running transmission-cli with one of the mentioned torrent in TORRENT_LIST. Require transmission-cli to be installed.
# TORRENT_LIST
# EXAMPLES: screen-transmission $HOME/*.torrent

STRING=""
for i in $@
    do
STRING=$STRING"transmission-cli -U -w $i;"
done
screen-generator -c "$STRING"

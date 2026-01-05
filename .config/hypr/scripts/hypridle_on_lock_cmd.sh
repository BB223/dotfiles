#!/usr/bin/env bash

mpvpaper ALL ~/Videos/anya.png --layer overlay --mpv-options "loop-file=inf" &
echo $! > /tmp/mpvpaper_lock_pid

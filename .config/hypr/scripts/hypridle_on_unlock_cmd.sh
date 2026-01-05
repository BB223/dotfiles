#!/usr/bin/env bash

mpvpaper ALL ~/Videos/anya.mp4 --layer overlay &
sleep 0.5
kill $(cat /tmp/mpvpaper_lock_pid) 2>/dev/null

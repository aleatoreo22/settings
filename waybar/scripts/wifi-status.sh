#!/usr/bin/env bash
nameNetwork=`iwctl station wlan0 show | grep 'Connected network' | awk '{print $3}'`
echo "{\"text\": \"${nameNetwork}\"}"

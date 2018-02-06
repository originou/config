#!/bin/bash
res="$(synclient | sed -n 's/ //g;s/TouchpadOff=//p')"
if [ $res -eq 0 ]; then
    val=1
else
    val=0
fi
synclient TouchpadOff=$val

#!/bin/sh
vol=`amixer get Master | grep "Front Left:" | awk '{print $5}'`
echo Vol $vol

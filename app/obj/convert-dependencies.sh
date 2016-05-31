#!/bin/sh
# AUTO-GENERATED FILE, DO NOT EDIT!
if [ -f $1.org ]; then
  sed -e 's!^C:/Users/klob/AppData/Local/Temp!/tmp!ig;s! C:/Users/klob/AppData/Local/Temp! /tmp!ig;s!^J:!/j!ig;s! J:! /j!ig;s!^I:!/i!ig;s! I:! /i!ig;s!^H:!/h!ig;s! H:! /h!ig;s!^G:!/g!ig;s! G:! /g!ig;s!^E:!/e!ig;s! E:! /e!ig;s!^D:!/d!ig;s! D:! /d!ig;s!^C:!/c!ig;s! C:! /c!ig;' $1.org > $1 && rm -f $1.org
fi

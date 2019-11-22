#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
    then
        $@&
          fi
          }
exec nm-applet          
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
eval "$(ssh-agent -s)"
ssh-add ~/popos
/bin/bash /home/haugi/.screenlayout/workstation.sh
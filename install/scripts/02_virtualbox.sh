#!/bin/bash

check_install() {
  read -p "Did you install VIRTUALBOX (y/N)? " choice
    case "$choice" in
      y|Y) echo "" && echo "Please proceed.";;
      *) check_install;;
    esac
}

echo 'Download VirtualBox v5.0.x: https://www.virtualbox.org/wiki/Download_Old_Builds_5_0'
check_install

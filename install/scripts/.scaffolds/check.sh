#!/bin/bash

set -euxo pipefail

check_install() {
  read -p "Did you install __PROGRAM__ (y/N)? " choice
  case "$choice" in 
      y|Y) echo "" && echo "Please proceed.";;
      *) check_install;;
  esac
}

echo '__PROMPT__'
check_install

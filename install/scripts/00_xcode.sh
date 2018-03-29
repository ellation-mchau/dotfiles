#!/bin/bash

set -euxo pipefail

check_install() {
  read -p "Did you install XCODE (y/N)? " choice
  case "$choice" in 
      y|Y) echo "" && echo "Please proceed.";;
      *) check_install;;
  esac
}

echo 'Install XCODE via the App Store or direct download'
check_install

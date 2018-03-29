#!/bin/bash

check_install() {
  read -p "Did you install CHEFDK (y/N)? " choice
    case "$choice" in
      y|Y) echo "" && echo "Please proceed.";;
      *) check_install;;
    esac
}

echo 'Install the ChefDK v1.4.3: https://downloads.chef.io/chefdk/stable/1.4.3#mac_os_x'
check_install

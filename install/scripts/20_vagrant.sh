#!/bin/bash

set -euxo pipefail

check_install() {
  read -p "Did you install VAGRANT (y/N)? " choice
    case "$choice" in
      y|Y)
		vagrant plugin install vagrant-hostmanager
		vagrant plugin install vagrant-vbguest
		vagrant plugin install vagrant-omnibus
		vagrant plugin install vagrant-berkshelf
		;;
      *) check_install;;
    esac
}

echo 'Download Vagrant v1.8.4: https://releases.hashicorp.com/vagrant/1.8.4/vagrant_1.8.4.dmg'
check_install

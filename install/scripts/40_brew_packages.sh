#!/bin/bash

set -euxo pipefail

brew install packer
brew install wget

brew cask install java

brew tap rockymadden/rockymadden
brew install rockymadden/rockymadden/slack-cli

#!/bin/bash

set -euxo pipefail

brew install packer
brew install wget
brew install jq
brew install gron

brew cask install java

brew tap rockymadden/rockymadden
brew install rockymadden/rockymadden/slack-cli

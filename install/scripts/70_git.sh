#!/bin/bash

brew install git

read -p "What is your full name? " name
git config --global user.name name

read -p "What is your username? " username
git config --global user.username username

read -p "What is your email? " email
git config --global user.email email

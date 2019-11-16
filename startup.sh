#!/bin/sh

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y ansible

if [ -z "$REPO" ]; then
  ansible-pull -U https://github.com/cbyst/CrostiniAutomatedSetup -i hosts
  else
  ansible-pull -U $REPO -i hosts
fi

#!/bin/sh

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y ansible

if [ -z "$REPO" ]; then
  REPO=https://github.com/cbyst/CrostiniAutomatedSetup
fi

ansible-pull -U $REPO -i hosts -o -d /opt/CrostiniAutomatedSetup/

#!/usr/bin/env bash

command_exists() {
    type "$1" > /dev/null 2>&1
}

echo "$(tput setaf 2)JARVIS: Greetings. Preparing to power up and begin diagnostics.$(tput sgr 0)"

INSTALLDIR=$PWD

echo "$(tput setaf 2)JARVIS: Installing latest updates.$(tput sgr 0)"
source install/link.sh

echo "$(tput setaf 2)JARVIS: System update complete. Currently running at 100% power. Enjoy."

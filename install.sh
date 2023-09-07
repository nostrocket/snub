#!/bin/bash
if [[ "$OSTYPE" == "darwin"* ]]; then
	echo "OSX detected, this must be a local development machine"
	if ! command -v brew &> /dev/null
	then
	    echo "brew could not be found, installing now..."
	    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	    exit
	fi
	brew update
	brew install go
fi
git stash
git pull
git submodule update --init --recursive --remote
make install
snub publish
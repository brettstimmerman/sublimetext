#!/bin/bash
DEST="$HOME/Library/Application Support/Sublime Text 2/Packages/User"

cd "$(dirname "$0")"

for file in *.sublime*; do
	[ -f "$file" ] && [ -r "$file" ] && $(ln -s "$PWD/$file" "$DEST/$file")
done
unset file


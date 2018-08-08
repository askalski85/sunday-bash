#!/bin/bash

NOTES_REPOSITORY_PATH=${1:-/tmp/my_notes}

cp -f bin/notes /usr/local/bin

sed -i '' -e "s|PEWUDE|$NOTES_REPOSITORY_PATH|g" /usr/local/bin/notes

chmod +x /usr/local/bin/notes

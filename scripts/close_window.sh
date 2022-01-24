#!/bin/bash


FRONTMOST=$(osascript -e 'tell application "System Events" to get name of application processes whose frontmost is true and visible is true')
# osascript -e 'close "${FRONTMOST}" window 1'
osascript <<EOF
tell application "$FRONTMOST"
    close window 1
end tell
EOF
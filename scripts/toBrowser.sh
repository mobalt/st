#!/bin/sh
# Open screen content in an editor to copy text. This is alternative to
# keyboard_select st patch. Set $EDITOR to whatever you want.

# todo: make tmp file be created in cwd instead
# todo: use $BROWSER
# todo: convert urls to html links
tmpfile=$(mktemp /tmp/st-current.XXXXXX.htm)
sed -n p > "$tmpfile"
firefox $tmpfile
rm "$tmpfile"

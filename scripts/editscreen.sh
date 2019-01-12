#!/bin/sh
# Open screen content in an editor to copy text. This is alternative to
# keyboard_select st patch. Set $EDITOR to whatever you want.

tmpfile=$(mktemp /tmp/st-edit.XXXXXX.htm)
sed -n p > "$tmpfile"
st -e "$EDITOR" "$tmpfile"
firefox $tmpfile
st -e "$EDITOR" "$tmpfile"
rm "$tmpfile"

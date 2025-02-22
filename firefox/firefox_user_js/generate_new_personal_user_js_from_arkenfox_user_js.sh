#!/bin/bash

GENERATED_FILE="./generated_personal_user.js"
cp "./arkenfox_user.js" "$GENERATED_FILE" || exit 100

# comment out default configs:
# 2 main reasons to do not delete the line but comment it:
# + this is good when searching on generated_user_js file. The javascript commented text syntaxt is green. So I can search faster.
# + to check what I overrided on arkenfoxjs.
REMOVED_KEYWORD="XXX removed because it is already default or I dont need XXX"
while IFS= read -r CONFIG_ID; do
    CONFIG_ID_WITH_REFIX='user_pref\(\"'"$CONFIG_ID"'\"'
    PREFIX='/\/\/'" $REMOVED_KEYWORD"
    sed -r -i.bak "s/.*$CONFIG_ID_WITH_REFIX.* $PREFIX &/g" "$GENERATED_FILE" || exit 101
done <"./remove_list_from_arkenfox.js"

echo "// PERSONAL PREFS" >>"$GENERATED_FILE" || exit 102
cat "./additional_personal.js" >>"$GENERATED_FILE" || exit 103

# This file is created automatically
rm "$GENERATED_FILE.bak"
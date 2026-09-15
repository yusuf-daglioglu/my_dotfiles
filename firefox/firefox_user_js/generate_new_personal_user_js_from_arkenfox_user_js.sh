#!/bin/bash

# maximum shell compatible exception handling.
# -e --> herhangi bir komut hata verirse script durur
# -u --> tanımsız değişken hata üretir
set -eu

GENERATED_FILE="./generated_personal_user.js"
cp "./arkenfox_user.js" "$GENERATED_FILE"

# comment out default configs:
# 2 main reasons to do not delete the line but comment it:
# + this is good when searching on generated_user_js file. The javascript commented text syntax is green. So I can search faster.
# + to check what I override on arkenfoxjs.
REMOVED_KEYWORD="XXX removed because it is already default or I dont need XXX"
while IFS= read -r CONFIG_ID; do
    CONFIG_ID_WITH_REFIX='user_pref\(\"'"$CONFIG_ID"'\"'
    PREFIX='/\/\/'" $REMOVED_KEYWORD"
    sed -r -i.bak "s/.*$CONFIG_ID_WITH_REFIX.* $PREFIX &/g" "$GENERATED_FILE"
done <"./remove_list_from_arkenfox.txt"

echo "" >>"$GENERATED_FILE"
echo "" >>"$GENERATED_FILE"
echo "" >>"$GENERATED_FILE"
echo "///////////////////" >>"$GENERATED_FILE"
echo "// PERSONAL PREFS" >>"$GENERATED_FILE"
echo "///////////////////" >>"$GENERATED_FILE"
cat "./additional_personal.js" >>"$GENERATED_FILE"

# This file is created automatically
rm "$GENERATED_FILE.bak"
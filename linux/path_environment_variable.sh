# This file can be copy to:

# 1- 
# $HOME/.profile 
# executes on every OS login.
# 
# 2-
# $HOME/.zshrc & .$HOME/.bashrc
# executes every new terminal session open.
# I prefer this one. because:
# a- to test new changes I don't have to re-login.
# b- if something wrong on ".profile" file login will fail without any warning.

source "$HOME/custom_zshrc.sh"

CC_APPS_HOME="/run/media/userx/drivex/HOME"
CC_SCRIPTS_FILE_PATH="$HOME/cc_scripts/release/cc_scripts.sh"
source "$CC_SCRIPTS_FILE_PATH"

CC_STANDALONE_APPS_PATH_ROOT="/run/media/userx/drivex/EXTRACTED_APPS"

PATH="$PATH:$CC_STANDALONE_APPS_PATH_ROOT/nodejs/bin"

PATH="$PATH:$CC_STANDALONE_APPS_PATH_ROOT/maven/bin"

# Fedora comes with java as default.
# Therefore we should add custom directory before others.
PATH="$CC_STANDALONE_APPS_PATH_ROOT/jdk/bin:$PATH"

ANDROID_HOME="$CC_STANDALONE_APPS_PATH_ROOT/android_sdk_linux"
export ANDROID_HOME
PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

# python and pip
# pip is not default installed on fedora 40.
# python has built-in command to install pip locally (without root privileges):
# python -m ensurepip
# now below directory includes pip3 command (only pip does not exist as default. I also don't need pip. pip3 worked fine for me)
PATH="$PATH:$HOME/.local/bin"

# you should remove profile directory via Firefox GUI. There is no command for remove.

reGenerateProfile(){

    PROFILE_NAME="p_$1" # better for sorting them on GUI.
    EXTENSIONS_XPI_DIR="$2"
    COMMON_USER_JS_FILE="$3"
    BOOKMARKS_PER_PROFILE_DIR="$4"
    BOOKMARKS_TEMPLATE_DIR="$5"

    rm -r "$HOME/.cache/mozilla"
    PROFILE_DIR="$FIREFOX_PROFILE_DIR/$PROFILE_NAME"
    USER_JS_FILE="$PROFILE_DIR/user.js"

    if [ -d "$PROFILE_DIR" ]; then
        echo "$PROFILE_DIR directory exist. you should remove it from GUI."
        exit 101
    fi

    # create profile
    firefox -CreateProfile "$PROFILE_NAME $PROFILE_DIR" || exit 102

    # user configs via user.js
    cp "$COMMON_USER_JS_FILE" "$USER_JS_FILE" || exit 103

    ####################
    # START create homepage for profile. because bookmarks can not be created/edited via command line.
    ####################

    # append initial of html
    HOME_PAGE_FILE_PATH="$PROFILE_DIR/home_page.html"
    cp "$BOOKMARKS_TEMPLATE_DIR"_1.html "$HOME_PAGE_FILE_PATH" || exit 104

    # append window title
    TITLE_NEW='<title>Profile: '$PROFILE_NAME'</title>'
    echo $TITLE_NEW >> "$HOME_PAGE_FILE_PATH" || exit 105

    # append css
    cat "$BOOKMARKS_TEMPLATE_DIR"_2.html >> "$HOME_PAGE_FILE_PATH" || exit 104

    # append profile name on body
    echo 'PROFILE: </br>' "$PROFILE_NAME" >> "$HOME_PAGE_FILE_PATH" || exit 106

    # append buttons for quick copy
    cat "$BOOKMARKS_TEMPLATE_DIR"_3.html >> "$HOME_PAGE_FILE_PATH" || exit 104

    # append the favorite links of profile
    cat $BOOKMARKS_PER_PROFILE_DIR/$PROFILE_NAME.html >> "$HOME_PAGE_FILE_PATH" || exit 107

    # append last part of HTML
    cat "$BOOKMARKS_TEMPLATE_DIR"_4.html >> "$HOME_PAGE_FILE_PATH" || exit 113

    ####################
    # END create homepage for profile.
    ####################

    # user js is changing for home page
    HOMEPAGE_CONFIG='user_pref("browser.startup.homepage", "'$HOME_PAGE_FILE_PATH'");'
    echo "// PROFILE SPECIFIC PREFS" >>"$USER_JS_FILE" || exit 108
    echo "$HOMEPAGE_CONFIG" >>"$USER_JS_FILE" || exit 109
    echo 'user_pref("browser.startup.page", 1);' >>"$USER_JS_FILE" || exit 110
    
    # add ons
    mkdir "$PROFILE_DIR/extensions" || exit 111
    cp -r "$EXTENSIONS_XPI_DIR" "$PROFILE_DIR" || exit 112
}

# CALL ABOVE FUNCTION FROM EXTERNAL FILE:

# ROOT_DIR="FILL_THIS"
# EXTENSIONS_XPI_DIR="/$HOME/Downloads/extensions"
# FIREFOX_PROFILE_DIR="/run/media/user1/internal1/firefox_profiles"

# source $ROOT_DIR/GITHUB/my_dotfiles/firefox/profile_generator/profile_generator.sh
# COMMON_USER_JS_FILE="$ROOT_DIR/GITHUB/my_dotfiles/firefox/firefox_user_js/generated_personal_user.js"
# BOOKMARKS_PER_PROFILE_DIR="$ROOT_DIR/firefox_private/bookmarks_per_profile"
# BOOKMARKS_TEMPLATE_DIR="$ROOT_DIR/GITHUB/my_dotfiles/firefox/profile_generator/bookmak_homepage_template"
# 
# reGenerateProfileFacade(){
#     reGenerateProfile $1 $EXTENSIONS_XPI_DIR $COMMON_USER_JS_FILE $BOOKMARKS_PER_PROFILE_DIR $BOOKMARKS_TEMPLATE_DIR
# }
# 
# reGenerateProfileFacade daily
# reGenerateProfileFacade social

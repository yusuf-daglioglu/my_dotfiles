# Firefox clear console executed command(javascript) history

> clearHistory()

---

# how to bookmark backup
- if it is simple change, just change directly html file manually. otherwise do below steps.
- create new profile
- disable network connection (make sure the Favicons are not exported)
- import last backup from my_dotfiles
- make changes
- export as HTML (Do not use JSON because Firefox allow to import from JSON if only remove all existing bookmarks)
- change the dates manually from HTML.

---

# Firefox sync
Firefox embeeded sync feature works:
- with spam emails
- can sync only bookmarks
- it has E2E encryption.

---

# shortcuts on linux
copy .desktop files to:

> $HOME/.local/share/applications/firefox_shortcuts

---

# EXTENSIONS

- ublock-origin
  - Addblocker (it also includes embeeded javascript disabler)

- DISABLED BY DEFAULT (only enable when you need)

  - singlefilez
    - save page as zip file which includes images seperated (it is good idea to download all medias)

  - single-file
    - save page as one html file (does not the same infrastructure as buil-in print-preview mode of Firefox)

  - https://github.com/chatziko/location-guard 
    - Faker for HTML5 geolocation.
    - usage:
      - change a fake location from "fixed location" tab.
      - optionally "Accuracy" can be set from "Privacy Levels" tab.
      - "Options" tab --> "Default level"="use fixed location".

  - SoundFixer (by Val Packett)
    - increase media sound

  - NoScript Security Suite
    - block spesific features only: LAN requests, fonts, scripts, media, CSS...

- DOWNLOAD MANAGERS

  Note: DEMO page for HLS: https://hlsjs.video-dev.org/demo/

  - HLS Downloader (by puemos) or Live Stream Downloader (by Chandler Stimson)
    - tested.

  - DownThemAll!
    - download all content of a web page by filtering them via prefix or type (video, picture)...
    - does not support videos which are streaming.

- DO NOT INSTALL:
  - Video DownloadHelper
    - works only on windows with a native app dependency.

  - turbo download manager
    - not developing anymore.

---

# Print

## save html as pdf (all browsers)
When we choose to print the web page, the print dialog shows an option for PDF. There is no need for extension.

## remove header on print output (only firefox)
Firefox adds headers (date, page number...) to every page on the print preview. To disable this: click "more settings" (but this is not like a button, it's simple text!), and then you will see the option to remove headers.

---

# "always on top" on Gnome
super button (button with ms-windows icon) + right click via mouse --> it shows always on top option

---

# PROFILES

# firefox-containers-helpers
https://github.com/charles-m-knox/firefox-containers-helper

This extension allows to export and import all configs to JSON.

Currently I don't prefer "container" for below reasons:
- there is no quick way to delete cookies (and all other data) per container.
- Sometimes I open third party sites in wrong containers.
- firefox-containers-helpers was the only extension which can export/import configs. But the addon is not updating since long time.

It is better to use my custom "profile_generator" shell script.

# Create profile
Do not create with GUI. Because command like can create more human-readable directory names. Use command line:

firefox -CreateProfile "dev $HOME/.mozilla/firefox/dev"

# Rename profile directory name
If you change the $HOME/.mozilla/firefox/profileName directory, the browser still opens but getting errors on some functionalities.

# Order of profile list
It can be changed from $HOME/.mozilla/firefox/profiles.ini file:

```
[General]    ---> This block is not important.
StartWithLastProfile=0
Version=2

[Profile9]         ----> 9 is important for the order.  All lower numbers (0,1,2,3,4,5) should be exist in this file. otherwise profile-manager will not work correctly.
Name=profile_9th
IsRelative=0
Path=/path/profile_9th

[Profile5]         ----> 5 is important for the order.
Name=profile_8th
IsRelative=0
Path=/path/profile_8th

[Install11457493C5A56847]   ---> This block is not important. It is referenced from $HOME/.mozilla/firefox/installs.ini file.
Default=/path/profileX
Locked=1
```

# How to show "Profile name" per window
There is an extension for this: https://addons.mozilla.org/en-US/firefox/addon/window-titler/

But I don't prefer this because:
- the addon does not get updates.
- the title bar should be opened always. (from about config: "browser.tabs.inTitlebar=0")
- I should set on all profiles manually the name of the profile.

I prefer below solutions:

- ## 1- Profile color for each window
Each profile can be colored by Mozilla's official theme extensions:
https://addons.mozilla.org/en-US/firefox/addon/firefox-color/

Open the extension settings and click the "random" button.

- ## 2- Home default
default home page includes the profile name on title and html-body content. links on the homepage are opening on new tab. so home-page should never closed. so profile name can be seen from there.
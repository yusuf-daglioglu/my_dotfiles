# GENERAL NOTES

## Firefox clear console executed command(javascript) history

> clearHistory()

<br><br><br>

## how to bookmark backup

- if it is simple change, just change directly `html` file manually. otherwise do below steps.
- create new profile
- disable network connection (make sure the `Favicons` are not exported)
- import last backup from `my_dotfiles`
- make changes
- export as `HTML` (Do not use `JSON` because `Firefox` allow to import from `JSON` if only remove all existing bookmarks)
- change the dates manually from `HTML`.

<br><br><br>

## Firefox sync

`Firefox` embedded sync feature works:

- with temporary emails
- can sync only bookmarks
- it has `E2E` encryption.

<br><br><br>

## shortcuts on linux

copy `.desktop` files to:

> $HOME/.local/share/applications/firefox_shortcuts

<br><br><br>

## EXTENSIONS

- `ublock-origin`
  - adblocker (it also includes embedded javascript disabler)

- DISABLED BY DEFAULT (only enable when you need)

  - `singlefilez`
    - save page as zip file which includes images separated (it is good idea to download all medias)

  - `single-file`
    - save page as one html file (does not the same infrastructure as built-in print-preview mode of Firefox)

  - <https://github.com/chatziko/location-guard>
    - Faker for `HTML5` geolocation.
    - usage:
      - change a fake location from `fixed location` tab.
      - optionally `Accuracy can be set from `Privacy Levels` tab.
      - `Options` tab --> `Default level"="use fixed location`.

  - `SoundFixer (by Val Packett)`
    - increase media sound

  - `NoScript Security Suite`
    - block specific features only: 
      
      - LAN requests
      - fonts
      - scripts
      - media
      - CSS
      - and others

- DOWNLOAD MANAGERS

  Note: DEMO page for `HLS`: <https://hlsjs.video-dev.org/demo/>

  - `HLS Downloader (by puemos) or Live Stream Downloader (by Chandler Stimson)`
    - tested.

  - `DownThemAll!`
    - download all content of a web page by filtering them via prefix or type (video, picture)
    - does not support videos which are streaming.

- DO NOT INSTALL:
  - `Video DownloadHelper`
    - works only on windows with a native app dependency.

  - `turbo download manager`
    - not developing anymore.

<br><br><br>

## Print

### save html as pdf (all browsers)

When we choose to print the web page, the print dialog shows an option for `PDF`. There is no need for extension.

### remove header on print output (only firefox)

`Firefox` adds headers (date, page number...) to every page on the print preview. To disable this: click "more settings" (but this is not like a button, it's simple text!), and then you will see the option to remove headers.

<br><br><br>

## "always on top" on Gnome

`super button` (button with `ms-windows` icon) + right click via mouse --> it shows always on top option

<br><br><br>

## PROFILES

## container vs profile

### continer disadvantages

- there is no quick way to delete cookies (and all other data) per container.
- Sometimes I open third party sites in wrong containers.
- `firefox-containers-helpers` was the only extension which can export/import configs. But the addon is not updating since long time.

### profile disadvantages

- maintenance takes long time (if you change any config)
- it takes 15 GB+

## "Firefox Multi-Account Containers" addon

it is `Mozilla`'s official addon which adds additional features to default container management. The main feature is that it allows to open specific domains on specific containers.

## Create profile

Do not create with GUI. Because command like can create more human-readable directory names.

```sh
firefox -CreateProfile "profileName1 $HOME/.mozilla/firefox/profileName1"
```

## Rename profile directory name

If you change the `$HOME/.mozilla/firefox/profileName1` directory, the browser still opens but getting errors on some functionalities.

## Order of profile list

It can be changed from `$HOME/.mozilla/firefox/profiles.ini` file:

```text
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

## How to show "Profile name" per window

There is an extension for this: <https://addons.mozilla.org/en-US/firefox/addon/window-titler/>

But I don't prefer this because:

- the addon does not get updates.
- the title bar should be opened always. (from `about-config`: `browser.tabs.inTitlebar=0`)
- I should set on all profiles manually the name of the profile.

I prefer below solutions:

### color per profile

`Mozilla`'s official theme extensions:
<https://addons.mozilla.org/en-US/firefox/addon/firefox-color/>

Open the extension settings and click the "random" button.

### default home page writes profile name

default home page includes the profile name on title and html-body content. links on the homepage are opening on new tab. so home-page should never closed. so profile name can be seen from there.

## container config export

`containers.json` file can be moved to any profile easily. example file:

On below example, if we create a new container, it will have ID 30001. On UI the order of container listing via ID. Therefor it is good to have empty values between IDs for containers will be created in the future.

```json
{
    "version": 5,
    "lastUserContextId": 3000, 
    "identities": [
        {
            "userContextId": 100,
            "public": true,
            "icon": "fingerprint",
            "color": "blue",
            "name": "instagram"
        },
        {
            "userContextId": 200,
            "public": true,
            "icon": "fingerprint",
            "color": "green",
            "name": "forums"
        },
        {
            "userContextId": 300,
            "public": true,
            "icon": "fingerprint",
            "color": "yellow",
            "name": "github"
        }
    ]
}
```

## my profile and/or container config

we have below profiles:

- `daily_hardened`
  - `bookmarks`: all
  - `config`: my custom `arkenfox-user-js` with `RFP`
  - `ublock-origin`: default filters
  - `firefox-colors` installed
- `accounts`
  - `bookmarks`: only social media
  - `config`: my custom `arkenfox-user-js` with `RFP`
  - `ublock-origin`: default filters
  - `firefox-colors` installed
  - contains my private `containers.json`
  - additional configs for `user.js`:

    ```js
    // disable search on URL bar
    user_pref("keyword.enabled", false);

    // config from UI:
    // URL: about:preferences#containers
    // enable: "select a container for each new tab"
    user_pref("privacy.userContext.newTabContainerOnLeftClick.enabled", true);

    // enable container support.
    // already enabled via arkenfox-user-js.
    user_pref("privacy.userContext.enabled", true);

    // show enable disable config on UI (also list of containers can be accessible from this UI setting).
    // already enabled via arkenfox-user-js.
    user_pref("privacy.userContext.ui.enabled", true);
    ```

## container name visibility on UI

Container names are small and faded (right side of URL bar). Use below settings to prevent this issue.

Set this as "true":

> toolkit.legacyUserProfileCustomizations.stylesheets

Put this file to each profile:

> $firefox-profile-dir/chrome/userChrome.css

content:

```css
/* make larger container name inside URL bar (right side of URL bar) */
#userContext-label {
    font-size: 22px !important;
    font-weight: bold !important;
}

#userContext-label {
   /* prevent shortening long container names with dots (always show full) */
    text-overflow: unset !important;
    overflow: visible !important;
    white-space: normal !important;
    display: inline !important;
    max-width: none !important;
    
     /* background of container name */
    background-color: white !important;
}
```

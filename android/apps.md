# APPS

- `com.nononsenseapps.feeder`

  rss reader

- `com.beemdevelopment.aegis`

  OTP

- `io.github.muntashirakon.AppManager`

  - shows and allow search of installed app list by name or package id's
  
  - it can interrupt any share "android-intent" so you can see what it shares.

- `com.aurora.store`

  google play store alternative client.

- `de.markusfisch.android.binaryeye`

  app name: Barcode Scanner

- `com.kgurgul.cpuinfo`

  not only cpu info but it shows sensors and OS info and many others.

- `com.machiav3lli.fdroid`

  app name: neo-store

  open source app market. advantages over f-droid:

  - it has 3rd party repositories ready.

- `Thunderbird (net.thunderbird.android) or K-9 email (com.fsck.k9)`

  for gmail we need app-specific password from: google accounts --> security --> 2-Step Verification --> App passwords)

- `org.documentfoundation.libreoffice`

- `com.celzero.bravedns`

  app name: RethinkDNS
  
  do not use Netguard. Netguard logs only on pro version and does not contain optional DNS changer.

- `org.schabi.newpipe`

  youtube client
  
  custom repo should be added event it exist on f-droid as default. otherwise the updates will delay.

- `helium314.keyboard`

  app name: HeliBoard
  
  AOSP keyboard fork.

- `net.osmand.plus`
  
  openstreet maps front-end.

  - copy Whatsapp location's as google-maps URL:

    - 1 use whatsapp web

    - 2 mobile apps does not allow copy. first open url with Osmand and choose "copy coordinates". Go to "maps.google.com" via web browser. and paste the coordinates to search.

- `app.organicmaps`

  openstreet maps front-end.

- `de.reimardoeffinger.quickdic`

  offline dictionary for tr & eng & gr.

- `Molly.im`

  Signal alternative client.

- `org.fossify.calendar`

  shows birthdays and anniversaries from contacts (and allows export).

  do not use com.simplemobiletools.calendar. It has privacy issues with company.

- `superfreeze.tool.android`

  stop any app.

- `com.termux`

  command line app for telnet, ping vs...

- `org.videolan`

  supports `Chromecast` only. but Android OS supports `miracast`.

- `org.billthefarmer.editor`

  app name: `simple text editor`.
  
  only notable feature comparing `MaterialFiles` build-in text editor is the "search on text file" feature.

- `ch.blinkenlights.android.vanilla`

  music player
  
  shows long file name properly.

- `im.vector.app`

  app name: `element`
  
  only use for sending notes between computer and mobile phone.

- <https://github.com/WirelessAlien/ZipXtract>

  archive manager
  
  github-releases version has additionally `RAR` extraction and `7z` compression feature.

- `dev.imranr.obtainium.fdroid`

  Download apps directly from source (like Github-Release etc)

</br></br></br>

## SCREEN BUTTON UTILITIES

### Screen Timeout Change

`com.elasticrock.keepscreenon`

### Screenshot Tile (NoRoot) (com.github.cvzi.screenshottile)

takes screenshots with 3 seconds delay.

### Volume Control (com.punksta.apps.volumecontrol)

- it opens it's own window and shows each volume source separately. If OEM device has set any volume source with another, this app will change whole depended volume sources automatically. So you can check which source are separated by OEM(device). for example "ringer volume" and "notification volume" sources can not be different.
- Has volume profiles on notification bar

### Lock (name.seguri.android.lock)

- locks screen with desktop button.
- Install this app, only if you can not find any feature embedded on system with those keywords: "Double-Tap to Lock and Unlock Android".

</br></br></br>

## FILE MANAGERS

### MaterialFiles

<https://github.com/zhanghai/MaterialFiles>

Includes FTP Server feature.

Notes:

- `Gnome Nautilus` has embedded `FTP` client. but secure `FTP` (`FTPS`) is buggy. you should
  - always use username and password
  - `VPN` must be fully excluded.
- for long file names enable the "marquee". the animation works very fast enough.
- use the read-only feature on `FTP` if possible

### SimpleMobileTools / Simple-File-Manager

Better for long file names (font size can be decreased). THIS HAS PRIVACY ISSUES. DO NOT INSTALL IT.

### OS embedded file manager

it can be used as default. it is mostly faster and bug-free.

</br></br></br>

## WEB BROWSERS

### Required

- `Fennec F-droid`

  it is the same original `Mozilla` Firefox without extra privacy patches. advantages over `Mozilla` build:
  - allows to open `about:config` (`Mozilla` now allows config page via this URL: `chrome://geckoview/content/config.xhtml`)
  - listed on f-droid.

- `tor browser`

- recommended by `privacy-guides`:
  - `Brave`
  - `cromite`

### Optional

install below apps only if you required.

| name                       | privacy patches | base     | discontinued | main diff from base project                                     |
|----------------------------|-----------------|----------|--------------|-----------------------------------------------------------------|
| Bromite                    | yes             | chromium | yes          | privacy                                                         |
| Cromite                    | yes             | chromium | no           | Bromite fork. recommended by privacy-guides.                    |
| vanadium                   | no              | chromium | no           | de-google without privacy. But it only works on GrapheneOS.     |
| ungoogled-chromium-android | no              | chromium | yes          | de-google without privacy                                       |
| chromium (vanilla)         | no              | chromium | yes          | I could not found any repo for android. do not trust 'woolyss'. |
| mulch                      | few only        | chromium | no           | de-google without privacy. it's only webview.                   |
| Brave                      | yes             | chromium | no           | commercial with tor support                                     |
| google chrome              | no              | chromium | no           |                                                                 |
| mull                       | yes             | firefox  | yes          |                                                                 |
| ironfox                    | yes             | firefox  | no           | fork of `Mull`                                                  |
| Mozilla Firefox            | no              | firefox  | no           |                                                                 |
| iceraven                   | no              | firefox  | no           | support more addons which not supported by Mozilla              |

### Other notes for browsers

- `Ankerfox-user-js` (with my personel customizations) does not have any important except "`strict protection`" which can be enabled from GUI. Therefore if any browser will discontinued, `Mozilla Firefox` (official build) can be used.

</br></br></br>

## PDF Readers

- <https://gitlab.com/mudlej_android/mj_pdf_reader>
- `MuPDF`

do not use:

- `Secure PDF Viewer` <https://github.com/GrapheneOS/PdfViewer> is based on `chromium`.
- can not use `firefox` built-in. because `firefox` does not open local files.

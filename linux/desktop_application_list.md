# DESKTOP APPLICATION LIST

## APPS INSIDE FEDORA

## partition manager

- blivet-gui
  - dnf
  - gparted and gnome-disk-utility does not support LVM and btrfs

- gparted
  - dnf
  - gnome-disk-utility does not shot long partition names + and not show flags

- gnome-disk-utility (OS'un UI menüsünde sadece "disks" olarak geçiyor)
  - default installed on Fedora.
  - fstab dosyasının mount-point bilgisini update edebilmemiz sağlıyor. Diğer UI uygulamaları bunu yapamıyor.

note-1: btrfs is the default file-system on Fedora.

note-2: gparted can format the volume as btrfs but it can not show or sub-volumes/groups of it.

note-3: blivet-gui btrfs volume'un re-size'ını seçtirtmiyor (bu bir bug olabilir). fakat bu işlem gparted ile yapılabiliyor. Aslında çok basit görevleri biri yaparken diğeri yapamıyor. Bu sebeple her 3 uygulamayı da kullanmak şart.

## PDF/E-book

- com.calibre_ebook.calibre
  - flatpak
- com.github.johnfactotum.Foliate (ebook reader)
  - flatpak
- com.github.jeromerobert.pdfarranger
  - flatpak
  - pdf manipulations: split, rotate, crop, rearrange.

## Utilities only for Gnome

- com.github.tchx84.Flatseal (permission manager for flatpak)
  - flatpak
- ca.desrt.dconf-editor (gnome config editor gui)
  - flatpak
- org.gnome.Extensions (gnome extension manager)
  - flatpak
- page.tesk.Refine
  - flatpak
- best.ellie.StartupConfiguration (shows user and system startup scripts with executable file path)
  - flatpak

## Media Player

- io.github.celluloid_player.Celluloid (media player based on MPV)
  - flatpak
  - fast seek is faster then VLC
  - seek-bar not work on VLC for GIF files. Celluloid seek-bar works, but you should wait 2-3 seconds each time you move/pause seek-bar on different location(second/timeline).
- VLC
  - flatpak (if native-Firefox will need codec, then run Flatpak-Firefox)

## Music recognizer

- com.github.marinm.songrec (Shazam client)
  - flatpak
- io.github.seadve.Mousai (AudD client - alternative to Shazam)
  - flatpak

## Media manipulation

- loupe
  - already installed as default on Fedora.
  - default gnome image viewer (includes fast crop operations)
- com.github.maoschanz.drawing
  - flatpak
  - fast & simple image editor only for basic operations.
- org.kde.kdenlive
  - flatpak
- org.upscayl.Upscayl
  - flatpak
  - scale photo with different AI models. Does not require GPU.
- org.gimp.GIMP
  - flatpak

## others

- me.iepure.devtoolbox
  - flatpak
  - dev toolbox (json to yml converter...)
- git-gui
  - dnf
  - this package includes "gitk"
- gnome boxes
  - installed default
- org.remmina.Remmina (remote desktop client)
  - flatpak
  - on flathub there are many different apps which are official builds (search via "RDP" or "VNC" key)
- io.github.peazip.PeaZip
  - flatpak
- org.keepassxc.KeePassXC
  - flatpak
- org.qbittorrent.qBittorrent
  - flatpak
  - this app has unique features:
    - "download insequentel order" which requires to download files 1 by 1 (ordered for TV series).
    - "download last and first pieces first" which requires to stream video files.
- io.github.Qalculate
  - flatpak
  - calculator & unit converter & history
- org.gnome.NetworkDisplays
  - flatpak (has been removed from flathub)
  - GUI for monitor mirroring (Miracast and Chromecast)
  - VLC supports only Chromecast (VLC menu -> playback -> renderer -> choose device)
- com.vscodium.codium
  - flatpak
  - if I install standalone build, Gnome can not initialize the desktop shortcut, because my standalone apps are in un-mounted partition.
- ocr
  - on flathub there are many verified apps. try them 1 by 1 when you need it.
- io.github.seadve.Kooha
  - flatpak
  - record desktop.
  - vlc also can do the same but this app has unique features like:
    - startup delay
    - smaller recorded file size
    - mic / desktop sound / mouse pointer options available separately.
- org.kde.kdiff3
  - flatpak
  - shows folder and file diff
- net.nokyan.Resources
  - flatpak
  - Gnome system monitor dont have those features:
    - shows GPU (or CPU-embeeded-GPU)
    - shows all disks separately
- com.github.wwmm.easyeffects
  - flatpak
  - increase system (OS) level output voice (output tab --> effects --> add effect --> autogain --> increase the "output" bar)
- io.github.nokse22.inspector
  - flatpak
  - info about hardware, drives and OS (RAM, network interfaces seperatly...)
- org.kde.akregator
  - flatpak
  - rss reader

## database

- io.dbeaver.DBeaverCommunity
  - flatpak
  - supports most of RDBMS and some of NOSQL

- com.redis.RedisInsight
  - flatpak
  - Redis only

- org.dbgate.DbGate
  - flatpak
  - supported DB:
    - MySQL
    - PostgreSQL
    - SQL Server
    - Oracle
    - MongoDB
    - Redis
    - SQLite
    - Amazon Redshift
    - CockroachDB
    - MariaDB
    - maybe more via plugins

- jetbrains datagrip
  - its not free. but we already use Intellij IDEA locally.

- <https://www.beekeeperstudio.io/get-community>
  - supported DBs: <https://github.com/beekeeper-studio/beekeeper-studio?tab=readme-ov-file#supported-databases>

## http clients

- Hoppscotch (Downloads are available on from different repository) (appimage)
- insomnia (appimage)

### Hoppscotch vs insomnia

- both have support for pre-request and post-request (test) scripts via JavaScript.
- insomnia has more pre-request script snippets (templates/examples).
- insomnia has quick templates (feature name: "generator tag") to change a filed on body via setting random number, timestamp etc... You can do that this manually on Hoppscotch via pre-request scripts via JavaScript (but it takes time little bit).
- insomnia has gRPC support, but Hoppscotch not.

### postman

postman shows gRPC "metadata" on response. insomnia does not.

- Do not use:
  - "bruno" which is lightweight of insomnia (they already mention on their github readme)
  - firecamp has few contributors.
  - all others are proprietary (except command-line based)

## BROWSERS

- Firefox
  - native is installed by default on Fedora.
  - only install Flatpak when there are compatibility issues with native Firefox. Example: Microsoft-Teams web page only works with Firefox Flatpak build. It does not work with native Firefox.
  - When install from Flatpak use "Flathub" as remote. (for better codec support)
  - When both native and Flatpak has been installed, shortcuts may conflict.
  
    Run the flatpak via:

    > flatpak run org.mozilla.firefox

    Or Gnome menu shortcut will start flatpak firefox.

    To start native-firefox run:

    > /usr/bin/firefox

    or just:

    > firefox

    Flatpak-firefox use profile directory as: $HOME/.var/org.mozilla.firefox

- net.mullvad.MullvadBrowser
  - flatpak
- io.github.ungoogled_software.ungoogled_chromium (does not include any privacy patch.)
  - flatpak
  - appimage (is 3rd party. prefer flatpak.)
- chromium
  - do not install the packages of woolyss.
  - do not install <https://flathub.org/apps/org.chromium.Chromium>
  - portable version should be download manually: <https://www.chromium.org/getting-involved/download-chromium/#not-as-easy-steps>
  - dnf install chromium (explained here: <https://docs.fedoraproject.org/en-US/quick-docs/installing-chromium-or-google-chrome-browsers/>)

## APPS INSIDE VIRTUAL MACHINE WITH GUEST FEDORA

- google chrome (for compatibility issues or tests)
  - rpm (because does not need any video codec)
- teamviewer
  - rpm (because portable version not working)
- opera (for free VPN)
  - snap (because Snap build does not need any video coded. if you will install rpm or deb version you will need to read below note)
- brave browser (officially supports TOR. in case any compatibility problem happens with TOR-Browser.)
  - flatpak ve snap are still beta.

## Opera browser video codec

libffmpeg.so is licensed codec for videos. but it has different versions and different builds. libffmpeg for the new chromium/chrome builds does not work on new opera versions. therefore you need to find specific build of libffmpeg.so for opera.

For example this build works for Opera 63.0.3x: <https://github.com/iteufel/nwjs-ffmpeg-prebuilt/releases/download/0.39.2/0.39.2-linux-x64.zip>

## Flatpak video codecs

- Do not prefer remote "Fedora", always prefer "Flathub". because of licence issues, Flathub distributed app has more codec support.
- Flatpak apps may use codecs from below apps. Therefore install if you don't have already:

  - flatpak install --system flathub org.videolan.VLC
  - flatpak install --system flathub org.freedesktop.Platform.gstreamer
  - flatpak install --system flathub org.freedesktop.Platform.VAAPI.Intel
  - flatpak install --system flathub org.freedesktop.Platform.VAAPI.Intel.i386
  - flatpak install --system flathub org.freedesktop.Platform.ffmpeg-full
  - flatpak install --system flathub org.freedesktop.Platform.openh264
  - flatpak install --system flathub org.freedesktop.Platform.GL.default

- Always pass --system to all apps. Because:
  - they will be able to read codecs of others (if exist).
  - if any new user will be created on OS the new user will not need to imnstall again all apps.

## Video and feature test pages

- <https://github.com/niutech/html5test>
- <https://tools.woolyss.com/html5-audio-video-tester/>

## DOWNLOADED INSTALLERS

CRITICAL_APPS: in case any offline environment.

tor-browser and brave-browser are the exceptions (in case download may blocked by ISP, but it works if you downloaded already).

brave-browser doesn't get as much attention as tor-browser for being installed or running on OS. Therefore I had a backup of it. (normally tor-browser is enough).

```text
├── CRITICAL_APPS
brave-browser-1.77.100-linux-amd64.zip
Brave-Browser-universal.dmg
BraveMonoarm64.apk
brave-v1.77.100-win32-x64.zip
KeePassDX-4.1.1-libre.apk
KeePassXC-2.7.10-arm64.dmg
KeePassXC-2.7.10-Win64.zip
KeePassXC-2.7.10-x86_64.AppImage
KeePassXC-2.7.10-x86_64.dmg
LibreOfficePortable_25.2.1_MultilingualAll.paf.exe
peazip-10.4.0.DARWIN.aarch64.dmg
peazip-10.4.0.DARWIN.x86_64.zip
peazip_portable-10.4.0.LINUX.GTK2.x86_64.tar.gz
peazip_portable-10.4.0.LINUX.Qt6.x86_64.tar.gz
PeaZipPortable_10.4.0.paf.exe
syncthing_com.github.catfriend1.syncthingandroid_fdroid_1290400.apk
syncthing-linux-amd64-v1.29.5.tar.gz
syncthing-macos-universal-v1.29.5.zip
syncthing-windows-amd64-v1.29.5.zip
tor-browser-android-armv7-14.5.apk
tor-browser-linux-x86_64-14.5.tar.xz
tor-browser-macos-14.5.dmg
tor-browser-windows-x86_64-portable-14.5.exe
ventoy-1.1.05-linux.tar.gz
ventoy-1.1.05-windows.zip
```

```text
└── PORTABLE_LINUX_APPS
7z2409-linux-x64.tar.xz
android_sdk_linux.tar
android-studio-2024.1.1.11-linux.tar.gz
apache-maven-3.9.9-bin.tar.gz
fastfetch
ffmpeg-release-amd64-static.tar.xz
ideaICommunity-2024.1.3.tar.gz
Image-ExifTool-13.27.tar.gz
node-v20.14.0-linux-x64.tar.xz
OpenJDK21U-jdk_x64_linux_hotspot_21.0.3_9.tar.gz
yt-dlp_linux
```

# APPS INSIDE FEDORA

## partition manager
- blivet-gui
  - dnf
  - gparted and gnome-disk-utility does not support LVM and btrfs (which is default file-system on Fedora).
- gparted
  - dnf
  - gnome-disk-utility does not shot long partition names + and not show flags

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
- gnome-tweaks
  - dnf
- org.gnome.seahorse.Application (GUI for Keyring (password and certificates of OS))
  - flatpak

## Media Player
- io.github.celluloid_player.Celluloid (media player based on MPV)
  - flatpak
  - fast seek is faster then VLC
  - seek-bar not work on VLC for GIF files. Celluloid seek-bar works, but you should wait 2-3 seconds each time you move/pause seekbar on different location(second/timeline).
- VLC
  - dnf (to enable codecs for native Firefox)

## Music recognizer
- com.github.marinm.songrec (Shazam client)
  - flatpak 
- io.github.seadve.Mousai (AudD client - alternative to Shazam)
  - flatpak

# Media manipulation
- org.kde.kdenlive
  - flatpak
- org.gnome.Shotwell (for fast crop operations)
  - flatpak
- fr.romainvigier.MetadataCleaner
  - flatpak
  - GUI for MAT2 (media metadata cleaner). it has support for "flac" files (but exiftool does not support it).
- org.upscayl.Upscayl
  - flatpak
  - scale photo with different AI models. Does not require GPU.
- org.gimp.GIMP
  - flatpak

## others
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
  - flatpak
  - GUI for monitor miroring (Miracast, Chromecast...)
- com.vscodium.codium
  - flatpak
  - if I install standalone build, Gnome can not initialize the desktop shortcut, because my standalone apps are in un-mounted partition.
- ocr
  - on flathub there are many official build of different apps. try them 1 by 1 when you need it.
- io.github.seadve.Kooha
  - flatpak
  - record desktop.
  - vlc also can do the same but this app has unique features like:
    - startup delay
    - smaller recored file size
    - mic / desktop sound / mouse pointer options available seperatly.
- org.kde.kdiff3
  - flatpak
  - shows folder and file diff
- io.missioncenter.MissionCenter
  - flatpak
  - shows GPU, network, WI-FI seperated (Gnome system monitor dont have this feature)
- com.github.wwmm.easyeffects
  - flatpak
  - increase system (OS) level output voice (output tab --> effects --> add effect --> autogain --> increase the "output" bar)
- io.github.nokse22.inspector
  - flatpak
  - info about hardware, drives and OS (RAM, network interfaces seperatly...)
- org.kde.akregator
  - flatpak
  - rss reader

# database
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
- io.dbeaver.DBeaverCommunity
  - flatpak
  - supports most of RDBMS and some of NOSQL

## http clients
- Hoppscotch (Downloads are available on from different repository) (appimage)
- insomnia (appimage)

comparison of features that I use:
- both have support for pre-request and post-request (test) scripts via JavaScript.
- insomnia has more pre-request script snippets (templates/examples).
- insomnia has quick templates (feature name: "generator tag") to change a filed on body via setting random number, timestamp etc... You can do that this manually on Hoppscotch via pre-request scripts via JavaScript (but it takes time little bit).

- Do not use:
  - "bruno" which is lightweight of insomnia (they already mention on their github readme)
  - all others are proprietary (except command-line based)

- Other potential GUI apps:
  - firecamp

# BROWSERS
- net.mullvad.MullvadBrowser
  - flatpak
- io.github.ungoogled_software.ungoogled_chromium (does not include any privacy patch.)
  - flatpak
  - appimage (is 3rd party. prefer flatpak.)
- chromium
  - do not install the packages of woolyss.
  - do not install https://flathub.org/apps/org.chromium.Chromium
  - portable version should be download manually: https://www.chromium.org/getting-involved/download-chromium/#not-as-easy-steps
  - dnf install chromium (explained here: https://docs.fedoraproject.org/en-US/quick-docs/installing-chromium-or-google-chrome-browsers/)

# APPS INSIDE VIRTUAL MACHINE WITH GUEST FEDORA:
- google chrome (for compability issues or tests)
  - rpm (because does not need any video codec)
- teamviewer
  - rpm (because portable version not working)
- opera (for free VPN)
  - snap (because Snap build does not need any video coded. if you will install rpm or deb version you will need to read below note)
- brave browser (officialy supports TOR. in case any compability problem happens with TOR-Browser.)
  - flatpak ve snap are still beta.

# CODEC TEST FOR BROWSERS
video test page: https://tekeye.uk/html/html5-video-test-page

## Opera video codec
libffmpeg.so is licenced codec for videos. but it has different versions and different builds. libffmpeg for the new chromium/chrome builds does not work on new opera versions. therefore you need to find specific build of libffmpeg.so for opera.

For example this build works for Opera 63.0.3x: https://github.com/iteufel/nwjs-ffmpeg-prebuilt/releases/download/0.39.2/0.39.2-linux-x64.zip

# DOWNLOADED INSTALLERS
CRITICAL_APPS: in case any offline environment. "tor-browser" is the exception (in case the download may blocked by ISP, but it works if you downloaded already).

```
├── CRITICAL_APPS
│   ├── KeePassDX-4.0.6-libre.apk
│   ├── KeePassXC-2.7.8-arm64.dmg
│   ├── KeePassXC-2.7.8-Win64.zip
│   ├── KeePassXC-2.7.8-x86_64.AppImage
│   ├── KeePassXC-2.7.8-x86_64.dmg
│   ├── LibreOfficePortable_24.2.3_MultilingualAll.paf.exe
│   ├── peazip-9.8.0.DARWIN.aarch64.dmg
│   ├── peazip-9.8.0.DARWIN.x86_64.dmg
│   ├── peazip_portable-9.8.0.LINUX.GTK2.x86_64.tar.gz
│   ├── peazip_portable-9.8.0.LINUX.Qt5.x86_64.tar.gz
│   ├── peazip_portable-9.8.0.WIN64.zip
│   ├── syncthing-android.apk
│   ├── syncthing-linux-amd64-v1.27.8.tar.gz
│   ├── syncthing-macos-universal-v1.27.8.zip
│   ├── syncthing-windows-amd64-v1.27.8.zip
│   ├── tor-browser-android-x86_64-13.0.16.apk
│   ├── tor-browser-linux-x86_64-13.0.16.tar.xz
│   ├── tor-browser-macos-13.0.16.dmg
│   ├── tor-browser-windows-x86_64-portable-13.0.16.exe
│   ├── ventoy-1.0.99-linux.tar.gz
│   └── ventoy-1.0.99-windows.zip
```

```
└── PORTABLE_LINUX_APPS
    ├── 7z2406-linux-x64.tar.xz
    ├── android_sdk_linux.tar
    ├── android-studio-2024.1.1.11-linux.tar.gz
    ├── apache-maven-3.9.7-bin.tar.gz
    ├── fastfetch
    ├── ffmpeg-release-amd64-static_7.0.1.tar.xz
    ├── ideaICommunity-2024.1.3.tar.gz
    ├── Image-ExifTool-12.87.tar.gz
    ├── node-v20.14.0-linux-x64.tar.xz
    ├── OpenJDK21U-jdk_x64_linux_hotspot_21.0.3_9.tar.gz
    └── yt-dlp_linux
```

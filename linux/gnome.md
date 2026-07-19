# GNOME

## How to add border around windows

- ### a- via Extension

I don't prefer this extension. because:

- it is maintaining only by a few developer (it has a blocker bug, it did not get fixed long time).
- I only use 1 feature of that extension. but it has a lot of features. which can make additional bugs on desktop.

name: "rounded-window-corners". (It forked by another developer with name: "Rounded Window Corners Reborn")

Settings for extension:

- Skip LibAdwaita Application --> false
- border width --> 3
- border color --> pink or orange or red

- ### b- via accessibility

Gnome settings --> accessibility --> seeing --> Enable "Hight contrast"

"Hight contrast" feature is not good as extension. but "Hight contrast" also enables borders inside window form elements (buttons etc...). I always enable this, even extension is active.

Note: If Gnome's "Hight contrast" is enabled, all desktop applications start with Hight contrast mode. But this mode is not useful on LibreOffice. For example LibreOffice does not show background color of cells on Hight contrast mode. In order prevent this:

- open LibreOffice > Tools > Options > Accessibility > Disable "Hight contrast".

If some icons are not visible enough then try other icons:

- open LibreOffice > Tools > Options > View > Try other "icon theme"

## how to increase cursor size

Gnome settings --> accessibility --> seeing --> Cursor size

## how to always show scroll-bars

Gnome settings --> accessibility --> seeing -->  enable "always show scroll-bars"

## how to increase speed of cursor blink

Gnome settings --> accessibility --> typing --> blink speed

## enable CTRL button to reveal cursor position

Gnome settings --> accessibility --> pointing & clicking --> locate pointer

## How to change window positions easily

keywords: tiling windows

- 1- <https://extensions.gnome.org/extension/28/gtile/>

- 2- <https://extensions.gnome.org/extension/1604/arrange-windows/>

## How to see window list under desktop (panel)

extension name: window-list

## Alt tab

There is no need to install any extension to change the behavior.

As default Gnome enables "application switcher" feature when you click ALT+TAB. But I prefer "window-switcher" which can be enabled via:

Gnome settings --> Keyboard --> View and Customize Shortcuts --> Navigation -->

- "Switch applications" --> disabled
- "Switch windows" --> ALT+TAB

## Background (Wallpaper)

UI does not have option to make wallpaper a solid color. Run below commands:

```sh
gsettings set org.gnome.desktop.background picture-uri ''

gsettings set org.gnome.desktop.background picture-uri-dark ''
```

Optionally change the color:

```sh
gsettings set org.gnome.desktop.background primary-color '#241f31'
```

## other gnome settings

gsettings ile aşağıdakiler direk inject edilebilir.

```
[org/gnome/Ptyxis]
restore-session=false

[org/gnome/TextEditor]
restore-session=false
show-line-numbers=true
show-map=true
style-scheme='cobalt'

[org/gnome/desktop/a11y/interface]
high-contrast=true

[org/gnome/desktop/interface]
clock-show-seconds=false
clock-show-weekday=false
color-scheme='prefer-dark'
cursor-blink-time=792
cursor-size=48
enable-animations=true
gtk-enable-primary-paste=false
locate-pointer=true
overlay-scrolling=false
show-battery-percentage=true

[org/gnome/desktop/privacy]
remember-recent-files=false
remove-old-temp-files=true
remove-old-trash-files=true
report-technical-problems=false
remember-app-usage=false

[org/gnome/desktop/search-providers]
disable-external=true

[org/gnome/desktop/sound]
allow-volume-above-100-percent=true
event-sounds=true

[org/gnome/desktop/wm/keybindings]
switch-applications=@as []
switch-applications-backward=@as []
switch-windows=['<Alt>Tab']
switch-windows-backward=['<Shift><Alt>Tab']

[org/gnome/desktop/wm/preferences]
button-layout='appmenu:minimize,maximize,close'

[org/gnome/mutter]
attach-modal-dialogs=false

[org/gnome/nautilus/list-view]
default-visible-columns=['name', 'size']
default-zoom-level='small'
use-tree-view=true

[org/gnome/nautilus/preferences]
default-folder-viewer='list-view'
show-delete-permanently=true

[org/gnome/settings-daemon/plugins/color]
night-light-enabled=false
night-light-schedule-automatic=false

[org/gnome/shell]
disabled-extensions=['background-logo@fedorahosted.org']
enabled-extensions=['window-list@gnome-shell-extensions.gcampax.github.com']
favorite-apps=['org.gnome.Nautilus.desktop', 'com.vscodium.codium.desktop', 'firefox_p_daily.desktop']
last-selected-power-profile='performance'

[org/gnome/shell/app-switcher]
current-workspace-only=true

[org/gnome/system/location]
enabled=false

[org/gtk/gtk4/settings/file-chooser]
show-hidden=true
sort-directories-first=true

[org/gtk/gtk4/settings/file-chooser]
show-hidden=true
sort-directories-first=true

[org/gtk/settings/file-chooser]
show-hidden=true
sort-directories-first=true
sort-order='ascending'
```
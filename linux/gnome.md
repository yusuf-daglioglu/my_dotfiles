# GNOME EXTENSIONS

## How to add border around windows

- ### a- via Extension

I dont prefer this extension. because:
- it is maitaing only by a few developer (it has a blocker bug, it did not get fixed long time).
- I only use 1 feature of that extension. but it has a lot of features. which can make additional bugs on desktop.

name: "rounded-window-corners". (It forked by nother developer with name: "Rounded Window Corners Reborn")

Settings for extension:
- Skip LibAdwaita Application --> false
- border width --> 3
- border color --> pink or orange or red

- ### b- via acccesibility

Gnome settings --> Accesibility --> seeing --> Enable "Hight contrast"

"Hight contrast" feature is not good as extension. but "Hight contrast" also enables borders inside window form elements (buttons etc...). I always enable this, even extension is active.

Note: If Gnome's "Hight contrast" is enabled, all desktop applications start with Hight contrast mode. But this mode is not useful on LibreOffice. For example LibreOffice does not show background color of cells on Hight contrast mode. In order prevent this:

- open LibreOffice > Tools > Options > Accessibility > Disable "Hight contrast".

If some icons are not visible enough then try other icons:

- open LibreOffice > Tools > Options > View > Try other "icon theme"

## how to increase cursor size

Gnome settings --> Accesibility --> seeing --> Cursor size

## how to always show scrollbars

Gnome settings --> Accesibility --> seeing -->  enable "always show scroolbars"

## how to icrease speed of cursor blink

Gnome settings --> Accesibility --> typing --> blink speed

## enable CTRL button to reveal cursor position

Gnome settings --> Accesibility --> pointing & clicking --> locate pointer

## How to change window positions easily

keywords: tiling windows

- 1- https://extensions.gnome.org/extension/28/gtile/

- 2- https://extensions.gnome.org/extension/1604/arrange-windows/

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

> gsettings set org.gnome.desktop.background picture-uri ''

> gsettings set org.gnome.desktop.background picture-uri-dark ''

Optionally change the color:

> gsettings set org.gnome.desktop.background primary-color '#241f31'

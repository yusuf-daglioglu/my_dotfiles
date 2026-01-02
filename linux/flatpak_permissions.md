# FLATPAK PERMISSIONS

## DISABLING FLATSEAL PERMISSIONS

- common rules for all apps:

  disable network if you dont need.

  if you disable network, than dont touch other permissions (so it will work stable)

- dont touch anything for:

  - org.gnome.NetworkDisplays
  - firefox
  - remmina
  - net.nokyan.Resources
  - signal
  - simplex
  - ungoogled_chromium

- vscodium

  - all devices

- vlc

  - network

- org.kde.akregator

  remove all permissions except
  - Network
  - Wayland

- google chrome

  remove all permissions except

  - Network
  - Wayland
  - pulse audio sound server
  - all devices (only for camera)
  - environments (all)
  - owns (all)

- Mousai

  remove all permissions except

  - Network
  - Wayland
  - pulse audio sound server

- songrec

  remove all permissions except

  - Network
  - Wayland
  - pulse audio sound server

- qbittorrent

  remove:

  - IPC
  - X11
  - X11 Fallback
  - GPU acceleration
  - all system files
  
  add:

  - other files:
  
    /home/user1/Downloads

## FLATSEAL DOCUMENTATION NOTES

- "persistent" is not about permission. When we re-install an app that directory is immutable.

## HIDDEN PERMISSIONS

every specific file can be read anytime by a flatpak app, only allowed at least once. to reet all those permissions run below manually, because Flatseal can not reset those.

> sudo flatpak permission-reset --all

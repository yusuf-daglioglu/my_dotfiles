# FLATPAK PERMISSIONS

## DISABLING FLATSEAL PERMISSIONS

copy __overrides__ to __/home/user1/.local/share/flatpak/overrides/__.

## KNOWN BUGS

- calibre

  before covert files, change calibre library path to any custom directory.

## FLATSEAL DOCUMENTATION NOTES

- "persistent" is not about permission. When we re-install an app, that directory is immutable.

## HIDDEN PERMISSIONS

every specific file can be read anytime by a flatpak app, only allowed at least once. to reet all those permissions run below manually, because Flatseal can not reset those.

> sudo flatpak permission-reset --all

# grub settings

```sh
sudo gnome-text-editor /etc/default/grub
```

```sh
GRUB_TIMEOUT_STYLE=menu # if it is "hidden" then the grub2 screen does not display.

GRUB_TIMEOUT=2 # grub2 screen display as second.

GRUB_CMDLINE_LINUX_DEFAULT="" 
# - add nomodeset at the end of all, if you have GPU issues.
# - delete "quiet" which disable most log messages.(i need those in any case)
# - delete "rhgb" which is "redhat graphical boot" (GUI screen)
# - default on fedora: 
# rhgb quiet
```

then run:

TODO: this is not working on new fedora.

```sh
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
```

# GRUB AND BOOT

```sh
sudo gnome-text-editor /etc/default/grub
```

```sh
GRUB_TIMEOUT_STYLE=menu # if it is "hidden" then the grub2 screen does not display.

GRUB_TIMEOUT=4 # grub2 screen display as second.

GRUB_CMDLINE_LINUX_DEFAULT="" 
# - add nomodeset at the end of all, if you have GPU issues.
# - delete "quiet" which disable most log messages.(i need those in any case)
# - delete "rhgb" which is "Red Hat graphical boot" (GUI screen)
```

then run:

```sh
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
```

Yukarıdaki ayarlar şu durumda gereksiz olabilir: `UEFI` direk `Fedora` partition'unu execute ediyorsa, `GRUB` hiç execute edilmediğinden, `GRUB` son kullanıcıya hiç gözükmeyebilir.

`Grub` menüsü hala gözükmüyor ise:

```sh
sudo grub2-editenv - unset menu_auto_hide
```

## /Boot and efi directory

My system partition scheme is `GPT`:

| Name                 | File system | mount point | label     | size                         | description                                        |
|----------------------|-------------|-------------|-----------|------------------------------|----------------------------------------------------|
| EFI System Partition | fat32       | /boot/efi   | TODO      | 2                            |                                                    |
| Boot partition       | ext4        | /boot       | TODO      | 2                            |                                                    |
|                      | lvm         |             |           | (read from other note files) |                                                    |
| fedora               | ext4        | /           | fedora    | (read from other note files) | i want to use btrfs but it does not resize via GUI |
| internal1            | ext4        |             | internal1 | (read from other note files) |                                                    |
|                      | unformatted |             |           |                              | for the future                                     |

all partitions inside `lvm` can be re-sized very fast.

## unused files inside boot partition

remove this package:

```sh
sudo dnf remove dracut-config-rescue
```

which creates rescue files inside boot partition after each new kernel update.

Start `nautilus` with root privileges:

```sh
nautilus admin:/
```

and remove manually all files inside /boot:

- except directories.
- files which has version of Linux kernel (except latest version).

If you do above actions, the boot partition will be 200 MB. But if you don't do even 3 GB is not enough.

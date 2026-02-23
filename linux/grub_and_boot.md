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

| Name                 | File system    | mount point | label     | size                                 | description |
|----------------------|----------------|-------------|-----------|--------------------------------------|-------------|
| EFI System Partition | fat32          | /boot/efi   |           | 2                                    |             |
| Boot partition       | ext4           | /boot       |           | 2                                    |             |
| lvm_volume_group_1   | lvm with luks2 |             |           | all remaining                        |             |
| - fedora             | btrfs          | /           | fedora    | read from other note files and below |             |
| - internal1          | btrfs          |             | internal1 | read from other note files and below |             |

- all partitions inside `lvm` use the same empty space. any partition inside `lvm` can be use empty space anytime.
- `lvm` could be `btrfs` (with subvolmes). but I `lvm` is better, because I can use different format inside partitions.
- `lvm` sub-partitions can be `ext3` or `btrfs`. `btrfs` has a feature which checks checksums eon every read. That means if filesystem can not read anything you will notice it quickly.
- every sub partition inside `lvm` should be smallest as possible. because `shrik` takes long time but `grow` takes few seconds.

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

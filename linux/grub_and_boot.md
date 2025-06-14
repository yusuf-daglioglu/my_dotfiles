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

```sh
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
```

Yukarıdaki ayarlar şu durumda gereksiz olabilir: UEFI direk Fedora partition'unu execute ediyorsa, GRUB hiç execute edilmediğinden, GRUB son kullanıcıya hiç gözükmeyebilir.

# /Boot and efi directory

My system partition scheme is GPT:

| Name                 | File system | mount point                | label     | size                         |
|----------------------|-------------|----------------------------|-----------|------------------------------|
| EFI System Partition | fat32       | /boot/efi                  | efi       | 1                            |
| Boot partition       | ext4        | /boot                      | boot      | 2                            |
| fedora               | btrfs       | /                          | fedora    | (read from other note files) |
| vm                   | btrfs       | /var/lib/libvirt/images/vm | vm        | (read from other note files) |
| internal1            | btrfs       | (auto)                     | internal1 | (read from other note files) |
| internal2            | btrfs       | (auto)                     | internal2 | (read from other note files) |

# unused files inside boot partition

remove this package:

> sudo dnf remove dracut-config-rescue

which creates rescue files inside boot partition after each new kernel update.

Start nautilus with root privilages:

> nautilus admin:/

and remove manually all files inside /boot:

- except directories.
- files which has version of Linux kernel (except latest version).

If you do above actions, the boot partition will be 200 MB. But if you don't do even 3 GB is not enough.

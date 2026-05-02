# VIRTUAL MACHINES

## All storages by all VM managers

`Cockpit` --> `Virtual machines` --> `Storage pools`

## GUI apps for VM management

`virt-manager` is still developing.

`Cockpit` has server, it has only web based UI.

`Cockpit client` on Flathub, is only a web browser. (dont need to use)

`virt-manager` shows every detail. but only `Cockpit` shows all VM storages.

## install cockpit

```sh
# cockpit is already installed on fedora 43.
# we only enable service.
sudo systemctl enable --now cockpit.socket

# VM manager extension
sudo dnf install cockpit cockpit-machines
```

Then go from web browser and log-in via OS username and password:

```
https://localhost:9090
```

## cockpit port'unu network'ten erişimi kapatmak için

```sh
sudo systemctl edit cockpit.socket
```

Açılan dosyada yukarıdaki comment aralığına şu yapıştırılmalı:

```
[Socket]
ListenStream=
ListenStream=127.0.0.1:9090
```

`CTRL+O` ile save edip `CTRL+X` ile çıkış yap `nano`'dan. Sonra servisi restart et:

```sh
sudo systemctl restart cockpit.socket
```

## File share tips

### adding ISO as CD-ROM hardware

```sh
mkisofs -o '/dir1/shared_files.iso' '/dir1/shared_files'
```

`7zip` and `Peazip` can not create `ISO`.

Use `Cdrtfe` (via `portableapps.com`) on `MS Windows` to create `ISO`.

### other methods

explained on another file.

## Windows Licence

windows activate edilmediğinde sistem kullanılabiliyor. Sadece şunlar kısıtlanıyor:

- sync with account
- theme and personalizations
- optional updates (critical and security updates are installing)

## Windows 11 PRO VS HOME

`Home` version does not include features like:

- `Hyper-V`
- `RDP` server
- `Windows containers` (`Home` version can only run `Linux` containers) (source: <https://docs.docker.com/desktop/install/windows-install/>)

In any case the `PRO` version should be preferred.

## Office Licence

`Office` without licence only allows you to open files read-only.

If you need `Office` only once, mount `office-2021-pro-plus.iso` as `CD-ROM` to VM, and install it. It allows you to use all features for 5 days. The setup process takes about 5 minutes on `SSD` drive.

## fedora_43_ext4.vmdk

- `Fedora-Workstation-Live-43-1.6.x86_64`
- english
- `architecture`: x86_64
- `firmware`: uefi
- `partitions`: gpt
- `image virtual size`: 430 GB
- `image real size`: 17 GB
- `password`: 123456a
- `OS updates done at`: 12/2025

## fedora_43_btrfs.qcow2

- `Fedora-Workstation-Live-43-1.6.x86_64`
- english
- `architecture`: x86_64
- `firmware`: uefi
- `partitions`: gpt
- `image virtual size`: 400 GB
- `image real size`: 15 GB
- `user password`: zozeka334o
- `luks`: kamara88a
- `OS updates done at`: 1/2026

## windows_11.vmdk

- `windows_11__23H2__english_international__x64_v2` (official iso microsoft web site)
- `architecture`: x86_64
- `firmware`: uefi
- `partitions`: gpt. it has multiple free partitions left and right side of Windows partition.
- `image virtual size`: 300 GB
- `image real size`: 15 GB
- `password`: theme1kapa9971
- logged in without cloud account
- `manuel operations`: performance mode enabled (from battery setting)
- `manual test`: enough.

## Notes for Windows

- There is no need to disable `fast-startup` on `VM` (because its disabled by default).
- If any error shows with code `OOBEZDP`, click many times `skip` or `try-again`. It will skip that step.
- To change the `Windows` resolution inside `VM`, download the `guest` package and install on `Windows` from: <https://www.spice-space.org/download.html>
- To skip user cloud account:
  - on the `Choose a country` screen, press the `Shift + F10`.
  - it will open terminal.
  - type `OOBE/BYPASSNRO` press `enter`.
  - it will restart automatically.
  - then on the new screens do not choose personal account. choose `school` or `work` account. And then `sign-in options` --> `domain join instead`.

## feature test

host: fedora 43

vm:

- fedora 43
  - virt-manager nix ile:
    - video izlerken genel hız: direk oldu
    - pixel büyütme: direk oldu
    - network çıkış: direk oldu
    - text copy:  direk oldu
    - içeri direk dosya sürükle bırak: direk oldu
    - ses geliyormu: direk oldu
    - kamera browser test: direk oldu
    - mikrofon browser test: direk oldu
- windows 11
  - virt-manager nix ile:
    - video izlerken genel hız: direk oldu
    - pixel büyütme: OLMADI
    - network çıkış: direk oldu
    - text copy: OLMADI
    - içeri direk dosya sürükle bırak: OLMADI
    - ses geliyormu: direk oldu
    - kamera browser test: direk oldu
    - mikrofon browser test: direk oldu

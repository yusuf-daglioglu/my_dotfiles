# virt-manager
There are multiple repo with same name on internet. The below project is getting update and it has Flatpak build:

https://gitlab.com/virt-viewer/virt-viewer/

After installation, the GUI shortcut has name: "Remote Viewer".

# system session vs user session
system session is not super admin. it has its own limited permissions. but user session is very limited. with user session you can have issues to create different network mapping or connecting USB/PCI devices...

# config files
Gnome-boxes, virt-manager, Cockpit use common config files. For user session they use this directory:

> /home/user1/.config/libvirt/qemu

# Permission to open ISO or disk files
Put everything inside proper folder:

- User session:

  /home/user1/.local/share/libvirt/images

- System session:

  /var/lib/libvirt/images

All storage informations can be found here:

Cockpit --> Virtual machines -> Storage pools

It is good to use default directories because permission management is complex. Even if you give the ISO file 777 permission, the user and group should be compatible with VM initialiser. Also all the parent directories should have the correct permissions.

# vm name
As "VM name", Gnome-boxes use different variable inside XML (if UI-app don't find name field (inside XML) he want, it use XML file name for "VM name").

# switch to "user session" on virt-manager
To see the same list from both GUI apps:

Open virt-manager (without sudo) --> "add connection" --> "Hypervisor"="QEMU/KVM user session".

# Cockpit
virt-manager is no developing anymore. Cockpit is the successor. it has web based UI.

(try to install flatpak only. if its not enough, then install via DNF)

> sudo dnf install cockpit

> sudo systemctl enable --now cockpit.socket

Then go from web browser and log-in via OS username and password:

> https://localhost:9090

As default, Cockpit does not include UI modules for virtual machines. You install it from:

- Web UI --> Applications --> machines --> Install (you dont need restart. "Virtual machines" menu will be added automacally to web-UI.)

# Connect to desktop
Gnome-boxes can not connect to Cockpit-created VM (limited feature or a bug). But with Remmina you can connect it. To connect a USB device always use Cockpit (But it requires system-session VM).

Cockpit shows how any 3rd party client can connect to desktop via IP and port. It shows under "Virtual machine -> Console -> Desktop viewer". It shows both Spice and VNC protocols. With Remmina you can connect both (test by me), but Spice is faster than VNC.

Remmina shows many options:
- SPICE (this is the fastest)
- VNC plugin for Gnome and KVM. (it works but it's slow)
- others...

# create VM with specific disk format
When an image is imported to gnome-boxes, gnome-boxes converts this image to qcow2. But Virt-manager can run other image formats without any conversion. Therefore, create the VM from virt-manager and run it from gnome-boxes if you will use the built-in share feature of gnome-boxes.

# File share tips
1- adding CD-ROM hardware:

```sh
mkisofs -o '/home/user/shared_files.iso' '/home/user/shared_files'
```

2- via gnome-boxes built-in feature.

3- via syncthing (cross-platform app).

For 2nd and 3rd options, the network of VM must be "bridge". When the bridge network is selected from virt-manager GUI, the device name must be "virbr0".

4- text or file share via snapdrop.

# Microsoft Licence

## Windows 10 Licence
windows aktive edilmediğinde sistem kullanılabiliyor. Sadece şunlar kısıtlanıyor:
- sync with account
- theme and personalizations
- optional updates (critical and security updates are installing)

## Windows 11 PRO VS HOME
Home version does not include features like:
- Hyper-V. 
- Windows containers (Home version can only run Linux containers) (source: https://docs.docker.com/desktop/install/windows-install/)

In any case the PRO version should be prefered.

## Office Licence
Office without licence only allows you to open files read-only.

If you need Office only once, mount office-2021-pro-plus.iso as CD-ROM to VM, and install it. It allows you to use all features for 5 days. The setup process takes about 6 minutes on SSD drive. The windows10-VM increases to 15.4 GB.

# fedora_40.vmdk
- Fedora-Workstation-Live-x86_64-40-1.14.iso
- english
- acrhitecture: x86_64
- firmware: uefi
- partitions: gpt. it has multiple free parts left and right side of fedora partition.
- image virtual size: 300 GB
- image real size: 15.3 GB
- password: 123456a
- OS updates done at 06/2024

# windows_10.vmdk
- win10_22h2_english_international_x64_download_at_3_december_2022 (official iso microsoft web site)
- acrhitecture: x86_64
- firmware: bios
- partitions: mbr. it has multiple free parts left and right side of Windows partition.
- image virtual size: 300 GB
- image real size: 11.1 GB
- password: 123456a
- mamuel operations: disabled effects
- manual test: microsoft-word opened without issue when VM setup was 1500 MB RAM and 1 CPU.

# windows_11.vmdk
- windows_11__23H2__english_international__x64_v2 (official iso microsoft web site)
- acrhitecture: x86_64
- firmware: uefi
- partitions: gpt. it has multiple free parts left and right side of Windows partition.
- image virtual size: 300 GB
- image real size: 14.5 GB
- password: theme1kapa9971
- logged in without cloud account
- mamuel operations: performance mode enabled (from battery setting)
- manual test: generally it works very slowly.

# Notes for Windows
- There is no need to disable fast-startup on VM (because its disabled by default).
- If any error shows with code OOBEZDP, click many times "skip" or "try-again". It will skip that step.
- To change the Windows resolution inside VM, download the "guest" package and install on Windows from: https://www.spice-space.org/download.html
- To skip cloud account:
  - on the 'Choose a country' screen, press the Shift + F10.
  - it will open terminal.
  - type OOBE/BYPASSNRO press enter.
  - it will restart automatically.
  - then on the new screens do not choose personal account. choose school or workd account. And then "sign-in options" --> "domain join instead".

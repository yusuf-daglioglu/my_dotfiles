# this is an unsupported/unofficial way to use nix apps from multi-user without mix-daemon.

# never run below commands parallel. nix-daemon does not exist. so system may corrupt.

# creating a nix user (because we don't use nix-daemon)
sudo adduser nix_user

# set password for new user
sudo passwd nix_user

# Install Nix package manager
sudo mkdir /nix
sudo chmod -R u=rwx,g=,o=rx /nix
sudo chown -R nix_user /nix

# install nix.
# running the installation command as nix_user.
# below command will ask you password for nix_user.
su nix_user -c "cd /home/nix_user; wget https://nixos.org/nix/install; bash install; source ~/.nix-profile/etc/profile.d/nix.sh"

# switch profile directory (which includes binaries).
# otherwise profile directory is under /home/nix_user/.nix-profile
# which is impossible to access it from other OS users.
su - nix_user -c "/home/nix_user/.nix-profile/bin/nix-env --switch-profile /nix/var/nix/profiles/per-user/nix_user/profile"
sudo mkdir -p /nix/var/nix/profiles/per-user/nix_user
sudo chown -R nix_user:nix_user /nix/var/nix/profiles/per-user/nix_user

# first install nix to see the shortcuts on the profile directory
su nix_user -c "/nix/store/j6k7vmkpcm26d6m78nfpcrswxlfgdn9q-nix-2.33.1/bin/nix-env -iA nixpkgs.nix"

# executables are here:
NIX_BINARY_PATH=/nix/var/nix/profiles/per-user/nix_user/profile/bin
# before each run, add $NIX_BINARY_PATH to PATH so some dependency issues will be solved.
# example: "git gui" call gitk when it needs.
PATH=$PATH:$NIX_BINARY_PATH

# now we can install any app via easy command:
su nix_user -c "$NIX_BINARY_PATH/nix-env -iA nixpkgs.blivet-gui"

su nix_user -c "$NIX_BINARY_PATH/nix-env -iA nixpkgs.virt-manager"

su nix_user -c "$NIX_BINARY_PATH/nix-env -iA nixpkgs.gparted"
# gparted dependencies:
# full list can be found on readme of https://gitlab.gnome.org/GNOME/gparted

# notes about packages:
# - reiserfs-utils is the old name of reiserfsprogs.
# - reiser4progs is not important. the filesystem is not maintaining.
# - btrfs-tools is the old name of btrfs-progs.
# - lvm is provided via lvm2 package.
# - ntfs-3g is provided via ntfs3g
# - nilfs-tools is provided via nilfs-utils package.
# - dmsetup is already provided via lvm2 package.
# - blkid is already provided via util-linux package.
# - 'reiserfsprogs' has been removed from nix because ReiserFS filesystem has not been actively maintained for many years.
# - udevadm is provided via systemd package.
su nix_user -c "$NIX_BINARY_PATH/nix-env -iA nixpkgs.ntfs3g nixpkgs.nilfs-utils nixpkgs.bcachefs-tools nixpkgs.btrfs-progs nixpkgs.e2fsprogs nixpkgs.exfatprogs nixpkgs.f2fs-tools nixpkgs.dosfstools nixpkgs.mtools nixpkgs.hfsutils nixpkgs.hfsprogs nixpkgs.jfsutils nixpkgs.nilfs-utils nixpkgs.ntfsprogs nixpkgs.udftools nixpkgs.util-linux nixpkgs.xfsprogs nixpkgs.xfsdump nixpkgs.dmraid nixpkgs.lvm2 nixpkgs.mdadm nixpkgs.cryptsetup nixpkgs.udisks nixpkgs.systemd nixpkgs.yelp"

su nix_user -c "$NIX_BINARY_PATH/nix-env -iA nixpkgs.zsh"

su nix_user -c "$NIX_BINARY_PATH/nix-env -iA nixpkgs.gitFull"

# check all available binaries
tree $NIX_BINARY_PATH

# run any app.
sudo $NIX_BINARY_PATH/blivet-gui

$NIX_BINARY_PATH/virt-manager # do not run via sudo.

sudo $NIX_BINARY_PATH/gparted

$NIX_BINARY_PATH/zsh

$NIX_BINARY_PATH/git gui
$NIX_BINARY_PATH/gitk

# do not try to install.
# below packages are require background service.
# therefore they cant be installed without NixOS:
# - kdePackages.kinfocenter
# - kdePackages.partitionmanager

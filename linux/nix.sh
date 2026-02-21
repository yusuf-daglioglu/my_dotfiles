NIX_USER_NAME="nix_user"

# creating a nix user (because we don't use nix-daemon)
sudo adduser "$NIX_USER_NAME"

# set password for new user
sudo passwd "$NIX_USER_NAME"

# Install Nix package manager
sudo mkdir "/nix"
sudo chmod -R u=rwx,g=,o=rx /nix
sudo chown -R "$NIX_USER_NAME" "/nix"

# install nix.
# running the installation command as $NIX_USER_NAME.
# "curl" can be used too instead of wget.
# below command will ask you password for $NIX_USER_NAME.
su $NIX_USER_NAME -c "cd /home/$NIX_USER_NAME; wget https://nixos.org/nix/install; bash install; source ~/.nix-profile/etc/profile.d/nix.sh"

# install apps
su $NIX_USER_NAME -c "/home/$NIX_USER_NAME/.nix-profile/bin/nix-shell -p blivet-gui"
su $NIX_USER_NAME -c "/home/$NIX_USER_NAME/.nix-profile/bin/nix-shell -p virt-manager"
su $NIX_USER_NAME -c "/home/$NIX_USER_NAME/.nix-profile/bin/nix-shell -p gparted"
su $NIX_USER_NAME -c "/home/$NIX_USER_NAME/.nix-profile/bin/nix-shell -p zsh"
su $NIX_USER_NAME -c "/home/$NIX_USER_NAME/.nix-profile/bin/nix-shell -p gitFull"

# run any app
sudo /nix/store/1w7mzlfpyp9qrwwf2xy7x8hpwfk7clga-blivet-gui-2.6.0/bin/blivet-gui

/nix/store/zhy7rpx2awk37rw8v205f76vvpbcnxyp-virt-manager-5.1.0/bin/virt-manager

sudo '/nix/store/m3qv22d257445i3ycih6miggbpjb8hxw-gparted-1.7.0/bin/gparted'

'/nix/store/gm8ldbac46x710xlmxanblzvw4yimjzd-zsh-5.9/bin/zsh'

'/nix/store/0457bm8a5pr00p1wd4zpdz0307wqdnw0-git-with-svn-2.52.0/bin/git' gui
'/nix/store/0457bm8a5pr00p1wd4zpdz0307wqdnw0-git-with-svn-2.52.0/bin/gitk'


# packages which require background service.
# therefore they cant be installed without NixOS:
# - kdePackages.kinfocenter
# - kdePackages.partitionmanager
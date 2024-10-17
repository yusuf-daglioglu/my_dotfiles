NIX_USER_NAME="nixuser"

# curl is using inside (embeeded) install.sh of nix
apt-get install curl

# creating a nix user (bacause we dont use daemon)
adduser "$NIX_USER_NAME"

# add nix user to sudo-group(sudoer) (because nix will be installed on root directory via nix user. this operation need root permission.)
usermod -aG sudo "$NIX_USER_NAME"

# Install Nix package manager
mkdir -m 0755 "/nix"
chown "$NIX_USER_NAME" "/nix"

# run command as nix user
su $CC_NIX_USER -c "cd /home/$NIX_USER_NAME; wget https://nixos.org/nix/install; bash install; source ~/.nix-profile/etc/profile.d/nix.sh"

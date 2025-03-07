NIX_USER_NAME="nix_user"

# creating a nix user (bacause we dont use nix-daemon)
sudo adduser "$NIX_USER_NAME"

# set password for new user
sudo passwd "$NIX_USER_NAME"

# add nix user to sudo-group(sudoer) (because nix will be installed on root directory via nix user. this operation need root permission.)
# GROUP_NAME=sudo # debian based OS
GROUP_NAME=wheel # fedora based OS
sudo usermod -aG $GROUP_NAME "$NIX_USER_NAME"

# Install Nix package manager
sudo mkdir -m 0755 "/nix"
sudo chown "$NIX_USER_NAME" "/nix"

# run command as nix user.
# "curl" can be used too instaed of wget.
# below command will ask you password for $NIX_USER_NAME.
su $NIX_USER_NAME -c "cd /home/$NIX_USER_NAME; wget https://nixos.org/nix/install; bash install; source ~/.nix-profile/etc/profile.d/nix.sh"

# From now on all end-user executables can be seen via this command:
sudo ls -l /home/$NIX_USER_NAME/.nix-profile/bin

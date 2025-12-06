######################
# common
######################

XXX_DISTROBOX_DIR=/run/media/user1/internal1/extracted_apps/distrobox
cd $XXX_DISTROBOX_DIR
XXX_BASE_IMAGE="registry.fedoraproject.org/fedora-toolbox:43"
XXX_CONTAINER_NAME=toolbox_zsh
XXX_HOME_DIR=/run/media/user1/internal1/home/git-gui
# password of guest: 1d34f3eAwfrf4ff

######################
# init
######################

$XXX_DISTROBOX_DIR/distrobox \
      create \
      --init-hooks "dnf -y install zsh" \
      --root \
      --image $XXX_BASE_IMAGE \
      --name $XXX_CONTAINER_NAME \
      --yes \
      --home $XXX_HOME_DIR

$XXX_DISTROBOX_DIR/distrobox \
      enter \
      --name $XXX_CONTAINER_NAME \
      --root

$XXX_DISTROBOX_DIR/distrobox \
      stop \
      --root \
      $XXX_CONTAINER_NAME

######################
# run
######################

$XXX_DISTROBOX_DIR/distrobox \
      enter \
      --name $XXX_CONTAINER_NAME \
      --root

zsh

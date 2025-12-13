# not working

# error:

# f.coreaddons: "Could not find plugin kpmcore/"
# Could not create instance of plugin   ""
# qt.qpa.services: Failed to register with host portal QDBusError("org.freedesktop.portal.Error.Failed", "Could not register app ID: Connection already associated with an application ID")
# Gtk-Message: 21:16:10.496: Failed to load module "pk-gtk-module"



######################
# common
######################

XXX_DISTROBOX_DIR=/run/media/user1/internal1/extracted_apps/distrobox
cd $XXX_DISTROBOX_DIR
XXX_BASE_IMAGE="registry.fedoraproject.org/fedora-toolbox:43"
XXX_CONTAINER_NAME=toolbox_kde_partition_manager
XXX_HOME_DIR=/run/media/user1/internal1/home/toolbox_kde_partition_manager
# password of guest: 1d34f3eAwfrf4ff

######################
# init
######################

# install packagekit-gtk3-module via dnf

$XXX_DISTROBOX_DIR/distrobox \
      create \
      --init-hooks "sudo dnf -y install kde-partitionmanager" \
      --root \
      --image $XXX_BASE_IMAGE \
      --name $XXX_CONTAINER_NAME \
      --yes

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

partitionmanager

# or pkexec partitionmanager

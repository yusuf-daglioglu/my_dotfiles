#!/bin/bash

# not working. because of python paths and module structures...

#############################
## outside container
############################

XXX_DISTROBOX_DIR=/run/media/user1/internal1/extracted_apps/distrobox
cd $XXX_DISTROBOX_DIR
XXX_BASE_IMAGE="registry.fedoraproject.org/fedora-toolbox:43"
XXX_CONTAINER_NAME=toolbox_appimage_builder
XXX_HOME_DIR=/run/media/user1/internal1/home/toolbox_appimage_builder
$XXX_DISTROBOX_DIR/distrobox \
      create \
      --root \
      --image $XXX_BASE_IMAGE \
      --name $XXX_CONTAINER_NAME \
      --yes \
      --home $XXX_HOME_DIR

#############################
## inside container
############################

sudo dnf install -y fuse
sudo dnf install -y convert

DOWNLOAD_DIR="$HOME"
APP_IMAGE_ROOT_DIR="$HOME/app_image_root"
RPM_BLIVET_GUI_RUNTIME="blivet-gui-runtime"
sudo dnf download --destdir=$DOWNLOAD_DIR $RPM_BLIVET_GUI_RUNTIME
mkdir -p "$APP_IMAGE_ROOT_DIR"
RPM_FILE_SUFFIX="-*.rpm"
FULL_RPM_FILE=$(ls $DOWNLOAD_DIR/blivet-gui-runtime-*.rpm)
cd $HOME
rpm2cpio "$FULL_RPM_FILE" | cpio -idmv -D "$APP_IMAGE_ROOT_DIR"
echo -e '#!/bin/bash\necho blivet-gui-appimage started\nexec $APPDIR/usr/bin/blivet-gui' > "$APP_IMAGE_ROOT_DIR/AppRun.sh"

echo -e '[Desktop Entry]\nType=Application\nName=blivet-gui-appimage\nExec=blivet-gui-appimage\nIcon=blivet-gui-appimage\nCategories=Utility;' > "$APP_IMAGE_ROOT_DIR/blivet-gui-appimage.desktop"

convert -size 256x256 xc:white -gravity center -pointsize 24 -fill black -annotate +0+0 "blivet-gui-appimage" $APP_IMAGE_ROOT_DIR/blivet-gui-appimage.png

## replace hard coded paths
cd $APP_IMAGE_ROOT_DIR/usr/lib/python3.14/site-packages/blivetgui/
XXX_FIND="'/usr/"
XXX_REPLACE_WITH="f\"{os.environ.get('APPDIR')}\"'/usr/"
sed -i "s|$XXX_FIND|$XXX_REPLACE_WITH|g" gui_utils.py

chmod +x "$APP_IMAGE_ROOT_DIR/AppRun.sh"
wget https://github.com/AppImage/appimagetool/releases/download/continuous/appimagetool-x86_64.AppImage
chmod +x appimagetool-x86_64.AppImage
ARCH=x86_64 ./appimagetool-x86_64.AppImage $APP_IMAGE_ROOT_DIR "blivet-gui-appimage.AppImage"
sudo chmod 777 "blivet-gui-appimage.AppImage"

######################
# common
######################

XXX_DISTROBOX_DIR=/run/media/user1/internal1/extracted_apps/distrobox
cd $XXX_DISTROBOX_DIR
XXX_BASE_IMAGE="registry.fedoraproject.org/fedora-toolbox:43"
XXX_CONTAINER_NAME=toolbox_github_client
XXX_HOME_DIR=/run/media/user1/internal1/home/toolbox_github_client
# password of guest: 1d34f3eAwfrf4ff

######################
# init
######################

$XXX_DISTROBOX_DIR/distrobox \
      create \
      --init-hooks "sudo dnf -y install gh curl jq" \
      --image $XXX_BASE_IMAGE \
      --name $XXX_CONTAINER_NAME \
      --yes \
      --root \
      --home $XXX_HOME_DIR

$XXX_DISTROBOX_DIR/distrobox \
      enter \
      --root \
      --name $XXX_CONTAINER_NAME

$XXX_DISTROBOX_DIR/distrobox \
      stop \
      --root \
      $XXX_CONTAINER_NAME

######################
# run
######################

$XXX_DISTROBOX_DIR/distrobox \
      enter \
      --root \
      --name $XXX_CONTAINER_NAME


#######################
# delete old deployments
#######################

OWNER="yusuf-daglioglu"
REPO="detailed_cv"
# REPO="js_execute_tool_page"
# REPO="blog"

for ID in $(gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/$OWNER/$REPO/deployments \
  | jq -r '.[].id'); do

  echo "Deleting deployment $ID"

  gh api \
    --method DELETE \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    /repos/$OWNER/$REPO/deployments/$ID

done
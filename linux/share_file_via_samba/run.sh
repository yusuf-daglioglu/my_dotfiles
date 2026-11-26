sudo podman build -t share_file_via_samba_container_1 .

sudo podman run -it \
  --name share_file_via_samba_image_1 \
  -p 445:445 \
  -v /:/home/userContainer/host-os-files:ro \
  -v /home/user1/shared_via_samba_1:/home/userContainer/host-os-files/home/user1/shared_via_samba_1:rw \
  --security-opt label=disable \
  share_file_via_samba_container_1

kumbaya7711a
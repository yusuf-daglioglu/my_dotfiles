# SOLUTION TESTED ONLY ON FEDORA

```sh
sudo gnome-text-editor /etc/NetworkManager/conf.d/00-macrandomize.conf
```

```
[device]
wifi.scan-rand-mac-address=yes

[connection]
wifi.cloned-mac-address=random
ethernet.cloned-mac-address=random
```

```sh
systemctl restart NetworkManager
```

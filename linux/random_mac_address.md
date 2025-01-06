# SOLUTIONS TESTED ONLY ON FEDORA

Solution-2 worked on updated Fedora. The solution-1 works on old versions. But I'm not sure if it is a bug or it depends on a config. Therefore I don't delete the old sulution.

# SOLUTION 1

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

# SOLUTION 2

Create 2 files:

> /etc/NetworkManager/conf.d/99-wifi-mac-addr.conf

```
[connection.99-wifi-mac-addr]
match-device=type:wifi
wifi.cloned-mac-address=random
```

> /etc/NetworkManager/conf.d/99-ethernet-mac-addr.conf

```
[connection.99-ethernet-mac-addr]
match-device=type:ethernet
ethernet.cloned-mac-address=random
```
